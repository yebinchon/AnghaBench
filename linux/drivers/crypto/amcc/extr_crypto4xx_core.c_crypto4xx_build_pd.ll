; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_build_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_build_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32, i32 }
%struct.crypto4xx_ctx = type { %struct.crypto4xx_device* }
%struct.crypto4xx_device = type { i32, i32, i32, i32, i64, %struct.TYPE_11__*, %struct.pd_uinfo*, %struct.ce_pd* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.pd_uinfo = type { i32, i32, i32, i32, i32, i32, %struct.dynamic_sa_ctl*, %struct.TYPE_12__*, %struct.crypto_async_request*, %struct.scatterlist* }
%struct.TYPE_12__ = type { %struct.dynamic_sa_ctl* }
%struct.ce_pd = type { i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.dynamic_sa_ctl = type { %struct.TYPE_15__, %struct.TYPE_20__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32 }
%struct.scatterlist = type { i32, i32 }
%struct.ce_gd = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i64, i32, i64 }
%struct.ce_sd = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i64 }

@CRYPTO_MODE_CFB = common dso_local global i64 0, align 8
@CRYPTO_MODE_OFB = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid number of src SG.\0A\00", align 1
@PPC4XX_SD_BUFFER_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@PPC4XX_NUM_PD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ERING_WAS_FULL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@PD_CTL_HOST_READY = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_AHASH = common dso_local global i64 0, align 8
@CRYPTO_ALG_TYPE_AEAD = common dso_local global i64 0, align 8
@PD_CTL_HASH_FINAL = common dso_local global i32 0, align 4
@PD_ENTRY_INUSE = common dso_local global i32 0, align 4
@PD_ENTRY_BUSY = common dso_local global i32 0, align 4
@CRYPTO4XX_INT_DESCR_RD = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto4xx_build_pd(%struct.crypto_async_request* %0, %struct.crypto4xx_ctx* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i32 %4, %struct.dynamic_sa_ctl* %5, i32 %6, %struct.dynamic_sa_ctl* %7, i32 %8, i32 %9, %struct.scatterlist* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.crypto_async_request*, align 8
  %14 = alloca %struct.crypto4xx_ctx*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.dynamic_sa_ctl*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.dynamic_sa_ctl*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.scatterlist*, align 8
  %24 = alloca %struct.crypto4xx_device*, align 8
  %25 = alloca %struct.dynamic_sa_ctl*, align 8
  %26 = alloca %struct.ce_gd*, align 8
  %27 = alloca %struct.ce_pd*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca %struct.pd_uinfo*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca %struct.scatterlist*, align 8
  %43 = alloca i64, align 8
  %44 = alloca i8*, align 8
  %45 = alloca %struct.ce_sd*, align 8
  %46 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %13, align 8
  store %struct.crypto4xx_ctx* %1, %struct.crypto4xx_ctx** %14, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %15, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %16, align 8
  store i32 %4, i32* %17, align 4
  store %struct.dynamic_sa_ctl* %5, %struct.dynamic_sa_ctl** %18, align 8
  store i32 %6, i32* %19, align 4
  store %struct.dynamic_sa_ctl* %7, %struct.dynamic_sa_ctl** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store %struct.scatterlist* %10, %struct.scatterlist** %23, align 8
  %47 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %14, align 8
  %48 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %47, i32 0, i32 0
  %49 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %48, align 8
  store %struct.crypto4xx_device* %49, %struct.crypto4xx_device** %24, align 8
  store i32 -1, i32* %30, align 4
  store i32 -1, i32* %31, align 4
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %35, align 4
  store i32 0, i32* %37, align 4
  %51 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %20, align 8
  %52 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CRYPTO_MODE_CFB, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %11
  %59 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %20, align 8
  %60 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CRYPTO_MODE_OFB, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58, %11
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %69 = urem i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %66, %58
  %72 = phi i1 [ false, %58 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %40, align 4
  %74 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %17, align 4
  %77 = add i32 %75, %76
  %78 = call i32 @sg_nents_for_len(%struct.scatterlist* %74, i32 %77)
  store i32 %78, i32* %38, align 4
  %79 = load i32, i32* %38, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %71
  %82 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %83 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %82, i32 0, i32 5
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* %38, align 4
  store i32 %88, i32* %12, align 4
  br label %586

89:                                               ; preds = %71
  %90 = load i32, i32* %38, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 0, i32* %38, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i32, i32* %38, align 4
  store i32 %94, i32* %28, align 4
  %95 = load i32, i32* %22, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %35, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* %35, align 4
  %101 = load %struct.scatterlist*, %struct.scatterlist** %23, align 8
  %102 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %103 = load i32, i32* %22, align 4
  %104 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %101, %struct.scatterlist* %102, i32 %103)
  store %struct.scatterlist* %104, %struct.scatterlist** %16, align 8
  br label %105

105:                                              ; preds = %97, %93
  %106 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %107 = call i64 @sg_is_last(%struct.scatterlist* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %40, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 0, i32* %29, align 4
  br label %131

113:                                              ; preds = %109, %105
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %116 = icmp ugt i32 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %120 = udiv i32 %118, %119
  store i32 %120, i32* %29, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %123 = urem i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* %29, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %29, align 4
  br label %128

128:                                              ; preds = %125, %117
  br label %130

129:                                              ; preds = %113
  store i32 1, i32* %29, align 4
  br label %130

130:                                              ; preds = %129, %128
  br label %131

131:                                              ; preds = %130, %112
  %132 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %133 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %132, i32 0, i32 5
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i64, i64* %33, align 8
  %137 = call i32 @spin_lock_irqsave(i32* %135, i64 %136)
  %138 = load %struct.crypto_async_request*, %struct.crypto_async_request** %13, align 8
  %139 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %131
  %145 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %146 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %149 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %147, %150
  %152 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %153 = srem i32 %151, %152
  %154 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %155 = mul nsw i32 %154, 13
  %156 = sdiv i32 %155, 16
  %157 = icmp sge i32 %153, %156
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %39, align 4
  br label %186

159:                                              ; preds = %131
  %160 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %161 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %164 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %162, %165
  %167 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %168 = srem i32 %166, %167
  %169 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %170 = mul nsw i32 %169, 15
  %171 = sdiv i32 %170, 16
  %172 = icmp sge i32 %168, %171
  %173 = zext i1 %172 to i32
  store i32 %173, i32* %39, align 4
  %174 = load i32, i32* %39, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %159
  %177 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %178 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %177, i32 0, i32 5
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i64, i64* %33, align 8
  %182 = call i32 @spin_unlock_irqrestore(i32* %180, i64 %181)
  %183 = load i32, i32* @EBUSY, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %12, align 4
  br label %586

185:                                              ; preds = %159
  br label %186

186:                                              ; preds = %185, %144
  %187 = load i32, i32* %28, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %186
  %190 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %191 = load i32, i32* %28, align 4
  %192 = call i32 @crypto4xx_get_n_gd(%struct.crypto4xx_device* %190, i32 %191)
  store i32 %192, i32* %30, align 4
  %193 = load i32, i32* %30, align 4
  %194 = load i32, i32* @ERING_WAS_FULL, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %189
  %197 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %198 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %197, i32 0, i32 5
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i64, i64* %33, align 8
  %202 = call i32 @spin_unlock_irqrestore(i32* %200, i64 %201)
  %203 = load i32, i32* @EAGAIN, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %12, align 4
  br label %586

205:                                              ; preds = %189
  br label %206

206:                                              ; preds = %205, %186
  %207 = load i32, i32* %29, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %233

209:                                              ; preds = %206
  %210 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %211 = load i32, i32* %29, align 4
  %212 = call i32 @crypto4xx_get_n_sd(%struct.crypto4xx_device* %210, i32 %211)
  store i32 %212, i32* %31, align 4
  %213 = load i32, i32* %31, align 4
  %214 = load i32, i32* @ERING_WAS_FULL, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %232

216:                                              ; preds = %209
  %217 = load i32, i32* %28, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load i32, i32* %30, align 4
  %221 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %222 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %219, %216
  %224 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %225 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %224, i32 0, i32 5
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i64, i64* %33, align 8
  %229 = call i32 @spin_unlock_irqrestore(i32* %227, i64 %228)
  %230 = load i32, i32* @EAGAIN, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %12, align 4
  br label %586

232:                                              ; preds = %209
  br label %233

233:                                              ; preds = %232, %206
  %234 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %235 = call i32 @crypto4xx_get_pd_from_pdr_nolock(%struct.crypto4xx_device* %234)
  store i32 %235, i32* %32, align 4
  %236 = load i32, i32* %32, align 4
  %237 = load i32, i32* @ERING_WAS_FULL, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %262

239:                                              ; preds = %233
  %240 = load i32, i32* %28, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load i32, i32* %30, align 4
  %244 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %245 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 8
  br label %246

246:                                              ; preds = %242, %239
  %247 = load i32, i32* %29, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = load i32, i32* %31, align 4
  %251 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %252 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 4
  br label %253

253:                                              ; preds = %249, %246
  %254 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %255 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %254, i32 0, i32 5
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  %258 = load i64, i64* %33, align 8
  %259 = call i32 @spin_unlock_irqrestore(i32* %257, i64 %258)
  %260 = load i32, i32* @EAGAIN, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %12, align 4
  br label %586

262:                                              ; preds = %233
  %263 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %264 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %263, i32 0, i32 5
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 1
  %267 = load i64, i64* %33, align 8
  %268 = call i32 @spin_unlock_irqrestore(i32* %266, i64 %267)
  %269 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %270 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %269, i32 0, i32 7
  %271 = load %struct.ce_pd*, %struct.ce_pd** %270, align 8
  %272 = load i32, i32* %32, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %271, i64 %273
  store %struct.ce_pd* %274, %struct.ce_pd** %27, align 8
  %275 = load i32, i32* %21, align 4
  %276 = load %struct.ce_pd*, %struct.ce_pd** %27, align 8
  %277 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 4
  %278 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %279 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %278, i32 0, i32 6
  %280 = load %struct.pd_uinfo*, %struct.pd_uinfo** %279, align 8
  %281 = load i32, i32* %32, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %280, i64 %282
  store %struct.pd_uinfo* %283, %struct.pd_uinfo** %34, align 8
  %284 = load i32, i32* %28, align 4
  %285 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %286 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 8
  %287 = load i32, i32* %29, align 4
  %288 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %289 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 4
  %290 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %291 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %292 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %291, i32 0, i32 9
  store %struct.scatterlist* %290, %struct.scatterlist** %292, align 8
  %293 = load %struct.crypto_async_request*, %struct.crypto_async_request** %13, align 8
  %294 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %295 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %294, i32 0, i32 8
  store %struct.crypto_async_request* %293, %struct.crypto_async_request** %295, align 8
  %296 = load i32, i32* %19, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %262
  %299 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %300 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %299, i32 0, i32 7
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %302, align 8
  %304 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %18, align 8
  %305 = load i32, i32* %19, align 4
  %306 = call i32 @memcpy(%struct.dynamic_sa_ctl* %303, %struct.dynamic_sa_ctl* %304, i32 %305)
  br label %307

307:                                              ; preds = %298, %262
  %308 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %309 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %308, i32 0, i32 6
  %310 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %309, align 8
  store %struct.dynamic_sa_ctl* %310, %struct.dynamic_sa_ctl** %25, align 8
  %311 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %25, align 8
  %312 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %20, align 8
  %313 = load i32, i32* %21, align 4
  %314 = mul i32 %313, 4
  %315 = call i32 @memcpy(%struct.dynamic_sa_ctl* %311, %struct.dynamic_sa_ctl* %312, i32 %314)
  %316 = load i32, i32* %22, align 4
  %317 = lshr i32 %316, 2
  %318 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %25, align 8
  %319 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i32 0, i32 1
  store i32 %317, i32* %321, align 8
  %322 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %25, align 8
  %323 = call i64 @get_dynamic_sa_offset_state_ptr_field(%struct.dynamic_sa_ctl* %322)
  store i64 %323, i64* %36, align 8
  %324 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %325 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %25, align 8
  %328 = ptrtoint %struct.dynamic_sa_ctl* %327 to i64
  %329 = load i64, i64* %36, align 8
  %330 = add i64 %328, %329
  %331 = inttoptr i64 %330 to i32*
  store i32 %326, i32* %331, align 4
  %332 = load i32, i32* %28, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %404

334:                                              ; preds = %307
  %335 = load i32, i32* %30, align 4
  store i32 %335, i32* %37, align 4
  %336 = load i32, i32* %30, align 4
  %337 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %338 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %337, i32 0, i32 3
  store i32 %336, i32* %338, align 4
  %339 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %340 = load i32, i32* %37, align 4
  %341 = call %struct.ce_gd* @crypto4xx_get_gdp(%struct.crypto4xx_device* %339, i8** %41, i32 %340)
  store %struct.ce_gd* %341, %struct.ce_gd** %26, align 8
  %342 = load i8*, i8** %41, align 8
  %343 = ptrtoint i8* %342 to i32
  %344 = load %struct.ce_pd*, %struct.ce_pd** %27, align 8
  %345 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %344, i32 0, i32 1
  store i32 %343, i32* %345, align 4
  %346 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %25, align 8
  %347 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 0
  store i32 1, i32* %349, align 8
  %350 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  store %struct.scatterlist* %350, %struct.scatterlist** %42, align 8
  br label %351

351:                                              ; preds = %390, %334
  %352 = load i32, i32* %35, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %403

354:                                              ; preds = %351
  %355 = load %struct.scatterlist*, %struct.scatterlist** %42, align 8
  %356 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %35, align 4
  %359 = call i64 @min(i32 %357, i32 %358)
  store i64 %359, i64* %43, align 8
  %360 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %361 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %360, i32 0, i32 5
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.scatterlist*, %struct.scatterlist** %42, align 8
  %366 = call i32 @sg_page(%struct.scatterlist* %365)
  %367 = load %struct.scatterlist*, %struct.scatterlist** %42, align 8
  %368 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i64, i64* %43, align 8
  %371 = load i32, i32* @DMA_TO_DEVICE, align 4
  %372 = call i64 @dma_map_page(i32 %364, i32 %366, i32 %369, i64 %370, i32 %371)
  %373 = load %struct.ce_gd*, %struct.ce_gd** %26, align 8
  %374 = getelementptr inbounds %struct.ce_gd, %struct.ce_gd* %373, i32 0, i32 1
  store i64 %372, i64* %374, align 8
  %375 = load i64, i64* %43, align 8
  %376 = load %struct.ce_gd*, %struct.ce_gd** %26, align 8
  %377 = getelementptr inbounds %struct.ce_gd, %struct.ce_gd* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 0
  store i64 %375, i64* %378, align 8
  %379 = load %struct.ce_gd*, %struct.ce_gd** %26, align 8
  %380 = getelementptr inbounds %struct.ce_gd, %struct.ce_gd* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 2
  store i64 0, i64* %381, align 8
  %382 = load %struct.ce_gd*, %struct.ce_gd** %26, align 8
  %383 = getelementptr inbounds %struct.ce_gd, %struct.ce_gd* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 1
  store i32 1, i32* %384, align 8
  %385 = load i64, i64* %43, align 8
  %386 = load i32, i32* %35, align 4
  %387 = zext i32 %386 to i64
  %388 = icmp uge i64 %385, %387
  br i1 %388, label %389, label %390

389:                                              ; preds = %354
  br label %403

390:                                              ; preds = %354
  %391 = load %struct.scatterlist*, %struct.scatterlist** %42, align 8
  %392 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %35, align 4
  %395 = sub i32 %394, %393
  store i32 %395, i32* %35, align 4
  %396 = load i32, i32* %37, align 4
  %397 = call i32 @get_next_gd(i32 %396)
  store i32 %397, i32* %37, align 4
  %398 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %399 = load i32, i32* %37, align 4
  %400 = call %struct.ce_gd* @crypto4xx_get_gdp(%struct.crypto4xx_device* %398, i8** %41, i32 %399)
  store %struct.ce_gd* %400, %struct.ce_gd** %26, align 8
  %401 = load %struct.scatterlist*, %struct.scatterlist** %42, align 8
  %402 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %401)
  store %struct.scatterlist* %402, %struct.scatterlist** %42, align 8
  br label %351

403:                                              ; preds = %389, %351
  br label %431

404:                                              ; preds = %307
  %405 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %406 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %405, i32 0, i32 5
  %407 = load %struct.TYPE_11__*, %struct.TYPE_11__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %411 = call i32 @sg_page(%struct.scatterlist* %410)
  %412 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %413 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* %35, align 4
  %416 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %417 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = call i64 @min(i32 %415, i32 %418)
  %420 = load i32, i32* @DMA_TO_DEVICE, align 4
  %421 = call i64 @dma_map_page(i32 %409, i32 %411, i32 %414, i64 %419, i32 %420)
  %422 = trunc i64 %421 to i32
  %423 = load %struct.ce_pd*, %struct.ce_pd** %27, align 8
  %424 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %423, i32 0, i32 1
  store i32 %422, i32* %424, align 4
  %425 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %25, align 8
  %426 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i32 0, i32 0
  store i32 0, i32* %428, align 8
  %429 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %430 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %429, i32 0, i32 3
  store i32 -1, i32* %430, align 4
  br label %431

431:                                              ; preds = %404, %403
  %432 = load i32, i32* %29, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %461, label %434

434:                                              ; preds = %431
  %435 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %436 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %435, i32 0, i32 4
  store i32 -1, i32* %436, align 8
  %437 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %25, align 8
  %438 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %439, i32 0, i32 1
  store i32 0, i32* %440, align 4
  %441 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %442 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %441, i32 0, i32 5
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %447 = call i32 @sg_page(%struct.scatterlist* %446)
  %448 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %449 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %17, align 4
  %452 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %453 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = call i64 @min(i32 %451, i32 %454)
  %456 = load i32, i32* @DMA_TO_DEVICE, align 4
  %457 = call i64 @dma_map_page(i32 %445, i32 %447, i32 %450, i64 %455, i32 %456)
  %458 = trunc i64 %457 to i32
  %459 = load %struct.ce_pd*, %struct.ce_pd** %27, align 8
  %460 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %459, i32 0, i32 2
  store i32 %458, i32* %460, align 4
  br label %518

461:                                              ; preds = %431
  store %struct.ce_sd* null, %struct.ce_sd** %45, align 8
  %462 = load i32, i32* %31, align 4
  store i32 %462, i32* %46, align 4
  %463 = load i32, i32* %17, align 4
  store i32 %463, i32* %35, align 4
  %464 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %25, align 8
  %465 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %466, i32 0, i32 1
  store i32 1, i32* %467, align 4
  %468 = load i32, i32* %31, align 4
  %469 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %470 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %469, i32 0, i32 4
  store i32 %468, i32* %470, align 8
  %471 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %472 = load i32, i32* %46, align 4
  %473 = call %struct.ce_sd* @crypto4xx_get_sdp(%struct.crypto4xx_device* %471, i8** %44, i32 %472)
  store %struct.ce_sd* %473, %struct.ce_sd** %45, align 8
  %474 = load i8*, i8** %44, align 8
  %475 = ptrtoint i8* %474 to i32
  %476 = load %struct.ce_pd*, %struct.ce_pd** %27, align 8
  %477 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %476, i32 0, i32 2
  store i32 %475, i32* %477, align 4
  %478 = load %struct.ce_sd*, %struct.ce_sd** %45, align 8
  %479 = getelementptr inbounds %struct.ce_sd, %struct.ce_sd* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %479, i32 0, i32 1
  store i64 0, i64* %480, align 8
  %481 = load %struct.ce_sd*, %struct.ce_sd** %45, align 8
  %482 = getelementptr inbounds %struct.ce_sd, %struct.ce_sd* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %482, i32 0, i32 0
  store i32 1, i32* %483, align 8
  %484 = load i32, i32* %35, align 4
  %485 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %486 = icmp uge i32 %484, %485
  br i1 %486, label %487, label %491

487:                                              ; preds = %461
  %488 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %489 = load i32, i32* %35, align 4
  %490 = sub i32 %489, %488
  store i32 %490, i32* %35, align 4
  br label %492

491:                                              ; preds = %461
  store i32 0, i32* %35, align 4
  br label %492

492:                                              ; preds = %491, %487
  br label %493

493:                                              ; preds = %516, %492
  %494 = load i32, i32* %35, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %517

496:                                              ; preds = %493
  %497 = load i32, i32* %46, align 4
  %498 = call i32 @get_next_sd(i32 %497)
  store i32 %498, i32* %46, align 4
  %499 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %500 = load i32, i32* %46, align 4
  %501 = call %struct.ce_sd* @crypto4xx_get_sdp(%struct.crypto4xx_device* %499, i8** %44, i32 %500)
  store %struct.ce_sd* %501, %struct.ce_sd** %45, align 8
  %502 = load %struct.ce_sd*, %struct.ce_sd** %45, align 8
  %503 = getelementptr inbounds %struct.ce_sd, %struct.ce_sd* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %503, i32 0, i32 1
  store i64 0, i64* %504, align 8
  %505 = load %struct.ce_sd*, %struct.ce_sd** %45, align 8
  %506 = getelementptr inbounds %struct.ce_sd, %struct.ce_sd* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %506, i32 0, i32 0
  store i32 1, i32* %507, align 8
  %508 = load i32, i32* %35, align 4
  %509 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %510 = icmp uge i32 %508, %509
  br i1 %510, label %511, label %515

511:                                              ; preds = %496
  %512 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %513 = load i32, i32* %35, align 4
  %514 = sub i32 %513, %512
  store i32 %514, i32* %35, align 4
  br label %516

515:                                              ; preds = %496
  store i32 0, i32* %35, align 4
  br label %516

516:                                              ; preds = %515, %511
  br label %493

517:                                              ; preds = %493
  br label %518

518:                                              ; preds = %517, %434
  %519 = load i32, i32* @PD_CTL_HOST_READY, align 4
  %520 = load %struct.crypto_async_request*, %struct.crypto_async_request** %13, align 8
  %521 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 4
  %523 = call i64 @crypto_tfm_alg_type(i32 %522)
  %524 = load i64, i64* @CRYPTO_ALG_TYPE_AHASH, align 8
  %525 = icmp eq i64 %523, %524
  %526 = zext i1 %525 to i32
  %527 = load %struct.crypto_async_request*, %struct.crypto_async_request** %13, align 8
  %528 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 4
  %530 = call i64 @crypto_tfm_alg_type(i32 %529)
  %531 = load i64, i64* @CRYPTO_ALG_TYPE_AEAD, align 8
  %532 = icmp eq i64 %530, %531
  %533 = zext i1 %532 to i32
  %534 = or i32 %526, %533
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %538

536:                                              ; preds = %518
  %537 = load i32, i32* @PD_CTL_HASH_FINAL, align 4
  br label %539

538:                                              ; preds = %518
  br label %539

539:                                              ; preds = %538, %536
  %540 = phi i32 [ %537, %536 ], [ 0, %538 ]
  %541 = or i32 %519, %540
  %542 = load %struct.ce_pd*, %struct.ce_pd** %27, align 8
  %543 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %542, i32 0, i32 4
  %544 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %543, i32 0, i32 0
  store i32 %541, i32* %544, align 4
  %545 = load i32, i32* %22, align 4
  %546 = load i32, i32* %17, align 4
  %547 = add i32 %545, %546
  %548 = or i32 4194304, %547
  %549 = load %struct.ce_pd*, %struct.ce_pd** %27, align 8
  %550 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %549, i32 0, i32 3
  %551 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %550, i32 0, i32 0
  store i32 %548, i32* %551, align 4
  %552 = load i32, i32* @PD_ENTRY_INUSE, align 4
  %553 = load i32, i32* %39, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %557

555:                                              ; preds = %539
  %556 = load i32, i32* @PD_ENTRY_BUSY, align 4
  br label %558

557:                                              ; preds = %539
  br label %558

558:                                              ; preds = %557, %555
  %559 = phi i32 [ %556, %555 ], [ 0, %557 ]
  %560 = or i32 %552, %559
  %561 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %562 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %561, i32 0, i32 5
  store i32 %560, i32* %562, align 4
  %563 = call i32 (...) @wmb()
  %564 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %565 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %564, i32 0, i32 4
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* @CRYPTO4XX_INT_DESCR_RD, align 8
  %568 = add nsw i64 %566, %567
  %569 = call i32 @writel(i32 0, i64 %568)
  %570 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %24, align 8
  %571 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %570, i32 0, i32 4
  %572 = load i64, i64* %571, align 8
  %573 = load i64, i64* @CRYPTO4XX_INT_DESCR_RD, align 8
  %574 = add nsw i64 %572, %573
  %575 = call i32 @writel(i32 1, i64 %574)
  %576 = load i32, i32* %39, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %581

578:                                              ; preds = %558
  %579 = load i32, i32* @EBUSY, align 4
  %580 = sub nsw i32 0, %579
  br label %584

581:                                              ; preds = %558
  %582 = load i32, i32* @EINPROGRESS, align 4
  %583 = sub nsw i32 0, %582
  br label %584

584:                                              ; preds = %581, %578
  %585 = phi i32 [ %580, %578 ], [ %583, %581 ]
  store i32 %585, i32* %12, align 4
  br label %586

586:                                              ; preds = %584, %253, %223, %196, %176, %81
  %587 = load i32, i32* %12, align 4
  ret i32 %587
}

declare dso_local i32 @sg_nents_for_len(%struct.scatterlist*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i64 @sg_is_last(%struct.scatterlist*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @crypto4xx_get_n_gd(%struct.crypto4xx_device*, i32) #1

declare dso_local i32 @crypto4xx_get_n_sd(%struct.crypto4xx_device*, i32) #1

declare dso_local i32 @crypto4xx_get_pd_from_pdr_nolock(%struct.crypto4xx_device*) #1

declare dso_local i32 @memcpy(%struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl*, i32) #1

declare dso_local i64 @get_dynamic_sa_offset_state_ptr_field(%struct.dynamic_sa_ctl*) #1

declare dso_local %struct.ce_gd* @crypto4xx_get_gdp(%struct.crypto4xx_device*, i8**, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i64 @dma_map_page(i32, i32, i32, i64, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @get_next_gd(i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local %struct.ce_sd* @crypto4xx_get_sdp(%struct.crypto4xx_device*, i8**, i32) #1

declare dso_local i32 @get_next_sd(i32) #1

declare dso_local i64 @crypto_tfm_alg_type(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
