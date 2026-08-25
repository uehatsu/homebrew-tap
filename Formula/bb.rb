# typed: false
# frozen_string_literal: true

# This file was generated for bb v0.1.0. Future releases are updated by GoReleaser.
class Bb < Formula
  desc "Bitbucket Cloud CLI with GitHub CLI ergonomics"
  homepage "https://github.com/uehatsu/bb"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/uehatsu/bb/releases/download/v0.1.0/bb_0.1.0_darwin_amd64.tar.gz"
      sha256 "53876b5a9ad3e180402c1cc7ac3d0e7ab450172fe7ab15f8c1ac608b3b5c3004"
    end
    if Hardware::CPU.arm?
      url "https://github.com/uehatsu/bb/releases/download/v0.1.0/bb_0.1.0_darwin_arm64.tar.gz"
      sha256 "51a6087bd746ef83a1ba0b81014b0cd3e52b38d37631e239f728bf1efaf7f05c"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/uehatsu/bb/releases/download/v0.1.0/bb_0.1.0_linux_amd64.tar.gz"
      sha256 "fb677d21aa2d303e1e9a0629ccc1dca24d46e6e4a674bb9cbf7a77a226a0fb86"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/uehatsu/bb/releases/download/v0.1.0/bb_0.1.0_linux_arm64.tar.gz"
      sha256 "a7985250637252c1d9d7ee4fd05d3af08abd0586cfda19e729d12201b5c11d8e"
    end
  end

  def install
    bin.install "bb"
    generate_completions_from_executable(bin/"bb", "completion")
  end

  test do
    system "#{bin}/bb", "version"
  end
end
