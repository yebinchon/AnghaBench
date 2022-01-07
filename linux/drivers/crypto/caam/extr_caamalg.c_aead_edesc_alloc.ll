; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_aead_edesc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_aead_edesc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_edesc = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.aead_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { i32, %struct.device* }
%struct.device = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Insufficient bytes (%d) in src S/G\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Insufficient bytes (%d) in dst S/G\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"unable to map source\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"unable to map destination\0A\00", align 1
@GFP_DMA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unable to map S/G table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aead_edesc* (%struct.aead_request*, i32, i32*, i32)* @aead_edesc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aead_edesc* @aead_edesc_alloc(%struct.aead_request* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.aead_edesc*, align 8
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_aead*, align 8
  %11 = alloca %struct.caam_ctx*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.aead_edesc*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %26 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %25)
  store %struct.crypto_aead* %26, %struct.crypto_aead** %10, align 8
  %27 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %28 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %27)
  store %struct.caam_ctx* %28, %struct.caam_ctx** %11, align 8
  %29 = load %struct.caam_ctx*, %struct.caam_ctx** %11, align 8
  %30 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %29, i32 0, i32 1
  %31 = load %struct.device*, %struct.device** %30, align 8
  store %struct.device* %31, %struct.device** %12, align 8
  %32 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  br label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %45 = load %struct.caam_ctx*, %struct.caam_ctx** %11, align 8
  %46 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %24, align 4
  %48 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %49 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %111

58:                                               ; preds = %43
  %59 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %60 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %63 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %24, align 4
  br label %74

71:                                               ; preds = %58
  %72 = load i32, i32* %24, align 4
  %73 = sub i32 0, %72
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i32 [ %70, %69 ], [ %73, %71 ]
  %76 = add i32 %66, %75
  store i32 %76, i32* %19, align 4
  %77 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %78 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @sg_nents_for_len(i32 %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %74
  %88 = load %struct.device*, %struct.device** %12, align 8
  %89 = load i32, i32* %18, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %14, align 4
  %92 = call %struct.aead_edesc* @ERR_PTR(i32 %91)
  store %struct.aead_edesc* %92, %struct.aead_edesc** %5, align 8
  br label %380

93:                                               ; preds = %74
  %94 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %95 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @sg_nents_for_len(i32 %96, i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = load %struct.device*, %struct.device** %12, align 8
  %106 = load i32, i32* %19, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %16, align 4
  %109 = call %struct.aead_edesc* @ERR_PTR(i32 %108)
  store %struct.aead_edesc* %109, %struct.aead_edesc** %5, align 8
  br label %380

110:                                              ; preds = %93
  br label %144

111:                                              ; preds = %43
  %112 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %113 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %116 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %114, %117
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i32, i32* %24, align 4
  br label %124

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %122, %121 ], [ 0, %123 ]
  %126 = add i32 %118, %125
  store i32 %126, i32* %18, align 4
  %127 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %128 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @sg_nents_for_len(i32 %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %124
  %138 = load %struct.device*, %struct.device** %12, align 8
  %139 = load i32, i32* %18, align 4
  %140 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %14, align 4
  %142 = call %struct.aead_edesc* @ERR_PTR(i32 %141)
  store %struct.aead_edesc* %142, %struct.aead_edesc** %5, align 8
  br label %380

143:                                              ; preds = %124
  br label %144

144:                                              ; preds = %143, %110
  %145 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %146 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %149 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %147, %150
  %152 = zext i1 %151 to i32
  %153 = call i64 @likely(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %176

155:                                              ; preds = %144
  %156 = load %struct.device*, %struct.device** %12, align 8
  %157 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %158 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %162 = call i32 @dma_map_sg(%struct.device* %156, i32 %159, i32 %160, i32 %161)
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i64 @unlikely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %155
  %170 = load %struct.device*, %struct.device** %12, align 8
  %171 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  %174 = call %struct.aead_edesc* @ERR_PTR(i32 %173)
  store %struct.aead_edesc* %174, %struct.aead_edesc** %5, align 8
  br label %380

175:                                              ; preds = %155
  br label %234

176:                                              ; preds = %144
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %200

179:                                              ; preds = %176
  %180 = load %struct.device*, %struct.device** %12, align 8
  %181 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %182 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* @DMA_TO_DEVICE, align 4
  %186 = call i32 @dma_map_sg(%struct.device* %180, i32 %183, i32 %184, i32 %185)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i64 @unlikely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %179
  %194 = load %struct.device*, %struct.device** %12, align 8
  %195 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %194, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = sub nsw i32 0, %196
  %198 = call %struct.aead_edesc* @ERR_PTR(i32 %197)
  store %struct.aead_edesc* %198, %struct.aead_edesc** %5, align 8
  br label %380

199:                                              ; preds = %179
  br label %201

200:                                              ; preds = %176
  store i32 0, i32* %15, align 4
  br label %201

201:                                              ; preds = %200, %199
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %232

204:                                              ; preds = %201
  %205 = load %struct.device*, %struct.device** %12, align 8
  %206 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %207 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %211 = call i32 @dma_map_sg(%struct.device* %205, i32 %208, i32 %209, i32 %210)
  store i32 %211, i32* %17, align 4
  %212 = load i32, i32* %17, align 4
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i32
  %216 = call i64 @unlikely(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %204
  %219 = load %struct.device*, %struct.device** %12, align 8
  %220 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %219, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %221 = load %struct.device*, %struct.device** %12, align 8
  %222 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %223 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* @DMA_TO_DEVICE, align 4
  %227 = call i32 @dma_unmap_sg(%struct.device* %221, i32 %224, i32 %225, i32 %226)
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = sub nsw i32 0, %228
  %230 = call %struct.aead_edesc* @ERR_PTR(i32 %229)
  store %struct.aead_edesc* %230, %struct.aead_edesc** %5, align 8
  br label %380

231:                                              ; preds = %204
  br label %233

232:                                              ; preds = %201
  store i32 0, i32* %17, align 4
  br label %233

233:                                              ; preds = %232, %231
  br label %234

234:                                              ; preds = %233, %175
  %235 = load i32, i32* %15, align 4
  %236 = icmp sgt i32 %235, 1
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = load i32, i32* %15, align 4
  br label %240

239:                                              ; preds = %234
  br label %240

240:                                              ; preds = %239, %237
  %241 = phi i32 [ %238, %237 ], [ 0, %239 ]
  store i32 %241, i32* %22, align 4
  %242 = load i32, i32* %17, align 4
  %243 = icmp sgt i32 %242, 1
  br i1 %243, label %244, label %249

244:                                              ; preds = %240
  %245 = load i32, i32* %17, align 4
  %246 = call i32 @pad_sg_nents(i32 %245)
  %247 = load i32, i32* %22, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %22, align 4
  br label %252

249:                                              ; preds = %240
  %250 = load i32, i32* %22, align 4
  %251 = call i32 @pad_sg_nents(i32 %250)
  store i32 %251, i32* %22, align 4
  br label %252

252:                                              ; preds = %249, %244
  %253 = load i32, i32* %22, align 4
  %254 = sext i32 %253 to i64
  %255 = mul i64 %254, 4
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %23, align 4
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = add i64 32, %258
  %260 = load i32, i32* %23, align 4
  %261 = sext i32 %260 to i64
  %262 = add i64 %259, %261
  %263 = trunc i64 %262 to i32
  %264 = load i32, i32* @GFP_DMA, align 4
  %265 = load i32, i32* %13, align 4
  %266 = or i32 %264, %265
  %267 = call %struct.aead_edesc* @kzalloc(i32 %263, i32 %266)
  store %struct.aead_edesc* %267, %struct.aead_edesc** %20, align 8
  %268 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %269 = icmp ne %struct.aead_edesc* %268, null
  br i1 %269, label %284, label %270

270:                                              ; preds = %252
  %271 = load %struct.device*, %struct.device** %12, align 8
  %272 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %273 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %276 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* %16, align 4
  %280 = call i32 @caam_unmap(%struct.device* %271, i32 %274, i32 %277, i32 %278, i32 %279, i32 0, i32 0, i32 0, i32 0)
  %281 = load i32, i32* @ENOMEM, align 4
  %282 = sub nsw i32 0, %281
  %283 = call %struct.aead_edesc* @ERR_PTR(i32 %282)
  store %struct.aead_edesc* %283, %struct.aead_edesc** %5, align 8
  br label %380

284:                                              ; preds = %252
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %287 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  %288 = load i32, i32* %16, align 4
  %289 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %290 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  %291 = load i32, i32* %15, align 4
  %292 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %293 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %292, i32 0, i32 2
  store i32 %291, i32* %293, align 8
  %294 = load i32, i32* %17, align 4
  %295 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %296 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %295, i32 0, i32 3
  store i32 %294, i32* %296, align 4
  %297 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %298 = bitcast %struct.aead_edesc* %297 to i8*
  %299 = getelementptr i8, i8* %298, i64 32
  %300 = load i32, i32* %7, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr i8, i8* %299, i64 %301
  %303 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %304 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %303, i32 0, i32 6
  store i8* %302, i8** %304, align 8
  %305 = load i32, i32* %15, align 4
  %306 = icmp sgt i32 %305, 1
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i32
  %309 = load i32*, i32** %8, align 8
  store i32 %308, i32* %309, align 4
  store i32 0, i32* %21, align 4
  %310 = load i32, i32* %15, align 4
  %311 = icmp sgt i32 %310, 1
  br i1 %311, label %312, label %327

312:                                              ; preds = %284
  %313 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %314 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %18, align 4
  %317 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %318 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %317, i32 0, i32 6
  %319 = load i8*, i8** %318, align 8
  %320 = load i32, i32* %21, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr i8, i8* %319, i64 %321
  %323 = call i32 @sg_to_sec4_sg_last(i32 %315, i32 %316, i8* %322, i32 0)
  %324 = load i32, i32* %15, align 4
  %325 = load i32, i32* %21, align 4
  %326 = add nsw i32 %325, %324
  store i32 %326, i32* %21, align 4
  br label %327

327:                                              ; preds = %312, %284
  %328 = load i32, i32* %17, align 4
  %329 = icmp sgt i32 %328, 1
  br i1 %329, label %330, label %342

330:                                              ; preds = %327
  %331 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %332 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %19, align 4
  %335 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %336 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %335, i32 0, i32 6
  %337 = load i8*, i8** %336, align 8
  %338 = load i32, i32* %21, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr i8, i8* %337, i64 %339
  %341 = call i32 @sg_to_sec4_sg_last(i32 %333, i32 %334, i8* %340, i32 0)
  br label %342

342:                                              ; preds = %330, %327
  %343 = load i32, i32* %23, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %347, label %345

345:                                              ; preds = %342
  %346 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  store %struct.aead_edesc* %346, %struct.aead_edesc** %5, align 8
  br label %380

347:                                              ; preds = %342
  %348 = load %struct.device*, %struct.device** %12, align 8
  %349 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %350 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %349, i32 0, i32 6
  %351 = load i8*, i8** %350, align 8
  %352 = load i32, i32* %23, align 4
  %353 = load i32, i32* @DMA_TO_DEVICE, align 4
  %354 = call i32 @dma_map_single(%struct.device* %348, i8* %351, i32 %352, i32 %353)
  %355 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %356 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %355, i32 0, i32 5
  store i32 %354, i32* %356, align 4
  %357 = load %struct.device*, %struct.device** %12, align 8
  %358 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %359 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 4
  %361 = call i64 @dma_mapping_error(%struct.device* %357, i32 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %375

363:                                              ; preds = %347
  %364 = load %struct.device*, %struct.device** %12, align 8
  %365 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %364, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %366 = load %struct.device*, %struct.device** %12, align 8
  %367 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %368 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %369 = call i32 @aead_unmap(%struct.device* %366, %struct.aead_edesc* %367, %struct.aead_request* %368)
  %370 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %371 = call i32 @kfree(%struct.aead_edesc* %370)
  %372 = load i32, i32* @ENOMEM, align 4
  %373 = sub nsw i32 0, %372
  %374 = call %struct.aead_edesc* @ERR_PTR(i32 %373)
  store %struct.aead_edesc* %374, %struct.aead_edesc** %5, align 8
  br label %380

375:                                              ; preds = %347
  %376 = load i32, i32* %23, align 4
  %377 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  %378 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %377, i32 0, i32 4
  store i32 %376, i32* %378, align 8
  %379 = load %struct.aead_edesc*, %struct.aead_edesc** %20, align 8
  store %struct.aead_edesc* %379, %struct.aead_edesc** %5, align 8
  br label %380

380:                                              ; preds = %375, %363, %345, %270, %218, %193, %169, %137, %104, %87
  %381 = load %struct.aead_edesc*, %struct.aead_edesc** %5, align 8
  ret %struct.aead_edesc* %381
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sg_nents_for_len(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.aead_edesc* @ERR_PTR(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dma_map_sg(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @pad_sg_nents(i32) #1

declare dso_local %struct.aead_edesc* @kzalloc(i32, i32) #1

declare dso_local i32 @caam_unmap(%struct.device*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_to_sec4_sg_last(i32, i32, i8*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @aead_unmap(%struct.device*, %struct.aead_edesc*, %struct.aead_request*) #1

declare dso_local i32 @kfree(%struct.aead_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
