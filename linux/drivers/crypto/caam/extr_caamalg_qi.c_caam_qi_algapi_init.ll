; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_caam_qi_algapi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_caam_qi_algapi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.caam_drv_private = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.caam_skcipher_alg = type { i32, %struct.TYPE_17__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.caam_aead_alg = type { i32, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64 }

@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@caam_dpaa2 = common dso_local global i64 0, align 8
@CHA_ID_LS_AES_MASK = common dso_local global i64 0, align 8
@CHA_ID_LS_MD_MASK = common dso_local global i64 0, align 8
@CHA_ID_LS_MD_SHIFT = common dso_local global i64 0, align 8
@CHA_ID_LS_DES_MASK = common dso_local global i64 0, align 8
@CHA_ID_LS_DES_SHIFT = common dso_local global i64 0, align 8
@CHA_VER_VID_MASK = common dso_local global i64 0, align 8
@CHA_VER_VID_SHIFT = common dso_local global i64 0, align 8
@CHA_VER_NUM_MASK = common dso_local global i64 0, align 8
@CHA_VER_VID_MD_LP256 = common dso_local global i64 0, align 8
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@driver_algs = common dso_local global i8* null, align 8
@OP_ALG_ALGSEL_MASK = common dso_local global i64 0, align 8
@OP_ALG_ALGSEL_3DES = common dso_local global i64 0, align 8
@OP_ALG_ALGSEL_DES = common dso_local global i64 0, align 8
@OP_ALG_ALGSEL_AES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@driver_aeads = common dso_local global i8* null, align 8
@OP_ALG_AAI_MASK = common dso_local global i64 0, align 8
@CHA_VER_VID_AES_LP = common dso_local global i64 0, align 8
@OP_ALG_AAI_GCM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"algorithms registered in /proc/crypto\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caam_qi_algapi_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.caam_drv_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.caam_skcipher_alg*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.caam_aead_alg*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call %struct.caam_drv_private* @dev_get_drvdata(%struct.device* %24)
  store %struct.caam_drv_private* %25, %struct.caam_drv_private** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %26 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load %struct.caam_drv_private*, %struct.caam_drv_private** %4, align 8
  %28 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i64, i64* @caam_dpaa2, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %1
  store i32 0, i32* %2, align 4
  br label %280

35:                                               ; preds = %31
  %36 = load %struct.caam_drv_private*, %struct.caam_drv_private** %4, align 8
  %37 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  %41 = load %struct.caam_drv_private*, %struct.caam_drv_private** %4, align 8
  %42 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %41, i32 0, i32 1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = call i64 @rd_reg32(i32* %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @CHA_ID_LS_AES_MASK, align 8
  %49 = and i64 %47, %48
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @CHA_ID_LS_MD_MASK, align 8
  %52 = and i64 %50, %51
  %53 = load i64, i64* @CHA_ID_LS_MD_SHIFT, align 8
  %54 = ashr i64 %52, %53
  store i64 %54, i64* %10, align 8
  %55 = load %struct.caam_drv_private*, %struct.caam_drv_private** %4, align 8
  %56 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = call i64 @rd_reg32(i32* %59)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* @CHA_ID_LS_DES_MASK, align 8
  %63 = and i64 %61, %62
  %64 = load i64, i64* @CHA_ID_LS_DES_SHIFT, align 8
  %65 = ashr i64 %63, %64
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* @CHA_ID_LS_AES_MASK, align 8
  %68 = and i64 %66, %67
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* @CHA_ID_LS_MD_MASK, align 8
  %71 = and i64 %69, %70
  %72 = load i64, i64* @CHA_ID_LS_MD_SHIFT, align 8
  %73 = ashr i64 %71, %72
  store i64 %73, i64* %11, align 8
  br label %111

74:                                               ; preds = %35
  %75 = load %struct.caam_drv_private*, %struct.caam_drv_private** %4, align 8
  %76 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = call i64 @rd_reg32(i32* %79)
  store i64 %80, i64* %16, align 8
  %81 = load %struct.caam_drv_private*, %struct.caam_drv_private** %4, align 8
  %82 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = call i64 @rd_reg32(i32* %85)
  store i64 %86, i64* %17, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* @CHA_VER_VID_MASK, align 8
  %89 = and i64 %87, %88
  %90 = load i64, i64* @CHA_VER_VID_SHIFT, align 8
  %91 = ashr i64 %89, %90
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* @CHA_VER_VID_MASK, align 8
  %94 = and i64 %92, %93
  %95 = load i64, i64* @CHA_VER_VID_SHIFT, align 8
  %96 = ashr i64 %94, %95
  store i64 %96, i64* %10, align 8
  %97 = load %struct.caam_drv_private*, %struct.caam_drv_private** %4, align 8
  %98 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = call i64 @rd_reg32(i32* %101)
  %103 = load i64, i64* @CHA_VER_NUM_MASK, align 8
  %104 = and i64 %102, %103
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* @CHA_VER_NUM_MASK, align 8
  %107 = and i64 %105, %106
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* @CHA_VER_NUM_MASK, align 8
  %110 = and i64 %108, %109
  store i64 %110, i64* %11, align 8
  br label %111

111:                                              ; preds = %74, %40
  %112 = load i64, i64* %11, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @CHA_VER_VID_MD_LP256, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %118, %114, %111
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %176, %120
  %122 = load i32, i32* %5, align 4
  %123 = load i8*, i8** @driver_algs, align 8
  %124 = call i32 @ARRAY_SIZE(i8* %123)
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %179

126:                                              ; preds = %121
  %127 = load i8*, i8** @driver_algs, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr i8, i8* %127, i64 %129
  %131 = bitcast i8* %130 to %struct.caam_skcipher_alg*
  store %struct.caam_skcipher_alg* %131, %struct.caam_skcipher_alg** %18, align 8
  %132 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %18, align 8
  %133 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @OP_ALG_ALGSEL_MASK, align 8
  %137 = and i64 %135, %136
  store i64 %137, i64* %19, align 8
  %138 = load i64, i64* %9, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %126
  %141 = load i64, i64* %19, align 8
  %142 = load i64, i64* @OP_ALG_ALGSEL_3DES, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i64, i64* %19, align 8
  %146 = load i64, i64* @OP_ALG_ALGSEL_DES, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144, %140
  br label %176

149:                                              ; preds = %144, %126
  %150 = load i64, i64* %8, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %149
  %153 = load i64, i64* %19, align 8
  %154 = load i64, i64* @OP_ALG_ALGSEL_AES, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %176

157:                                              ; preds = %152, %149
  %158 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %18, align 8
  %159 = call i32 @caam_skcipher_alg_init(%struct.caam_skcipher_alg* %158)
  %160 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %18, align 8
  %161 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %160, i32 0, i32 1
  %162 = call i32 @crypto_register_skcipher(%struct.TYPE_17__* %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %157
  %166 = load %struct.device*, %struct.device** %3, align 8
  %167 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %18, align 8
  %168 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dev_warn(%struct.device* %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %171)
  br label %176

173:                                              ; preds = %157
  %174 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %18, align 8
  %175 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %174, i32 0, i32 0
  store i32 1, i32* %175, align 8
  store i32 1, i32* %13, align 4
  br label %176

176:                                              ; preds = %173, %165, %156, %148
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %5, align 4
  br label %121

179:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %269, %179
  %181 = load i32, i32* %5, align 4
  %182 = load i8*, i8** @driver_aeads, align 8
  %183 = call i32 @ARRAY_SIZE(i8* %182)
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %272

185:                                              ; preds = %180
  %186 = load i8*, i8** @driver_aeads, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr i8, i8* %186, i64 %188
  %190 = bitcast i8* %189 to %struct.caam_aead_alg*
  store %struct.caam_aead_alg* %190, %struct.caam_aead_alg** %20, align 8
  %191 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %20, align 8
  %192 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @OP_ALG_ALGSEL_MASK, align 8
  %196 = and i64 %194, %195
  store i64 %196, i64* %21, align 8
  %197 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %20, align 8
  %198 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @OP_ALG_ALGSEL_MASK, align 8
  %202 = and i64 %200, %201
  store i64 %202, i64* %22, align 8
  %203 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %20, align 8
  %204 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @OP_ALG_AAI_MASK, align 8
  %208 = and i64 %206, %207
  store i64 %208, i64* %23, align 8
  %209 = load i64, i64* %9, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %220, label %211

211:                                              ; preds = %185
  %212 = load i64, i64* %21, align 8
  %213 = load i64, i64* @OP_ALG_ALGSEL_3DES, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i64, i64* %21, align 8
  %217 = load i64, i64* @OP_ALG_ALGSEL_DES, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215, %211
  br label %269

220:                                              ; preds = %215, %185
  %221 = load i64, i64* %8, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %220
  %224 = load i64, i64* %21, align 8
  %225 = load i64, i64* @OP_ALG_ALGSEL_AES, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  br label %269

228:                                              ; preds = %223, %220
  %229 = load i64, i64* %7, align 8
  %230 = load i64, i64* @CHA_VER_VID_AES_LP, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = load i64, i64* %23, align 8
  %234 = load i64, i64* @OP_ALG_AAI_GCM, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  br label %269

237:                                              ; preds = %232, %228
  %238 = load i64, i64* %22, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %251

240:                                              ; preds = %237
  %241 = load i64, i64* %11, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %240
  %244 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %20, align 8
  %245 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %12, align 4
  %249 = icmp ugt i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %243, %240
  br label %269

251:                                              ; preds = %243, %237
  %252 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %20, align 8
  %253 = call i32 @caam_aead_alg_init(%struct.caam_aead_alg* %252)
  %254 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %20, align 8
  %255 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %254, i32 0, i32 1
  %256 = call i32 @crypto_register_aead(%struct.TYPE_18__* %255)
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* %6, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %251
  %260 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %20, align 8
  %261 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %264)
  br label %269

266:                                              ; preds = %251
  %267 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %20, align 8
  %268 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %267, i32 0, i32 0
  store i32 1, i32* %268, align 8
  store i32 1, i32* %13, align 4
  br label %269

269:                                              ; preds = %266, %259, %250, %236, %227, %219
  %270 = load i32, i32* %5, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %5, align 4
  br label %180

272:                                              ; preds = %180
  %273 = load i32, i32* %13, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load %struct.device*, %struct.device** %3, align 8
  %277 = call i32 @dev_info(%struct.device* %276, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %278

278:                                              ; preds = %275, %272
  %279 = load i32, i32* %6, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %278, %34
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local %struct.caam_drv_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rd_reg32(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @caam_skcipher_alg_init(%struct.caam_skcipher_alg*) #1

declare dso_local i32 @crypto_register_skcipher(%struct.TYPE_17__*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @caam_aead_alg_init(%struct.caam_aead_alg*) #1

declare dso_local i32 @crypto_register_aead(%struct.TYPE_18__*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
