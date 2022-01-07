; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_aead_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_aead_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.safexcel_cipher_ctx = type { i64, i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_2__, i32, %struct.safexcel_crypto_priv* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.safexcel_crypto_priv = type { i32, i32 }
%struct.safexcel_ahash_export_state = type { i64 }
%struct.crypto_authenc_keys = type { i64, i64, i32, i32 }
%struct.crypto_aes_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD = common dso_local global i64 0, align 8
@AES_MIN_KEY_SIZE = common dso_local global i64 0, align 8
@CTR_RFC3686_NONCE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"aead: unsupported cipher algorithm\0A\00", align 1
@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"safexcel-sha1\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"safexcel-sha224\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"safexcel-sha256\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"safexcel-sha384\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"safexcel-sha512\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"aead: unsupported hash algorithm\0A\00", align 1
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @safexcel_aead_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_aead_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.safexcel_cipher_ctx*, align 8
  %10 = alloca %struct.safexcel_ahash_export_state, align 8
  %11 = alloca %struct.safexcel_ahash_export_state, align 8
  %12 = alloca %struct.safexcel_crypto_priv*, align 8
  %13 = alloca %struct.crypto_authenc_keys, align 8
  %14 = alloca %struct.crypto_aes_ctx, align 4
  %15 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %17 = call %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead* %16)
  store %struct.crypto_tfm* %17, %struct.crypto_tfm** %8, align 8
  %18 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %19 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %18)
  store %struct.safexcel_cipher_ctx* %19, %struct.safexcel_cipher_ctx** %9, align 8
  %20 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %21 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %20, i32 0, i32 10
  %22 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %21, align 8
  store %struct.safexcel_crypto_priv* %22, %struct.safexcel_crypto_priv** %12, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %13, i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %249

30:                                               ; preds = %3
  %31 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AES_MIN_KEY_SIZE, align 8
  %40 = load i64, i64* @CTR_RFC3686_NONCE_SIZE, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %249

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %46, %48
  %50 = load i64, i64* @CTR_RFC3686_NONCE_SIZE, align 8
  %51 = sub nsw i64 %49, %50
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* @CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD, align 8
  %57 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, %56
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %44, %30
  %61 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %62 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %87 [
    i32 129, label %64
    i32 128, label %76
  ]

64:                                               ; preds = %60
  %65 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %66 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @verify_aead_des3_key(%struct.crypto_aead* %65, i64 %67, i64 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @unlikely(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %253

75:                                               ; preds = %64
  br label %92

76:                                               ; preds = %60
  %77 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %14, i64 %78, i64 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @unlikely(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %249

86:                                               ; preds = %76
  br label %92

87:                                               ; preds = %60
  %88 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %12, align 8
  %89 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %249

92:                                               ; preds = %86, %75
  %93 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %12, align 8
  %94 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %92
  %100 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %101 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %107 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @memcmp(i32 %108, i64 %110, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %105
  %116 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %117 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %105, %99, %92
  %120 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %121 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %168 [
    i32 134, label %123
    i32 133, label %132
    i32 132, label %141
    i32 131, label %150
    i32 130, label %159
  ]

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @safexcel_hmac_setkey(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %127, %struct.safexcel_ahash_export_state* %10, %struct.safexcel_ahash_export_state* %11)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %249

131:                                              ; preds = %123
  br label %173

132:                                              ; preds = %119
  %133 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @safexcel_hmac_setkey(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %134, i32 %136, %struct.safexcel_ahash_export_state* %10, %struct.safexcel_ahash_export_state* %11)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %249

140:                                              ; preds = %132
  br label %173

141:                                              ; preds = %119
  %142 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @safexcel_hmac_setkey(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %143, i32 %145, %struct.safexcel_ahash_export_state* %10, %struct.safexcel_ahash_export_state* %11)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %249

149:                                              ; preds = %141
  br label %173

150:                                              ; preds = %119
  %151 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @safexcel_hmac_setkey(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %154, %struct.safexcel_ahash_export_state* %10, %struct.safexcel_ahash_export_state* %11)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %249

158:                                              ; preds = %150
  br label %173

159:                                              ; preds = %119
  %160 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @safexcel_hmac_setkey(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %161, i32 %163, %struct.safexcel_ahash_export_state* %10, %struct.safexcel_ahash_export_state* %11)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %249

167:                                              ; preds = %159
  br label %173

168:                                              ; preds = %119
  %169 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %12, align 8
  %170 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dev_err(i32 %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %249

173:                                              ; preds = %167, %158, %149, %140, %131
  %174 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %175 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %176 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %175)
  %177 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %178 = and i32 %176, %177
  %179 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %174, i32 %178)
  %180 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %12, align 8
  %181 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %218

186:                                              ; preds = %173
  %187 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %188 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %187, i32 0, i32 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %218

192:                                              ; preds = %186
  %193 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %194 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.safexcel_ahash_export_state, %struct.safexcel_ahash_export_state* %10, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %199 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = call i64 @memcmp(i32 %195, i64 %197, i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %214, label %203

203:                                              ; preds = %192
  %204 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %205 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  %207 = getelementptr inbounds %struct.safexcel_ahash_export_state, %struct.safexcel_ahash_export_state* %11, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %210 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = call i64 @memcmp(i32 %206, i64 %208, i64 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %203, %192
  %215 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %216 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %215, i32 0, i32 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  store i32 1, i32* %217, align 8
  br label %218

218:                                              ; preds = %214, %203, %186, %173
  %219 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %220 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 8
  %222 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = inttoptr i64 %223 to i64*
  %225 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @memcpy(i32 %221, i64* %224, i64 %226)
  %228 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %13, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %231 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %230, i32 0, i32 4
  store i64 %229, i64* %231, align 8
  %232 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %233 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.safexcel_ahash_export_state, %struct.safexcel_ahash_export_state* %10, i32 0, i32 0
  %236 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %237 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @memcpy(i32 %234, i64* %235, i64 %238)
  %240 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %241 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = getelementptr inbounds %struct.safexcel_ahash_export_state, %struct.safexcel_ahash_export_state* %11, i32 0, i32 0
  %244 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %9, align 8
  %245 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @memcpy(i32 %242, i64* %243, i64 %246)
  %248 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %13, i32 24)
  store i32 0, i32* %4, align 4
  br label %256

249:                                              ; preds = %168, %166, %157, %148, %139, %130, %87, %85, %43, %29
  %250 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %251 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %252 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %250, i32 %251)
  br label %253

253:                                              ; preds = %249, %74
  %254 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %13, i32 24)
  %255 = load i32, i32* %15, align 4
  store i32 %255, i32* %4, align 4
  br label %256

256:                                              ; preds = %253, %218
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead*) #1

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys*, i32*, i32) #1

declare dso_local i32 @verify_aead_des3_key(%struct.crypto_aead*, i64, i64) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @memcmp(i32, i64, i64) #1

declare dso_local i32 @safexcel_hmac_setkey(i8*, i32, i32, %struct.safexcel_ahash_export_state*, %struct.safexcel_ahash_export_state*) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_authenc_keys*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
