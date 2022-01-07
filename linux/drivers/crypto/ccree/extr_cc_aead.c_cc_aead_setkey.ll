; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_aead_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_aead_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.cc_aead_ctx = type { i32, i32, i32, i64, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cc_crypto_req = type { i32 }
%struct.device = type { i32 }
%struct.crypto_authenc_keys = type { i32, i32, i32*, i32* }
%struct.cc_hw_desc = type { i32 }

@MAX_AEAD_SETKEY_SEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Setting key in context @%p for %s. key=%p keylen=%u\0A\00", align 1
@DRV_CIPHER_CTR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AES_MIN_KEY_SIZE = common dso_local global i32 0, align 4
@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@CC_AES_KEY_SIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported authenc (%d)\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"send_request() failed (rc=%d)\0A\00", align 1
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @cc_aead_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_aead_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cc_aead_ctx*, align 8
  %9 = alloca %struct.cc_crypto_req, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.crypto_authenc_keys, align 8
  %18 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %20 = call %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %19)
  store %struct.cc_aead_ctx* %20, %struct.cc_aead_ctx** %8, align 8
  %21 = bitcast %struct.cc_crypto_req* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = load i32, i32* @MAX_AEAD_SETKEY_SEQ, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca %struct.cc_hw_desc, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %26 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.device* @drvdata_to_dev(i32 %28)
  store %struct.device* %29, %struct.device** %13, align 8
  %30 = load %struct.device*, %struct.device** %13, align 8
  %31 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %33 = call i32 @crypto_aead_tfm(%struct.crypto_aead* %32)
  %34 = call i32 @crypto_tfm_alg_name(i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.cc_aead_ctx* %31, i32 %34, i32* %35, i32 %36)
  %38 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 131
  br i1 %41, label %42, label %100

42:                                               ; preds = %3
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %17, i32* %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %204

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %17, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %14, align 8
  %52 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %17, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %15, align 8
  %54 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %17, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %17, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DRV_CIPHER_CTR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %99

67:                                               ; preds = %49
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %16, align 4
  %70 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AES_MIN_KEY_SIZE, align 4
  %74 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %204

78:                                               ; preds = %67
  %79 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %89 = sext i32 %88 to i64
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %93 = call i32 @memcpy(i32 %81, i32* %91, i32 %92)
  %94 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %95 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %96 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %78, %49
  br label %107

100:                                              ; preds = %3
  %101 = load i32*, i32** %6, align 8
  store i32* %101, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %104 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %106 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %105, i32 0, i32 2
  store i32 0, i32* %106, align 8
  br label %107

107:                                              ; preds = %100, %99
  %108 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %109 = call i32 @validate_keys_sizes(%struct.cc_aead_ctx* %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %204

113:                                              ; preds = %107
  %114 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %115 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %119 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @memcpy(i32 %116, i32* %117, i32 %120)
  %122 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %123 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 24
  br i1 %125, label %126, label %134

126:                                              ; preds = %113
  %127 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %128 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 24
  %131 = load i64, i64* @CC_AES_KEY_SIZE_MAX, align 8
  %132 = sub nsw i64 %131, 24
  %133 = call i32 @memset(i32 %130, i32 0, i64 %132)
  br label %134

134:                                              ; preds = %126, %113
  %135 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %136 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 128
  br i1 %138, label %139, label %150

139:                                              ; preds = %134
  %140 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %141 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %15, align 8
  %146 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %147 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @memcpy(i32 %144, i32* %145, i32 %148)
  br label %167

150:                                              ; preds = %134
  %151 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %152 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 131
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %159 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @cc_get_plain_hmac_key(%struct.crypto_aead* %156, i32* %157, i32 %160)
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %204

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165, %150
  br label %167

167:                                              ; preds = %166, %139
  %168 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %169 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  switch i32 %170, label %178 [
    i32 130, label %171
    i32 129, label %171
    i32 128, label %174
    i32 131, label %177
  ]

171:                                              ; preds = %167, %167
  %172 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %173 = call i32 @hmac_setkey(%struct.cc_hw_desc* %25, %struct.cc_aead_ctx* %172)
  store i32 %173, i32* %12, align 4
  br label %186

174:                                              ; preds = %167
  %175 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %176 = call i32 @xcbc_setkey(%struct.cc_hw_desc* %25, %struct.cc_aead_ctx* %175)
  store i32 %176, i32* %12, align 4
  br label %186

177:                                              ; preds = %167
  br label %186

178:                                              ; preds = %167
  %179 = load %struct.device*, %struct.device** %13, align 8
  %180 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %181 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @dev_err(%struct.device* %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @ENOTSUPP, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %16, align 4
  br label %204

186:                                              ; preds = %177, %174, %171
  %187 = load i32, i32* %12, align 4
  %188 = icmp ugt i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %186
  %190 = load %struct.cc_aead_ctx*, %struct.cc_aead_ctx** %8, align 8
  %191 = getelementptr inbounds %struct.cc_aead_ctx, %struct.cc_aead_ctx* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @cc_send_sync_request(i32 %192, %struct.cc_crypto_req* %9, %struct.cc_hw_desc* %25, i32 %193)
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = load %struct.device*, %struct.device** %13, align 8
  %199 = load i32, i32* %16, align 4
  %200 = call i32 @dev_err(%struct.device* %198, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %199)
  br label %208

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201, %186
  %203 = load i32, i32* %16, align 4
  store i32 %203, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %210

204:                                              ; preds = %178, %164, %112, %77, %48
  %205 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %206 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %207 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %205, i32 %206)
  br label %208

208:                                              ; preds = %204, %197
  %209 = load i32, i32* %16, align 4
  store i32 %209, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %210

210:                                              ; preds = %208, %202
  %211 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %211)
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.cc_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.cc_aead_ctx*, i32, i32*, i32) #1

declare dso_local i32 @crypto_tfm_alg_name(i32) #1

declare dso_local i32 @crypto_aead_tfm(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @validate_keys_sizes(%struct.cc_aead_ctx*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @cc_get_plain_hmac_key(%struct.crypto_aead*, i32*, i32) #1

declare dso_local i32 @hmac_setkey(%struct.cc_hw_desc*, %struct.cc_aead_ctx*) #1

declare dso_local i32 @xcbc_setkey(%struct.cc_hw_desc*, %struct.cc_aead_ctx*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @cc_send_sync_request(i32, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
