; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_dma_req_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_dma_req_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.skcipher_request = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mv_cesa_op_ctx = type { i32 }
%struct.mv_cesa_skcipher_req = type { i32, i32, %struct.mv_cesa_req }
%struct.mv_cesa_req = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.mv_cesa_skcipher_dma_iter = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@cesa_dev = common dso_local global %struct.TYPE_14__* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@CESA_SA_CFG_SRAM_OFFSET = common dso_local global i32 0, align 4
@CESA_SA_DATA_SRAM_OFFSET = common dso_local global i32 0, align 4
@CESA_TDMA_SRC_IN_SRAM = common dso_local global i32 0, align 4
@CESA_TDMA_END_OF_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, %struct.mv_cesa_op_ctx*)* @mv_cesa_skcipher_dma_req_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_skcipher_dma_req_init(%struct.skcipher_request* %0, %struct.mv_cesa_op_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca %struct.mv_cesa_op_ctx*, align 8
  %6 = alloca %struct.mv_cesa_skcipher_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mv_cesa_req*, align 8
  %9 = alloca %struct.mv_cesa_skcipher_dma_iter, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mv_cesa_op_ctx*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store %struct.mv_cesa_op_ctx* %1, %struct.mv_cesa_op_ctx** %5, align 8
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %14 = call %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request* %13)
  store %struct.mv_cesa_skcipher_req* %14, %struct.mv_cesa_skcipher_req** %6, align 8
  %15 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %16 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 4
  %28 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %29 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %28, i32 0, i32 2
  store %struct.mv_cesa_req* %29, %struct.mv_cesa_req** %8, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %31 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %34 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %35, align 8
  %36 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %37 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %40 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %26
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cesa_dev, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %48 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %51 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  %54 = call i32 @dma_map_sg(i32 %46, i64 %49, i32 %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %43
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %220

60:                                               ; preds = %43
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cesa_dev, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %65 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %68 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %71 = call i32 @dma_map_sg(i32 %63, i64 %66, i32 %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %60
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  br label %195

77:                                               ; preds = %60
  br label %96

78:                                               ; preds = %26
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cesa_dev, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %83 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %86 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %89 = call i32 @dma_map_sg(i32 %81, i64 %84, i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %78
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %220

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95, %77
  %97 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %98 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %97, i32 0, i32 0
  %99 = call i32 @mv_cesa_tdma_desc_iter_init(%struct.TYPE_12__* %98)
  %100 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %101 = call i32 @mv_cesa_skcipher_req_iter_init(%struct.mv_cesa_skcipher_dma_iter* %9, %struct.skcipher_request* %100)
  br label %102

102:                                              ; preds = %149, %96
  %103 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %104 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %103, i32 0, i32 0
  %105 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_op(%struct.TYPE_12__* %104, %struct.mv_cesa_op_ctx* %105, i32 %106, i32 %107)
  store %struct.mv_cesa_op_ctx* %108, %struct.mv_cesa_op_ctx** %12, align 8
  %109 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %12, align 8
  %110 = call i64 @IS_ERR(%struct.mv_cesa_op_ctx* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %12, align 8
  %114 = call i32 @PTR_ERR(%struct.mv_cesa_op_ctx* %113)
  store i32 %114, i32* %11, align 4
  br label %172

115:                                              ; preds = %102
  store i32 1, i32* %10, align 4
  %116 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %12, align 8
  %117 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, %struct.mv_cesa_skcipher_dma_iter* %9, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @mv_cesa_set_crypt_op_len(%struct.mv_cesa_op_ctx* %116, i32 %119)
  %121 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %122 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, %struct.mv_cesa_skcipher_dma_iter* %9, i32 0, i32 1
  %124 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, %struct.mv_cesa_skcipher_dma_iter* %9, i32 0, i32 2
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @mv_cesa_dma_add_op_transfers(%struct.TYPE_12__* %122, %struct.TYPE_13__* %123, i32* %124, i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  br label %172

130:                                              ; preds = %115
  %131 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %132 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %131, i32 0, i32 0
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @mv_cesa_dma_add_dummy_launch(%struct.TYPE_12__* %132, i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %172

138:                                              ; preds = %130
  %139 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %140 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, %struct.mv_cesa_skcipher_dma_iter* %9, i32 0, i32 1
  %142 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, %struct.mv_cesa_skcipher_dma_iter* %9, i32 0, i32 0
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @mv_cesa_dma_add_op_transfers(%struct.TYPE_12__* %140, %struct.TYPE_13__* %141, i32* %142, i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %172

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148
  %150 = call i64 @mv_cesa_skcipher_req_iter_next_op(%struct.mv_cesa_skcipher_dma_iter* %9)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %102, label %152

152:                                              ; preds = %149
  %153 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %154 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %153, i32 0, i32 0
  %155 = load i32, i32* @CESA_SA_CFG_SRAM_OFFSET, align 4
  %156 = load i32, i32* @CESA_SA_DATA_SRAM_OFFSET, align 4
  %157 = load i32, i32* @CESA_TDMA_SRC_IN_SRAM, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @mv_cesa_dma_add_result_op(%struct.TYPE_12__* %154, i32 %155, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %172

163:                                              ; preds = %152
  %164 = load i32, i32* @CESA_TDMA_END_OF_REQ, align 4
  %165 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %166 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %164
  store i32 %171, i32* %169, align 4
  store i32 0, i32* %3, align 4
  br label %220

172:                                              ; preds = %162, %147, %137, %129, %112
  %173 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %8, align 8
  %174 = call i32 @mv_cesa_dma_cleanup(%struct.mv_cesa_req* %173)
  %175 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %176 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %179 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %177, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %172
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cesa_dev, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %187 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %190 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %193 = call i32 @dma_unmap_sg(i32 %185, i64 %188, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %182, %172
  br label %195

195:                                              ; preds = %194, %74
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cesa_dev, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %200 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %6, align 8
  %203 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %206 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %209 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %207, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %195
  %213 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %216

214:                                              ; preds = %195
  %215 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i32 [ %213, %212 ], [ %215, %214 ]
  %218 = call i32 @dma_unmap_sg(i32 %198, i64 %201, i32 %204, i32 %217)
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %216, %163, %92, %57
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @dma_map_sg(i32, i64, i32, i32) #1

declare dso_local i32 @mv_cesa_tdma_desc_iter_init(%struct.TYPE_12__*) #1

declare dso_local i32 @mv_cesa_skcipher_req_iter_init(%struct.mv_cesa_skcipher_dma_iter*, %struct.skcipher_request*) #1

declare dso_local %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_op(%struct.TYPE_12__*, %struct.mv_cesa_op_ctx*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mv_cesa_op_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.mv_cesa_op_ctx*) #1

declare dso_local i32 @mv_cesa_set_crypt_op_len(%struct.mv_cesa_op_ctx*, i32) #1

declare dso_local i32 @mv_cesa_dma_add_op_transfers(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @mv_cesa_dma_add_dummy_launch(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @mv_cesa_skcipher_req_iter_next_op(%struct.mv_cesa_skcipher_dma_iter*) #1

declare dso_local i32 @mv_cesa_dma_add_result_op(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @mv_cesa_dma_cleanup(%struct.mv_cesa_req*) #1

declare dso_local i32 @dma_unmap_sg(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
