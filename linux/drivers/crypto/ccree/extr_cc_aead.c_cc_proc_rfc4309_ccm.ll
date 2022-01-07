; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_rfc4309_ccm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_rfc4309_ccm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32* }
%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32* }
%struct.aead_req_ctx = type { i32*, i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@CCM_BLOCK_NONCE_OFFSET = common dso_local global i32 0, align 4
@CCM_BLOCK_NONCE_SIZE = common dso_local global i64 0, align 8
@CCM_BLOCK_IV_OFFSET = common dso_local global i32 0, align 4
@CCM_BLOCK_IV_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*)* @cc_proc_rfc4309_ccm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_proc_rfc4309_ccm(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.cc_aead_ctx*, align 8
  %5 = alloca %struct.aead_req_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %6 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %7 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %6)
  store %struct.crypto_aead* %7, %struct.crypto_aead** %3, align 8
  %8 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %9 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %8)
  store %struct.cc_aead_ctx* %9, %struct.cc_aead_ctx** %4, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %11 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %10)
  store %struct.aead_req_ctx* %11, %struct.aead_req_ctx** %5, align 8
  %12 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %16 = call i32 @memset(i32* %14, i32 0, i32 %15)
  %17 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 3, i32* %20, align 4
  %21 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @CCM_BLOCK_NONCE_OFFSET, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @CCM_BLOCK_NONCE_SIZE, align 8
  %31 = call i32 @memcpy(i32* %26, i32* %29, i64 %30)
  %32 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @CCM_BLOCK_IV_OFFSET, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %39 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @CCM_BLOCK_IV_SIZE, align 8
  %42 = call i32 @memcpy(i32* %37, i32* %40, i64 %41)
  %43 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %47 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load i64, i64* @CCM_BLOCK_IV_SIZE, align 8
  %49 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
