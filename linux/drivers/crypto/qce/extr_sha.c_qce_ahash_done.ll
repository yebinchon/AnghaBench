; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ahash_request = type { i32, i32*, i64 }
%struct.crypto_ahash = type { i32 }
%struct.qce_sha_reqctx = type { i32, i32, i32, i32, i32*, i8**, i64, i32 }
%struct.qce_alg_template = type { %struct.qce_device* }
%struct.qce_device = type { i32 (%struct.qce_device*, i32)*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.qce_result_dump* }
%struct.qce_result_dump = type { i32*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"ahash dma termination error (%d)\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ahash operation error (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qce_ahash_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qce_ahash_done(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.qce_sha_reqctx*, align 8
  %7 = alloca %struct.qce_alg_template*, align 8
  %8 = alloca %struct.qce_device*, align 8
  %9 = alloca %struct.qce_result_dump*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.crypto_async_request*
  store %struct.crypto_async_request* %14, %struct.crypto_async_request** %3, align 8
  %15 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %16 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %15)
  store %struct.ahash_request* %16, %struct.ahash_request** %4, align 8
  %17 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %18 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %17)
  store %struct.crypto_ahash* %18, %struct.crypto_ahash** %5, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %20 = call %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %19)
  store %struct.qce_sha_reqctx* %20, %struct.qce_sha_reqctx** %6, align 8
  %21 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %22 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.qce_alg_template* @to_ahash_tmpl(i32 %23)
  store %struct.qce_alg_template* %24, %struct.qce_alg_template** %7, align 8
  %25 = load %struct.qce_alg_template*, %struct.qce_alg_template** %7, align 8
  %26 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %25, i32 0, i32 0
  %27 = load %struct.qce_device*, %struct.qce_device** %26, align 8
  store %struct.qce_device* %27, %struct.qce_device** %8, align 8
  %28 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %29 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.qce_result_dump*, %struct.qce_result_dump** %30, align 8
  store %struct.qce_result_dump* %31, %struct.qce_result_dump** %9, align 8
  %32 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %33 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %35 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %34, i32 0, i32 2
  %36 = call i32 @qce_dma_terminate_all(%struct.TYPE_2__* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %1
  %40 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %41 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %1
  %46 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %47 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %50 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %6, align 8
  %53 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DMA_TO_DEVICE, align 4
  %56 = call i32 @dma_unmap_sg(i32 %48, i32* %51, i32 %54, i32 %55)
  %57 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %58 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %6, align 8
  %61 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %60, i32 0, i32 7
  %62 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %63 = call i32 @dma_unmap_sg(i32 %59, i32* %61, i32 1, i32 %62)
  %64 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %6, align 8
  %65 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.qce_result_dump*, %struct.qce_result_dump** %9, align 8
  %68 = getelementptr inbounds %struct.qce_result_dump, %struct.qce_result_dump* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @memcpy(i64 %66, i32 %69, i32 %70)
  %72 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %73 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %45
  %77 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %78 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.qce_result_dump*, %struct.qce_result_dump** %9, align 8
  %81 = getelementptr inbounds %struct.qce_result_dump, %struct.qce_result_dump* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @memcpy(i64 %79, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %45
  %86 = load %struct.qce_result_dump*, %struct.qce_result_dump** %9, align 8
  %87 = getelementptr inbounds %struct.qce_result_dump, %struct.qce_result_dump* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @cpu_to_be32(i32 %90)
  %92 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %6, align 8
  %93 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %92, i32 0, i32 5
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  store i8* %91, i8** %95, align 8
  %96 = load %struct.qce_result_dump*, %struct.qce_result_dump** %9, align 8
  %97 = getelementptr inbounds %struct.qce_result_dump, %struct.qce_result_dump* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @cpu_to_be32(i32 %100)
  %102 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %6, align 8
  %103 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %102, i32 0, i32 5
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  store i8* %101, i8** %105, align 8
  %106 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %107 = call i32 @qce_check_status(%struct.qce_device* %106, i32* %12)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %85
  %111 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %112 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @dev_dbg(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %110, %85
  %117 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %6, align 8
  %118 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %121 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %120, i32 0, i32 1
  store i32* %119, i32** %121, align 8
  %122 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %6, align 8
  %123 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %126 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %6, align 8
  %128 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  %129 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %6, align 8
  %130 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %129, i32 0, i32 2
  store i32 0, i32* %130, align 8
  %131 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %132 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %131, i32 0, i32 0
  %133 = load i32 (%struct.qce_device*, i32)*, i32 (%struct.qce_device*, i32)** %132, align 8
  %134 = load %struct.qce_alg_template*, %struct.qce_alg_template** %7, align 8
  %135 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %134, i32 0, i32 0
  %136 = load %struct.qce_device*, %struct.qce_device** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 %133(%struct.qce_device* %136, i32 %137)
  ret void
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.qce_alg_template* @to_ahash_tmpl(i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @qce_dma_terminate_all(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @qce_check_status(%struct.qce_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
