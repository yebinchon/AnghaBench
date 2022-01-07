; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_caam_algapi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_caam_algapi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.caam_drv_private = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.caam_skcipher_alg = type { i32, %struct.TYPE_17__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.caam_aead_alg = type { i32, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@CHA_ID_LS_AES_MASK = common dso_local global i32 0, align 4
@CHA_ID_LS_MD_MASK = common dso_local global i32 0, align 4
@CHA_ID_LS_MD_SHIFT = common dso_local global i32 0, align 4
@CHA_ID_LS_DES_MASK = common dso_local global i32 0, align 4
@CHA_ID_LS_DES_SHIFT = common dso_local global i32 0, align 4
@CHA_ID_LS_ARC4_MASK = common dso_local global i32 0, align 4
@CHA_ID_LS_ARC4_SHIFT = common dso_local global i32 0, align 4
@CHA_VER_VID_AES_LP = common dso_local global i32 0, align 4
@CHA_VER_VID_MASK = common dso_local global i32 0, align 4
@CHA_VER_VID_SHIFT = common dso_local global i32 0, align 4
@CHA_VER_NUM_MASK = common dso_local global i32 0, align 4
@CHA_VER_MISC_AES_GCM = common dso_local global i32 0, align 4
@CHA_VER_VID_MD_LP256 = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@driver_algs = common dso_local global i8* null, align 8
@OP_ALG_ALGSEL_MASK = common dso_local global i32 0, align 4
@OP_ALG_ALGSEL_3DES = common dso_local global i32 0, align 4
@OP_ALG_ALGSEL_DES = common dso_local global i32 0, align 4
@OP_ALG_ALGSEL_AES = common dso_local global i32 0, align 4
@OP_ALG_ALGSEL_ARC4 = common dso_local global i32 0, align 4
@OP_ALG_AAI_MASK = common dso_local global i32 0, align 4
@OP_ALG_AAI_XTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@driver_aeads = common dso_local global i8* null, align 8
@OP_ALG_ALGSEL_CHACHA20 = common dso_local global i32 0, align 4
@OP_ALG_ALGSEL_POLY1305 = common dso_local global i32 0, align 4
@OP_ALG_AAI_GCM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"caam algorithms registered in /proc/crypto\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caam_algapi_init(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.caam_drv_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.caam_skcipher_alg*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.caam_aead_alg*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %28 = load %struct.device*, %struct.device** %2, align 8
  %29 = call %struct.caam_drv_private* @dev_get_drvdata(%struct.device* %28)
  store %struct.caam_drv_private* %29, %struct.caam_drv_private** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %30 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %31 = load %struct.caam_drv_private*, %struct.caam_drv_private** %3, align 8
  %32 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %35, label %92

35:                                               ; preds = %1
  %36 = load %struct.caam_drv_private*, %struct.caam_drv_private** %3, align 8
  %37 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = call i32 @rd_reg32(i32* %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* @CHA_ID_LS_AES_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @CHA_ID_LS_MD_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @CHA_ID_LS_MD_SHIFT, align 4
  %49 = ashr i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.caam_drv_private*, %struct.caam_drv_private** %3, align 8
  %51 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = call i32 @rd_reg32(i32* %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* @CHA_ID_LS_DES_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @CHA_ID_LS_DES_SHIFT, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* @CHA_ID_LS_AES_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* @CHA_ID_LS_MD_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @CHA_ID_LS_MD_SHIFT, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* @CHA_ID_LS_ARC4_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @CHA_ID_LS_ARC4_SHIFT, align 4
  %73 = ashr i32 %71, %72
  store i32 %73, i32* %13, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %74 = load %struct.caam_drv_private*, %struct.caam_drv_private** %3, align 8
  %75 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = call i32 @rd_reg32(i32* %78)
  %80 = load i32, i32* @CHA_ID_LS_AES_MASK, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @CHA_VER_VID_AES_LP, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %35
  %86 = load i32, i32* %19, align 4
  %87 = icmp slt i32 %86, 8
  br label %88

88:                                               ; preds = %85, %35
  %89 = phi i1 [ false, %35 ], [ %87, %85 ]
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %16, align 4
  br label %156

92:                                               ; preds = %1
  %93 = load %struct.caam_drv_private*, %struct.caam_drv_private** %3, align 8
  %94 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 5
  %98 = call i32 @rd_reg32(i32* %97)
  store i32 %98, i32* %20, align 4
  %99 = load %struct.caam_drv_private*, %struct.caam_drv_private** %3, align 8
  %100 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %99, i32 0, i32 1
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  %104 = call i32 @rd_reg32(i32* %103)
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* @CHA_VER_VID_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @CHA_VER_VID_SHIFT, align 4
  %109 = ashr i32 %107, %108
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* @CHA_VER_VID_MASK, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @CHA_VER_VID_SHIFT, align 4
  %114 = ashr i32 %112, %113
  store i32 %114, i32* %9, align 4
  %115 = load %struct.caam_drv_private*, %struct.caam_drv_private** %3, align 8
  %116 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = call i32 @rd_reg32(i32* %119)
  %121 = load i32, i32* @CHA_VER_NUM_MASK, align 4
  %122 = and i32 %120, %121
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* @CHA_VER_NUM_MASK, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* @CHA_VER_NUM_MASK, align 4
  %128 = and i32 %126, %127
  store i32 %128, i32* %10, align 4
  %129 = load %struct.caam_drv_private*, %struct.caam_drv_private** %3, align 8
  %130 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = call i32 @rd_reg32(i32* %133)
  %135 = load i32, i32* @CHA_VER_NUM_MASK, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %11, align 4
  %137 = load %struct.caam_drv_private*, %struct.caam_drv_private** %3, align 8
  %138 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = call i32 @rd_reg32(i32* %141)
  %143 = load i32, i32* @CHA_VER_NUM_MASK, align 4
  %144 = and i32 %142, %143
  store i32 %144, i32* %12, align 4
  %145 = load %struct.caam_drv_private*, %struct.caam_drv_private** %3, align 8
  %146 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = call i32 @rd_reg32(i32* %149)
  %151 = load i32, i32* @CHA_VER_NUM_MASK, align 4
  %152 = and i32 %150, %151
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* @CHA_VER_MISC_AES_GCM, align 4
  %155 = and i32 %153, %154
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %92, %88
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @CHA_VER_VID_MD_LP256, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %163, %159, %156
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %242, %165
  %167 = load i32, i32* %4, align 4
  %168 = load i8*, i8** @driver_algs, align 8
  %169 = call i32 @ARRAY_SIZE(i8* %168)
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %245

171:                                              ; preds = %166
  %172 = load i8*, i8** @driver_algs, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr i8, i8* %172, i64 %174
  %176 = bitcast i8* %175 to %struct.caam_skcipher_alg*
  store %struct.caam_skcipher_alg* %176, %struct.caam_skcipher_alg** %22, align 8
  %177 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %22, align 8
  %178 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @OP_ALG_ALGSEL_MASK, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %23, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %171
  %186 = load i32, i32* %23, align 4
  %187 = load i32, i32* @OP_ALG_ALGSEL_3DES, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %23, align 4
  %191 = load i32, i32* @OP_ALG_ALGSEL_DES, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %189, %185
  br label %242

194:                                              ; preds = %189, %171
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %23, align 4
  %199 = load i32, i32* @OP_ALG_ALGSEL_AES, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  br label %242

202:                                              ; preds = %197, %194
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %23, align 4
  %207 = load i32, i32* @OP_ALG_ALGSEL_ARC4, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %242

210:                                              ; preds = %205, %202
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @CHA_VER_VID_AES_LP, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %210
  %215 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %22, align 8
  %216 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @OP_ALG_AAI_MASK, align 4
  %220 = and i32 %218, %219
  %221 = load i32, i32* @OP_ALG_AAI_XTS, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %214
  br label %242

224:                                              ; preds = %214, %210
  %225 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %22, align 8
  %226 = call i32 @caam_skcipher_alg_init(%struct.caam_skcipher_alg* %225)
  %227 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %22, align 8
  %228 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %227, i32 0, i32 1
  %229 = call i32 @crypto_register_skcipher(%struct.TYPE_17__* %228)
  store i32 %229, i32* %5, align 4
  %230 = load i32, i32* %5, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %224
  %233 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %22, align 8
  %234 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %237)
  br label %242

239:                                              ; preds = %224
  %240 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %22, align 8
  %241 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %240, i32 0, i32 0
  store i32 1, i32* %241, align 4
  store i32 1, i32* %15, align 4
  br label %242

242:                                              ; preds = %239, %232, %223, %209, %201, %193
  %243 = load i32, i32* %4, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %4, align 4
  br label %166

245:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %246

246:                                              ; preds = %355, %245
  %247 = load i32, i32* %4, align 4
  %248 = load i8*, i8** @driver_aeads, align 8
  %249 = call i32 @ARRAY_SIZE(i8* %248)
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %251, label %358

251:                                              ; preds = %246
  %252 = load i8*, i8** @driver_aeads, align 8
  %253 = load i32, i32* %4, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr i8, i8* %252, i64 %254
  %256 = bitcast i8* %255 to %struct.caam_aead_alg*
  store %struct.caam_aead_alg* %256, %struct.caam_aead_alg** %24, align 8
  %257 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %24, align 8
  %258 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @OP_ALG_ALGSEL_MASK, align 4
  %262 = and i32 %260, %261
  store i32 %262, i32* %25, align 4
  %263 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %24, align 8
  %264 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @OP_ALG_ALGSEL_MASK, align 4
  %268 = and i32 %266, %267
  store i32 %268, i32* %26, align 4
  %269 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %24, align 8
  %270 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @OP_ALG_AAI_MASK, align 4
  %274 = and i32 %272, %273
  store i32 %274, i32* %27, align 4
  %275 = load i32, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %286, label %277

277:                                              ; preds = %251
  %278 = load i32, i32* %25, align 4
  %279 = load i32, i32* @OP_ALG_ALGSEL_3DES, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %285, label %281

281:                                              ; preds = %277
  %282 = load i32, i32* %25, align 4
  %283 = load i32, i32* @OP_ALG_ALGSEL_DES, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %281, %277
  br label %355

286:                                              ; preds = %281, %251
  %287 = load i32, i32* %7, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = load i32, i32* %25, align 4
  %291 = load i32, i32* @OP_ALG_ALGSEL_AES, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  br label %355

294:                                              ; preds = %289, %286
  %295 = load i32, i32* %25, align 4
  %296 = load i32, i32* @OP_ALG_ALGSEL_CHACHA20, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = load i32, i32* %11, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %298
  br label %355

302:                                              ; preds = %298, %294
  %303 = load i32, i32* %26, align 4
  %304 = load i32, i32* @OP_ALG_ALGSEL_POLY1305, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %310

306:                                              ; preds = %302
  %307 = load i32, i32* %12, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %306
  br label %355

310:                                              ; preds = %306, %302
  %311 = load i32, i32* %25, align 4
  %312 = load i32, i32* @OP_ALG_ALGSEL_AES, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %322

314:                                              ; preds = %310
  %315 = load i32, i32* %27, align 4
  %316 = load i32, i32* @OP_ALG_AAI_GCM, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %314
  %319 = load i32, i32* %16, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %318
  br label %355

322:                                              ; preds = %318, %314, %310
  %323 = load i32, i32* %26, align 4
  %324 = call i64 @is_mdha(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %337

326:                                              ; preds = %322
  %327 = load i32, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %326
  %330 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %24, align 8
  %331 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %14, align 4
  %335 = icmp ugt i32 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %329, %326
  br label %355

337:                                              ; preds = %329, %322
  %338 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %24, align 8
  %339 = call i32 @caam_aead_alg_init(%struct.caam_aead_alg* %338)
  %340 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %24, align 8
  %341 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %340, i32 0, i32 1
  %342 = call i32 @crypto_register_aead(%struct.TYPE_18__* %341)
  store i32 %342, i32* %5, align 4
  %343 = load i32, i32* %5, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %337
  %346 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %24, align 8
  %347 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %350)
  br label %355

352:                                              ; preds = %337
  %353 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %24, align 8
  %354 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %353, i32 0, i32 0
  store i32 1, i32* %354, align 4
  store i32 1, i32* %15, align 4
  br label %355

355:                                              ; preds = %352, %345, %336, %321, %309, %301, %293, %285
  %356 = load i32, i32* %4, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %4, align 4
  br label %246

358:                                              ; preds = %246
  %359 = load i32, i32* %15, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %358
  %362 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %363

363:                                              ; preds = %361, %358
  %364 = load i32, i32* %5, align 4
  ret i32 %364
}

declare dso_local %struct.caam_drv_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rd_reg32(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @caam_skcipher_alg_init(%struct.caam_skcipher_alg*) #1

declare dso_local i32 @crypto_register_skcipher(%struct.TYPE_17__*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i64 @is_mdha(i32) #1

declare dso_local i32 @caam_aead_alg_init(%struct.caam_aead_alg*) #1

declare dso_local i32 @crypto_register_aead(%struct.TYPE_18__*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
