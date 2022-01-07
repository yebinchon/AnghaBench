; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-ccm.c_ccm4309_aes_nx_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-ccm.c_ccm4309_aes_nx_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nx_crypto_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nx_gcm_rctx = type { i32* }
%struct.blkcipher_desc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @ccm4309_aes_nx_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm4309_aes_nx_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.nx_crypto_ctx*, align 8
  %4 = alloca %struct.nx_gcm_rctx*, align 8
  %5 = alloca %struct.blkcipher_desc, align 8
  %6 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %7 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %8 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32 %10)
  store %struct.nx_crypto_ctx* %11, %struct.nx_crypto_ctx** %3, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %13 = call %struct.nx_gcm_rctx* @aead_request_ctx(%struct.aead_request* %12)
  store %struct.nx_gcm_rctx* %13, %struct.nx_gcm_rctx** %4, align 8
  %14 = load %struct.nx_gcm_rctx*, %struct.nx_gcm_rctx** %4, align 8
  %15 = getelementptr inbounds %struct.nx_gcm_rctx, %struct.nx_gcm_rctx* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 3, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(i32* %20, i32 %25, i32 3)
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %30 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memcpy(i32* %28, i32 %31, i32 8)
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %5, i32 0, i32 0
  store i32* %33, i32** %34, align 8
  %35 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %36 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %37 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 8
  %40 = call i32 @ccm_nx_encrypt(%struct.aead_request* %35, %struct.blkcipher_desc* %5, i64 %39)
  ret i32 %40
}

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.nx_gcm_rctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ccm_nx_encrypt(%struct.aead_request*, %struct.blkcipher_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
