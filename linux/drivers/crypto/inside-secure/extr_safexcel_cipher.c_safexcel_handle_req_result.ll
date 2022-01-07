; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_handle_req_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_handle_req_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_async_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.safexcel_cipher_req = type { i64, i32, i32, i32 }
%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.safexcel_cipher_ctx = type { i64, i32 }
%struct.safexcel_result_desc = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"cipher: result: could not retrieve the result descriptor\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_CRYPTO_MODE_CBC = common dso_local global i64 0, align 8
@SAFEXCEL_ENCRYPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, %struct.scatterlist*, %struct.scatterlist*, i32, %struct.safexcel_cipher_req*, i32*, i32*)* @safexcel_handle_req_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_handle_req_result(%struct.safexcel_crypto_priv* %0, i32 %1, %struct.crypto_async_request* %2, %struct.scatterlist* %3, %struct.scatterlist* %4, i32 %5, %struct.safexcel_cipher_req* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.safexcel_crypto_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.crypto_async_request*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.safexcel_cipher_req*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.skcipher_request*, align 8
  %21 = alloca %struct.crypto_skcipher*, align 8
  %22 = alloca %struct.safexcel_cipher_ctx*, align 8
  %23 = alloca %struct.safexcel_result_desc*, align 8
  %24 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.crypto_async_request* %2, %struct.crypto_async_request** %13, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %14, align 8
  store %struct.scatterlist* %4, %struct.scatterlist** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.safexcel_cipher_req* %6, %struct.safexcel_cipher_req** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load %struct.crypto_async_request*, %struct.crypto_async_request** %13, align 8
  %26 = call %struct.skcipher_request* @skcipher_request_cast(%struct.crypto_async_request* %25)
  store %struct.skcipher_request* %26, %struct.skcipher_request** %20, align 8
  %27 = load %struct.skcipher_request*, %struct.skcipher_request** %20, align 8
  %28 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %27)
  store %struct.crypto_skcipher* %28, %struct.crypto_skcipher** %21, align 8
  %29 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %21, align 8
  %30 = call %struct.safexcel_cipher_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %29)
  store %struct.safexcel_cipher_ctx* %30, %struct.safexcel_cipher_ctx** %22, align 8
  store i32 0, i32* %24, align 4
  %31 = load i32*, i32** %19, align 8
  store i32 0, i32* %31, align 4
  %32 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %17, align 8
  %33 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %157

41:                                               ; preds = %9
  br label %42

42:                                               ; preds = %82, %41
  %43 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %17, align 8
  %44 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 8
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %85

48:                                               ; preds = %42
  %49 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %50 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %51 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call %struct.safexcel_result_desc* @safexcel_ring_next_rptr(%struct.safexcel_crypto_priv* %49, i32* %56)
  store %struct.safexcel_result_desc* %57, %struct.safexcel_result_desc** %23, align 8
  %58 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %23, align 8
  %59 = call i64 @IS_ERR(%struct.safexcel_result_desc* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %48
  %62 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %63 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %23, align 8
  %67 = call i32 @PTR_ERR(%struct.safexcel_result_desc* %66)
  %68 = load i32*, i32** %19, align 8
  store i32 %67, i32* %68, align 4
  br label %85

69:                                               ; preds = %48
  %70 = load i32*, i32** %19, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @likely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %79 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %23, align 8
  %80 = call i32 @safexcel_rdesc_check_errors(%struct.safexcel_crypto_priv* %78, %struct.safexcel_result_desc* %79)
  %81 = load i32*, i32** %19, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %69
  %83 = load i32, i32* %24, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %24, align 4
  br label %42

85:                                               ; preds = %61, %42
  %86 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @safexcel_complete(%struct.safexcel_crypto_priv* %86, i32 %87)
  %89 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %90 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %91 = icmp eq %struct.scatterlist* %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %94 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %97 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %17, align 8
  %98 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %101 = call i32 @dma_unmap_sg(i32 %95, %struct.scatterlist* %96, i32 %99, i32 %100)
  br label %121

102:                                              ; preds = %85
  %103 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %104 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %107 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %17, align 8
  %108 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DMA_TO_DEVICE, align 4
  %111 = call i32 @dma_unmap_sg(i32 %105, %struct.scatterlist* %106, i32 %109, i32 %110)
  %112 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %113 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %116 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %17, align 8
  %117 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %120 = call i32 @dma_unmap_sg(i32 %114, %struct.scatterlist* %115, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %102, %92
  %122 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %22, align 8
  %123 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %154, label %126

126:                                              ; preds = %121
  %127 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %22, align 8
  %128 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @CONTEXT_CONTROL_CRYPTO_MODE_CBC, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %126
  %133 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %17, align 8
  %134 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SAFEXCEL_ENCRYPT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %132
  %139 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %140 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %17, align 8
  %141 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.skcipher_request*, %struct.skcipher_request** %20, align 8
  %144 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %21, align 8
  %147 = call i64 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %146)
  %148 = load i32, i32* %16, align 4
  %149 = zext i32 %148 to i64
  %150 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %21, align 8
  %151 = call i64 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %150)
  %152 = sub nsw i64 %149, %151
  %153 = call i32 @sg_pcopy_to_buffer(%struct.scatterlist* %139, i32 %142, i32 %145, i64 %147, i64 %152)
  br label %154

154:                                              ; preds = %138, %132, %126, %121
  %155 = load i32*, i32** %18, align 8
  store i32 1, i32* %155, align 4
  %156 = load i32, i32* %24, align 4
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %154, %40
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

declare dso_local %struct.skcipher_request* @skcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.safexcel_cipher_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.safexcel_result_desc* @safexcel_ring_next_rptr(%struct.safexcel_crypto_priv*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.safexcel_result_desc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.safexcel_result_desc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @safexcel_rdesc_check_errors(%struct.safexcel_crypto_priv*, %struct.safexcel_result_desc*) #1

declare dso_local i32 @safexcel_complete(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_pcopy_to_buffer(%struct.scatterlist*, i32, i32, i64, i64) #1

declare dso_local i64 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
