; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.talitos_ctx = type { %struct.device* }
%struct.device = type { i32 }
%struct.talitos_ahash_req_ctx = type { i32, i32, i32, i64, i64, i64 }

@SHA256_DIGEST_SIZE = common dso_local global i64 0, align 8
@TALITOS_MDEU_CONTEXT_SIZE_MD5_SHA1_SHA256 = common dso_local global i32 0, align 4
@TALITOS_MDEU_CONTEXT_SIZE_SHA384_SHA512 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.crypto_ahash*, align 8
  %4 = alloca %struct.talitos_ctx*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.talitos_ahash_req_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %10 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %9)
  store %struct.crypto_ahash* %10, %struct.crypto_ahash** %3, align 8
  %11 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %12 = call %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %11)
  store %struct.talitos_ctx* %12, %struct.talitos_ctx** %4, align 8
  %13 = load %struct.talitos_ctx*, %struct.talitos_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %17 = call %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %16)
  store %struct.talitos_ahash_req_ctx* %17, %struct.talitos_ahash_req_ctx** %6, align 8
  %18 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %27 = call i64 @crypto_ahash_digestsize(%struct.crypto_ahash* %26)
  %28 = load i64, i64* @SHA256_DIGEST_SIZE, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @TALITOS_MDEU_CONTEXT_SIZE_MD5_SHA1_SHA256, align 4
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @TALITOS_MDEU_CONTEXT_SIZE_SHA384_SHA512, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DMA_TO_DEVICE, align 4
  %47 = call i32 @dma_map_single(%struct.device* %39, i32 %42, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  %54 = call i32 @dma_unmap_single(%struct.device* %48, i32 %49, i32 %52, i32 %53)
  ret i32 0
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
