; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.talitos_ahash_req_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.crypto_ahash = type { i32 }
%struct.talitos_ctx = type { %struct.device* }
%struct.device = type { i32 }
%struct.talitos_export_state = type { i32, i32, i32, i32, i32, i32, i32 }

@SHA256_DIGEST_SIZE = common dso_local global i64 0, align 8
@TALITOS_MDEU_CONTEXT_SIZE_MD5_SHA1_SHA256 = common dso_local global i32 0, align 4
@TALITOS_MDEU_CONTEXT_SIZE_SHA384_SHA512 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @ahash_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_import(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.talitos_ahash_req_ctx*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca %struct.talitos_ctx*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.talitos_export_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.talitos_ahash_req_ctx* %13, %struct.talitos_ahash_req_ctx** %5, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %15 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %14)
  store %struct.crypto_ahash* %15, %struct.crypto_ahash** %6, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %17 = call %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %16)
  store %struct.talitos_ctx* %17, %struct.talitos_ctx** %7, align 8
  %18 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %8, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.talitos_export_state*
  store %struct.talitos_export_state* %22, %struct.talitos_export_state** %9, align 8
  %23 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %24 = call i32 @memset(%struct.talitos_ahash_req_ctx* %23, i32 0, i32 40)
  %25 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %26 = call i64 @crypto_ahash_digestsize(%struct.crypto_ahash* %25)
  %27 = load i64, i64* @SHA256_DIGEST_SIZE, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @TALITOS_MDEU_CONTEXT_SIZE_MD5_SHA1_SHA256, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @TALITOS_MDEU_CONTEXT_SIZE_SHA384_SHA512, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.talitos_export_state*, %struct.talitos_export_state** %9, align 8
  %42 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @memcpy(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.talitos_export_state*, %struct.talitos_export_state** %9, align 8
  %52 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.talitos_export_state*, %struct.talitos_export_state** %9, align 8
  %55 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32 %50, i32 %53, i32 %56)
  %58 = load %struct.talitos_export_state*, %struct.talitos_export_state** %9, align 8
  %59 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.talitos_export_state*, %struct.talitos_export_state** %9, align 8
  %64 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.talitos_export_state*, %struct.talitos_export_state** %9, align 8
  %69 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.talitos_export_state*, %struct.talitos_export_state** %9, align 8
  %74 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.talitos_export_state*, %struct.talitos_export_state** %9, align 8
  %79 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.device*, %struct.device** %8, align 8
  %84 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @DMA_TO_DEVICE, align 4
  %91 = call i32 @dma_map_single(%struct.device* %83, i32 %86, i32 %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load %struct.device*, %struct.device** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %95 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @DMA_TO_DEVICE, align 4
  %98 = call i32 @dma_unmap_single(%struct.device* %92, i32 %93, i32 %96, i32 %97)
  ret i32 0
}

declare dso_local %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @memset(%struct.talitos_ahash_req_ctx*, i32, i32) #1

declare dso_local i64 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
