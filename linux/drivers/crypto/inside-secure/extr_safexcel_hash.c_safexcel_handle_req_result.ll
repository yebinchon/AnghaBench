; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_handle_req_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_handle_req_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.crypto_async_request = type { i32 }
%struct.safexcel_result_desc = type { i32 }
%struct.ahash_request = type { i32, i64, i32 }
%struct.crypto_ahash = type { i32 }
%struct.safexcel_ahash_req = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.safexcel_ahash_ctx = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"hash: result: could not retrieve the result descriptor\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_DIGEST_HMAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, i32*, i32*)* @safexcel_handle_req_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_handle_req_result(%struct.safexcel_crypto_priv* %0, i32 %1, %struct.crypto_async_request* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.safexcel_crypto_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_async_request*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.safexcel_result_desc*, align 8
  %13 = alloca %struct.ahash_request*, align 8
  %14 = alloca %struct.crypto_ahash*, align 8
  %15 = alloca %struct.safexcel_ahash_req*, align 8
  %16 = alloca %struct.safexcel_ahash_ctx*, align 8
  %17 = alloca i64, align 8
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.crypto_async_request* %2, %struct.crypto_async_request** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  %19 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %18)
  store %struct.ahash_request* %19, %struct.ahash_request** %13, align 8
  %20 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %21 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %20)
  store %struct.crypto_ahash* %21, %struct.crypto_ahash** %14, align 8
  %22 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %23 = call %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request* %22)
  store %struct.safexcel_ahash_req* %23, %struct.safexcel_ahash_req** %15, align 8
  %24 = load %struct.crypto_ahash*, %struct.crypto_ahash** %14, align 8
  %25 = call %struct.safexcel_ahash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %24)
  store %struct.safexcel_ahash_ctx* %25, %struct.safexcel_ahash_ctx** %16, align 8
  %26 = load i32*, i32** %11, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %28 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %29 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call %struct.safexcel_result_desc* @safexcel_ring_next_rptr(%struct.safexcel_crypto_priv* %27, i32* %34)
  store %struct.safexcel_result_desc* %35, %struct.safexcel_result_desc** %12, align 8
  %36 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %12, align 8
  %37 = call i64 @IS_ERR(%struct.safexcel_result_desc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %5
  %40 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %41 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %12, align 8
  %45 = call i32 @PTR_ERR(%struct.safexcel_result_desc* %44)
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  br label %52

47:                                               ; preds = %5
  %48 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %49 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %12, align 8
  %50 = call i32 @safexcel_rdesc_check_errors(%struct.safexcel_crypto_priv* %48, %struct.safexcel_result_desc* %49)
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %39
  %53 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @safexcel_complete(%struct.safexcel_crypto_priv* %53, i32 %54)
  %56 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %57 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %56, i32 0, i32 13
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %52
  %61 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %62 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %65 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %68 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %67, i32 0, i32 13
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @DMA_TO_DEVICE, align 4
  %71 = call i32 @dma_unmap_sg(i32 %63, i32 %66, i64 %69, i32 %70)
  %72 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %73 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %72, i32 0, i32 13
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %60, %52
  %75 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %76 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %75, i32 0, i32 12
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %81 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %84 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %83, i32 0, i32 12
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %87 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %90 = call i32 @dma_unmap_single(i32 %82, i64 %85, i64 %88, i32 %89)
  %91 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %92 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %91, i32 0, i32 12
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %79, %74
  %94 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %95 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %94, i32 0, i32 11
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %93
  %99 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %100 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %103 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %102, i32 0, i32 11
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %106 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %105, i32 0, i32 10
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @DMA_TO_DEVICE, align 4
  %109 = call i32 @dma_unmap_single(i32 %101, i64 %104, i64 %107, i32 %108)
  %110 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %111 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %110, i32 0, i32 11
  store i64 0, i64* %111, align 8
  %112 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %113 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %112, i32 0, i32 10
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %98, %93
  %115 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %116 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %115, i32 0, i32 9
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %183

119:                                              ; preds = %114
  %120 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %121 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %173

124:                                              ; preds = %119
  %125 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %126 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CONTEXT_CONTROL_DIGEST_HMAC, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %173

130:                                              ; preds = %124
  %131 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %132 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %135 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.crypto_ahash*, %struct.crypto_ahash** %14, align 8
  %138 = call i64 @crypto_ahash_digestsize(%struct.crypto_ahash* %137)
  %139 = call i32 @memcpy(i32 %133, i32 %136, i64 %138)
  %140 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %141 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %16, align 8
  %144 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %147 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %146, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @memcpy(i32 %142, i32 %145, i64 %148)
  %150 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %151 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.crypto_ahash*, %struct.crypto_ahash** %14, align 8
  %154 = call i64 @crypto_ahash_digestsize(%struct.crypto_ahash* %153)
  %155 = add nsw i64 %152, %154
  %156 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %157 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %156, i32 0, i32 7
  store i64 %155, i64* %157, align 8
  %158 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %159 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %162 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %161, i32 0, i32 6
  store i64 %160, i64* %162, align 8
  %163 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %164 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %163, i32 0, i32 4
  store i64 0, i64* %164, align 8
  %165 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %16, align 8
  %166 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i32 1, i32* %167, align 4
  %168 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %169 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %168, i32 0, i32 1
  store i64 0, i64* %169, align 8
  %170 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %171 = call i32 @safexcel_ahash_enqueue(%struct.ahash_request* %170)
  %172 = load i32*, i32** %10, align 8
  store i32 0, i32* %172, align 4
  store i32 1, i32* %6, align 4
  br label %199

173:                                              ; preds = %124, %119
  %174 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %175 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %178 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.crypto_ahash*, %struct.crypto_ahash** %14, align 8
  %181 = call i64 @crypto_ahash_digestsize(%struct.crypto_ahash* %180)
  %182 = call i32 @memcpy(i32 %176, i32 %179, i64 %181)
  br label %183

183:                                              ; preds = %173, %114
  %184 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %185 = call i64 @safexcel_queued_len(%struct.safexcel_ahash_req* %184)
  store i64 %185, i64* %17, align 8
  %186 = load i64, i64* %17, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %190 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %15, align 8
  %193 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i64, i64* %17, align 8
  %196 = call i32 @memcpy(i32 %191, i32 %194, i64 %195)
  br label %197

197:                                              ; preds = %188, %183
  %198 = load i32*, i32** %10, align 8
  store i32 1, i32* %198, align 4
  store i32 1, i32* %6, align 4
  br label %199

199:                                              ; preds = %197, %130
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.safexcel_ahash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.safexcel_result_desc* @safexcel_ring_next_rptr(%struct.safexcel_crypto_priv*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.safexcel_result_desc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.safexcel_result_desc*) #1

declare dso_local i32 @safexcel_rdesc_check_errors(%struct.safexcel_crypto_priv*, %struct.safexcel_result_desc*) #1

declare dso_local i32 @safexcel_complete(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i64 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @safexcel_ahash_enqueue(%struct.ahash_request*) #1

declare dso_local i64 @safexcel_queued_len(%struct.safexcel_ahash_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
