; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_ablkcipher.c_qce_ablkcipher_async_req_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_ablkcipher.c_qce_ablkcipher_async_req_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ablkcipher_request = type { i64, i64, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qce_cipher_reqctx = type { i32, i32, i64, i64, %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.crypto_ablkcipher = type { i32 }
%struct.qce_alg_template = type { i32, %struct.qce_device* }
%struct.qce_device = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid numbers of src SG.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid numbers of dst SG.\0A\00", align 1
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@QCE_RESULT_BUF_SZ = common dso_local global i32 0, align 4
@qce_ablkcipher_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*)* @qce_ablkcipher_async_req_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ablkcipher_async_req_handle(%struct.crypto_async_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca %struct.qce_cipher_reqctx*, align 8
  %6 = alloca %struct.crypto_ablkcipher*, align 8
  %7 = alloca %struct.qce_alg_template*, align 8
  %8 = alloca %struct.qce_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  %15 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %16 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request* %15)
  store %struct.ablkcipher_request* %16, %struct.ablkcipher_request** %4, align 8
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %18 = call %struct.qce_cipher_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %17)
  store %struct.qce_cipher_reqctx* %18, %struct.qce_cipher_reqctx** %5, align 8
  %19 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %20 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %19)
  store %struct.crypto_ablkcipher* %20, %struct.crypto_ablkcipher** %6, align 8
  %21 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %22 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.qce_alg_template* @to_cipher_tmpl(i32 %23)
  store %struct.qce_alg_template* %24, %struct.qce_alg_template** %7, align 8
  %25 = load %struct.qce_alg_template*, %struct.qce_alg_template** %7, align 8
  %26 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %25, i32 0, i32 1
  %27 = load %struct.qce_device*, %struct.qce_device** %26, align 8
  store %struct.qce_device* %27, %struct.qce_device** %8, align 8
  %28 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %29 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %32 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %6, align 8
  %34 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %33)
  %35 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %36 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %38 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %41 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %43 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %46 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %1
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %57

55:                                               ; preds = %1
  %56 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %10, align 4
  %67 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %68 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %71 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @sg_nents_for_len(i64 %69, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %76 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %65
  %80 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %81 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %84 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @sg_nents_for_len(i64 %82, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %89 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %96

90:                                               ; preds = %65
  %91 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %92 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %95 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %79
  %97 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %98 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %103 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %107 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %2, align 4
  br label %313

109:                                              ; preds = %96
  %110 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %111 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %116 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %119 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %120 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %313

123:                                              ; preds = %109
  %124 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %125 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %129 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %123
  %136 = load i32, i32* @GFP_KERNEL, align 4
  br label %139

137:                                              ; preds = %123
  %138 = load i32, i32* @GFP_ATOMIC, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  store i32 %140, i32* %13, align 4
  %141 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %142 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %141, i32 0, i32 4
  %143 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %144 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @sg_alloc_table(%struct.TYPE_9__* %142, i32 %145, i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %139
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %2, align 4
  br label %313

152:                                              ; preds = %139
  %153 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %154 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %153, i32 0, i32 5
  %155 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %156 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @QCE_RESULT_BUF_SZ, align 4
  %160 = call i32 @sg_init_one(i32* %154, i32 %158, i32 %159)
  %161 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %162 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %161, i32 0, i32 4
  %163 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %164 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to i32*
  %167 = call %struct.scatterlist* @qce_sgtable_add(%struct.TYPE_9__* %162, i32* %166)
  store %struct.scatterlist* %167, %struct.scatterlist** %11, align 8
  %168 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %169 = call i64 @IS_ERR(%struct.scatterlist* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %152
  %172 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %173 = call i32 @PTR_ERR(%struct.scatterlist* %172)
  store i32 %173, i32* %14, align 4
  br label %308

174:                                              ; preds = %152
  %175 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %176 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %175, i32 0, i32 4
  %177 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %178 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %177, i32 0, i32 5
  %179 = call %struct.scatterlist* @qce_sgtable_add(%struct.TYPE_9__* %176, i32* %178)
  store %struct.scatterlist* %179, %struct.scatterlist** %11, align 8
  %180 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %181 = call i64 @IS_ERR(%struct.scatterlist* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %174
  %184 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %185 = call i32 @PTR_ERR(%struct.scatterlist* %184)
  store i32 %185, i32* %14, align 4
  br label %308

186:                                              ; preds = %174
  %187 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %188 = call i32 @sg_mark_end(%struct.scatterlist* %187)
  %189 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %190 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %194 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %193, i32 0, i32 2
  store i64 %192, i64* %194, align 8
  %195 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %196 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %199 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %202 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @dma_map_sg(i32 %197, i64 %200, i32 %203, i32 %204)
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %186
  br label %308

209:                                              ; preds = %186
  %210 = load i32, i32* %12, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %233

212:                                              ; preds = %209
  %213 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %214 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %217 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %220 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @dma_map_sg(i32 %215, i64 %218, i32 %221, i32 %222)
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %14, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %212
  br label %296

227:                                              ; preds = %212
  %228 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %229 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %232 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %231, i32 0, i32 3
  store i64 %230, i64* %232, align 8
  br label %239

233:                                              ; preds = %209
  %234 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %235 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %238 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %237, i32 0, i32 3
  store i64 %236, i64* %238, align 8
  br label %239

239:                                              ; preds = %233, %227
  %240 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %241 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %240, i32 0, i32 1
  %242 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %243 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %246 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %249 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %252 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @qce_ablkcipher_done, align 4
  %255 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %256 = call i32 @qce_dma_prep_sgs(%struct.TYPE_10__* %241, i64 %244, i32 %247, i64 %250, i32 %253, i32 %254, %struct.crypto_async_request* %255)
  store i32 %256, i32* %14, align 4
  %257 = load i32, i32* %14, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %239
  br label %280

260:                                              ; preds = %239
  %261 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %262 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %261, i32 0, i32 1
  %263 = call i32 @qce_dma_issue_pending(%struct.TYPE_10__* %262)
  %264 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %265 = load %struct.qce_alg_template*, %struct.qce_alg_template** %7, align 8
  %266 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %269 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @qce_start(%struct.crypto_async_request* %264, i32 %267, i32 %270, i32 0)
  store i32 %271, i32* %14, align 4
  %272 = load i32, i32* %14, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %260
  br label %276

275:                                              ; preds = %260
  store i32 0, i32* %2, align 4
  br label %313

276:                                              ; preds = %274
  %277 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %278 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %277, i32 0, i32 1
  %279 = call i32 @qce_dma_terminate_all(%struct.TYPE_10__* %278)
  br label %280

280:                                              ; preds = %276, %259
  %281 = load i32, i32* %12, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %295

283:                                              ; preds = %280
  %284 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %285 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %288 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %291 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* %9, align 4
  %294 = call i32 @dma_unmap_sg(i32 %286, i64 %289, i32 %292, i32 %293)
  br label %295

295:                                              ; preds = %283, %280
  br label %296

296:                                              ; preds = %295, %226
  %297 = load %struct.qce_device*, %struct.qce_device** %8, align 8
  %298 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %301 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %304 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %10, align 4
  %307 = call i32 @dma_unmap_sg(i32 %299, i64 %302, i32 %305, i32 %306)
  br label %308

308:                                              ; preds = %296, %208, %183, %171
  %309 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %5, align 8
  %310 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %309, i32 0, i32 4
  %311 = call i32 @sg_free_table(%struct.TYPE_9__* %310)
  %312 = load i32, i32* %14, align 4
  store i32 %312, i32* %2, align 4
  br label %313

313:                                              ; preds = %308, %275, %150, %114, %101
  %314 = load i32, i32* %2, align 4
  ret i32 %314
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.qce_cipher_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.qce_alg_template* @to_cipher_tmpl(i32) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i8* @sg_nents_for_len(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sg_alloc_table(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @sg_init_one(i32*, i32, i32) #1

declare dso_local %struct.scatterlist* @qce_sgtable_add(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.scatterlist*) #1

declare dso_local i32 @PTR_ERR(%struct.scatterlist*) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

declare dso_local i32 @dma_map_sg(i32, i64, i32, i32) #1

declare dso_local i32 @qce_dma_prep_sgs(%struct.TYPE_10__*, i64, i32, i64, i32, i32, %struct.crypto_async_request*) #1

declare dso_local i32 @qce_dma_issue_pending(%struct.TYPE_10__*) #1

declare dso_local i32 @qce_start(%struct.crypto_async_request*, i32, i32, i32) #1

declare dso_local i32 @qce_dma_terminate_all(%struct.TYPE_10__*) #1

declare dso_local i32 @dma_unmap_sg(i32, i64, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
