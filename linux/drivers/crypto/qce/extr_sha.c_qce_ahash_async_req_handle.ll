; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_async_req_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_async_req_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ahash_request = type { i32*, i32 }
%struct.qce_sha_reqctx = type { i64, i32, i32, i32, i32 }
%struct.qce_sha_ctx = type { i32 }
%struct.qce_alg_template = type { i32, %struct.qce_device* }
%struct.qce_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@QCE_SHA_HMAC_KEY_SIZE = common dso_local global i32 0, align 4
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid numbers of src SG.\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@QCE_RESULT_BUF_SZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@qce_ahash_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*)* @qce_ahash_async_req_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ahash_async_req_handle(%struct.crypto_async_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.qce_sha_reqctx*, align 8
  %6 = alloca %struct.qce_sha_ctx*, align 8
  %7 = alloca %struct.qce_alg_template*, align 8
  %8 = alloca %struct.qce_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  %11 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %12 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %11)
  store %struct.ahash_request* %12, %struct.ahash_request** %4, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %14 = call %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %13)
  store %struct.qce_sha_reqctx* %14, %struct.qce_sha_reqctx** %5, align 8
  %15 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %16 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.qce_sha_ctx* @crypto_tfm_ctx(i32 %17)
  store %struct.qce_sha_ctx* %18, %struct.qce_sha_ctx** %6, align 8
  %19 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %20 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.qce_alg_template* @to_ahash_tmpl(i32 %21)
  store %struct.qce_alg_template* %22, %struct.qce_alg_template** %7, align 8
  %23 = load %struct.qce_alg_template*, %struct.qce_alg_template** %7, align 8
  %24 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %23, i32 0, i32 1
  %25 = load %struct.qce_device*, %struct.qce_device** %24, align 8
  store %struct.qce_device* %25, %struct.qce_device** %8, align 8
  %26 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %27 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @IS_SHA_HMAC(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load %struct.qce_sha_ctx*, %struct.qce_sha_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.qce_sha_ctx, %struct.qce_sha_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %37 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @QCE_SHA_HMAC_KEY_SIZE, align 4
  %39 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %40 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  br label %55

41:                                               ; preds = %1
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @IS_CMAC(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.qce_sha_ctx*, %struct.qce_sha_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.qce_sha_ctx, %struct.qce_sha_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %50 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @AES_KEYSIZE_128, align 4
  %52 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %53 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %45, %41
  br label %55

55:                                               ; preds = %54, %32
  %56 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %57 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %60 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sg_nents_for_len(i32* %58, i32 %61)
  %63 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %64 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %66 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %55
  %70 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %71 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %75 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %2, align 4
  br label %167

77:                                               ; preds = %55
  %78 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %79 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %82 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %85 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DMA_TO_DEVICE, align 4
  %88 = call i32 @dma_map_sg(i32 %80, i32* %83, i32 %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %2, align 4
  br label %167

93:                                               ; preds = %77
  %94 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %95 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %94, i32 0, i32 2
  %96 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %97 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @QCE_RESULT_BUF_SZ, align 4
  %101 = call i32 @sg_init_one(i32* %95, i32 %99, i32 %100)
  %102 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %103 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %106 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %105, i32 0, i32 2
  %107 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %108 = call i32 @dma_map_sg(i32 %104, i32* %106, i32 1, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %93
  br label %154

112:                                              ; preds = %93
  %113 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %114 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %113, i32 0, i32 1
  %115 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %116 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %119 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %122 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %121, i32 0, i32 2
  %123 = load i32, i32* @qce_ahash_done, align 4
  %124 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %125 = call i32 @qce_dma_prep_sgs(%struct.TYPE_4__* %114, i32* %117, i32 %120, i32* %122, i32 1, i32 %123, %struct.crypto_async_request* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %112
  br label %146

129:                                              ; preds = %112
  %130 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %131 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %130, i32 0, i32 1
  %132 = call i32 @qce_dma_issue_pending(%struct.TYPE_4__* %131)
  %133 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %134 = load %struct.qce_alg_template*, %struct.qce_alg_template** %7, align 8
  %135 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @qce_start(%struct.crypto_async_request* %133, i32 %136, i32 0, i32 0)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %142

141:                                              ; preds = %129
  store i32 0, i32* %2, align 4
  br label %167

142:                                              ; preds = %140
  %143 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %144 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %143, i32 0, i32 1
  %145 = call i32 @qce_dma_terminate_all(%struct.TYPE_4__* %144)
  br label %146

146:                                              ; preds = %142, %128
  %147 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %148 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %151 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %150, i32 0, i32 2
  %152 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %153 = call i32 @dma_unmap_sg(i32 %149, i32* %151, i32 1, i32 %152)
  br label %154

154:                                              ; preds = %146, %111
  %155 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %156 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %159 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %162 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @DMA_TO_DEVICE, align 4
  %165 = call i32 @dma_unmap_sg(i32 %157, i32* %160, i32 %163, i32 %164)
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %154, %141, %91, %69
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.qce_sha_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.qce_alg_template* @to_ahash_tmpl(i32) #1

declare dso_local i64 @IS_SHA_HMAC(i64) #1

declare dso_local i64 @IS_CMAC(i64) #1

declare dso_local i32 @sg_nents_for_len(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_map_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @sg_init_one(i32*, i32, i32) #1

declare dso_local i32 @qce_dma_prep_sgs(%struct.TYPE_4__*, i32*, i32, i32*, i32, i32, %struct.crypto_async_request*) #1

declare dso_local i32 @qce_dma_issue_pending(%struct.TYPE_4__*) #1

declare dso_local i32 @qce_start(%struct.crypto_async_request*, i32, i32, i32) #1

declare dso_local i32 @qce_dma_terminate_all(%struct.TYPE_4__*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
