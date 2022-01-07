; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_cipher_sethkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_cipher_sethkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.cc_cipher_ctx = type { i32, i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.device = type { i32 }
%struct.cc_hkey_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Setting HW key in context @%p for %s. keylen=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Unsupported protected key size %d.\0A\00", align 1
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported key size %d.\0A\00", align 1
@S_DIN_to_SM4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Only AES HW protected keys are supported\0A\00", align 1
@END_OF_KEYS = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"Unsupported hw key1 number (%d)\0A\00", align 1
@DRV_CIPHER_XTS = common dso_local global i32 0, align 4
@DRV_CIPHER_ESSIV = common dso_local global i32 0, align 4
@DRV_CIPHER_BITLOCKER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Illegal hw key numbers (%d,%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Unsupported hw key2 number (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"HW protected key  %d/%d set\0A.\00", align 1
@CC_HW_REV_713 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"CPP keys not supported in this hardware revision.\0A\00", align 1
@DRV_CIPHER_CBC = common dso_local global i32 0, align 4
@DRV_CIPHER_CTR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"CPP keys only supported in CBC or CTR modes.\0A\00", align 1
@S_DIN_to_AES = common dso_local global i32 0, align 4
@CC_CPP_AES = common dso_local global i8* null, align 8
@CC_CPP_SM4 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [40 x i8] c"policy protected key alg: %d slot: %d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Unsupported protected key (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @cc_cipher_sethkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_cipher_sethkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.cc_cipher_ctx*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.cc_hkey_info, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %13 = call %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher* %12)
  store %struct.crypto_tfm* %13, %struct.crypto_tfm** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %15 = call %struct.cc_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.cc_cipher_ctx* %15, %struct.cc_cipher_ctx** %9, align 8
  %16 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %17 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %16, i32 0, i32 5
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = call %struct.device* @drvdata_to_dev(%struct.TYPE_6__* %18)
  store %struct.device* %19, %struct.device** %10, align 8
  %20 = load %struct.device*, %struct.device** %10, align 8
  %21 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %22 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %23 = call i32 @crypto_tfm_alg_name(%struct.crypto_tfm* %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (%struct.device*, i8*, %struct.cc_cipher_ctx*, i8*, ...) @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.cc_cipher_ctx* %21, i8* %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dump_byte_array(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = icmp ne i64 %32, 12
  br i1 %33, label %34, label %43

34:                                               ; preds = %3
  %35 = load %struct.device*, %struct.device** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %39 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %40 = call i32 @crypto_tfm_set_flags(%struct.crypto_tfm* %38, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %242

43:                                               ; preds = %3
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @memcpy(%struct.cc_hkey_info* %11, i32* %44, i32 %45)
  %47 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @validate_keys_sizes(%struct.cc_cipher_ctx* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load %struct.device*, %struct.device** %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %58 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %59 = call i32 @crypto_tfm_set_flags(%struct.crypto_tfm* %57, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %242

62:                                               ; preds = %43
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %65 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cc_slot_to_key_type(i32 %67)
  switch i32 %68, label %234 [
    i32 129, label %69
    i32 128, label %168
  ]

69:                                               ; preds = %62
  %70 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @S_DIN_to_SM4, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.device*, %struct.device** %10, align 8
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %242

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cc_slot_to_hw_key(i32 %82)
  %84 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %85 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %88 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** @END_OF_KEYS, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %80
  %94 = load %struct.device*, %struct.device** %10, align 8
  %95 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %242

100:                                              ; preds = %80
  %101 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %102 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @DRV_CIPHER_XTS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %118, label %106

106:                                              ; preds = %100
  %107 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %108 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DRV_CIPHER_ESSIV, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %114 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DRV_CIPHER_BITLOCKER, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %154

118:                                              ; preds = %112, %106, %100
  %119 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load %struct.device*, %struct.device** %10, align 8
  %126 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %127, i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %242

133:                                              ; preds = %118
  %134 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @cc_slot_to_hw_key(i32 %135)
  %137 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %138 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i8* %136, i8** %139, align 8
  %140 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %141 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** @END_OF_KEYS, align 8
  %145 = icmp eq i8* %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %133
  %147 = load %struct.device*, %struct.device** %10, align 8
  %148 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %242

153:                                              ; preds = %133
  br label %154

154:                                              ; preds = %153, %112
  %155 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %156 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %155, i32 0, i32 1
  store i32 129, i32* %156, align 4
  %157 = load %struct.device*, %struct.device** %10, align 8
  %158 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %159 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = bitcast i8* %161 to %struct.cc_cipher_ctx*
  %163 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %164 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (%struct.device*, i8*, %struct.cc_cipher_ctx*, i8*, ...) @dev_dbg(%struct.device* %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), %struct.cc_cipher_ctx* %162, i8* %166)
  br label %241

168:                                              ; preds = %62
  %169 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %170 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %169, i32 0, i32 5
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @CC_HW_REV_713, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %168
  %177 = load %struct.device*, %struct.device** %10, align 8
  %178 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %177, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %242

181:                                              ; preds = %168
  %182 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %183 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @DRV_CIPHER_CBC, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %198

187:                                              ; preds = %181
  %188 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %189 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @DRV_CIPHER_CTR, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %187
  %194 = load %struct.device*, %struct.device** %10, align 8
  %195 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %194, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %4, align 4
  br label %242

198:                                              ; preds = %187, %181
  %199 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @cc_slot_to_cpp_key(i32 %200)
  %202 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %203 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  store i8* %201, i8** %204, align 8
  %205 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %206 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @S_DIN_to_AES, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %198
  %211 = load i8*, i8** @CC_CPP_AES, align 8
  %212 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %213 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  store i8* %211, i8** %214, align 8
  br label %220

215:                                              ; preds = %198
  %216 = load i8*, i8** @CC_CPP_SM4, align 8
  %217 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %218 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  store i8* %216, i8** %219, align 8
  br label %220

220:                                              ; preds = %215, %210
  %221 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %222 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %221, i32 0, i32 1
  store i32 128, i32* %222, align 4
  %223 = load %struct.device*, %struct.device** %10, align 8
  %224 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %225 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = bitcast i8* %227 to %struct.cc_cipher_ctx*
  %229 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %9, align 8
  %230 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 (%struct.device*, i8*, %struct.cc_cipher_ctx*, i8*, ...) @dev_dbg(%struct.device* %223, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), %struct.cc_cipher_ctx* %228, i8* %232)
  br label %241

234:                                              ; preds = %62
  %235 = load %struct.device*, %struct.device** %10, align 8
  %236 = getelementptr inbounds %struct.cc_hkey_info, %struct.cc_hkey_info* %11, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %235, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %4, align 4
  br label %242

241:                                              ; preds = %220, %154
  store i32 0, i32* %4, align 4
  br label %242

242:                                              ; preds = %241, %234, %193, %176, %146, %124, %93, %75, %53, %34
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher*) #1

declare dso_local %struct.cc_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.device* @drvdata_to_dev(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.cc_cipher_ctx*, i8*, ...) #1

declare dso_local i32 @crypto_tfm_alg_name(%struct.crypto_tfm*) #1

declare dso_local i32 @dump_byte_array(i8*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @crypto_tfm_set_flags(%struct.crypto_tfm*, i32) #1

declare dso_local i32 @memcpy(%struct.cc_hkey_info*, i32*, i32) #1

declare dso_local i64 @validate_keys_sizes(%struct.cc_cipher_ctx*, i32) #1

declare dso_local i32 @cc_slot_to_key_type(i32) #1

declare dso_local i8* @cc_slot_to_hw_key(i32) #1

declare dso_local i8* @cc_slot_to_cpp_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
