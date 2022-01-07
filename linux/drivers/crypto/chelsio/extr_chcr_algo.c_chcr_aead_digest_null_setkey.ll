; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_digest_null_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_digest_null_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32, i32, i32, i32, %struct.crypto_aead* }
%struct.chcr_authenc_ctx = type { i32, i32 }
%struct.crypto_authenc_keys = type { i64, i64 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_CTR_SHA = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_CTR_NULL = common dso_local global i32 0, align 4
@CTR_RFC3686_NONCE_SIZE = common dso_local global i64 0, align 8
@AES_KEYSIZE_128 = common dso_local global i64 0, align 8
@CHCR_KEYCTX_CIPHER_KEY_SIZE_128 = common dso_local global i8 0, align 1
@AES_KEYSIZE_192 = common dso_local global i64 0, align 8
@CHCR_KEYCTX_CIPHER_KEY_SIZE_192 = common dso_local global i8 0, align 1
@AES_KEYSIZE_256 = common dso_local global i64 0, align 8
@CHCR_KEYCTX_CIPHER_KEY_SIZE_256 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [34 x i8] c"chcr : Unsupported cipher key %d\0A\00", align 1
@CRYPTO_ALG_SUB_TYPE_CBC_SHA = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_CBC_NULL = common dso_local global i32 0, align 4
@CHCR_KEYCTX_NO_KEY = common dso_local global i32 0, align 4
@CHCR_SCMD_AUTH_MODE_NOP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @chcr_aead_digest_null_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_aead_digest_null_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.chcr_aead_ctx*, align 8
  %9 = alloca %struct.chcr_authenc_ctx*, align 8
  %10 = alloca %struct.crypto_authenc_keys, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %16 = call i32 @a_ctx(%struct.crypto_aead* %15)
  %17 = call %struct.chcr_aead_ctx* @AEAD_CTX(i32 %16)
  store %struct.chcr_aead_ctx* %17, %struct.chcr_aead_ctx** %8, align 8
  %18 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %19 = call %struct.chcr_authenc_ctx* @AUTHENC_CTX(%struct.chcr_aead_ctx* %18)
  store %struct.chcr_authenc_ctx* %19, %struct.chcr_authenc_ctx** %9, align 8
  store i32 0, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %20 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %20, i32 0, i32 4
  %22 = load %struct.crypto_aead*, %struct.crypto_aead** %21, align 8
  %23 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %24 = call i32 @crypto_aead_clear_flags(%struct.crypto_aead* %22, i32 %23)
  %25 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %25, i32 0, i32 4
  %27 = load %struct.crypto_aead*, %struct.crypto_aead** %26, align 8
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %29 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %28)
  %30 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %27, i32 %31)
  %33 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %33, i32 0, i32 4
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %35, i32* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %40 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %41 = call i32 @crypto_aead_clear_flags(%struct.crypto_aead* %39, i32 %40)
  %42 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %43 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %43, i32 0, i32 4
  %45 = load %struct.crypto_aead*, %struct.crypto_aead** %44, align 8
  %46 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %45)
  %47 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %42, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %3
  br label %174

53:                                               ; preds = %3
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %10, i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %60 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %61 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %59, i32 %60)
  br label %174

62:                                               ; preds = %53
  %63 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %64 = call i32 @get_aead_subtype(%struct.crypto_aead* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CTR_SHA, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CTR_NULL, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %68, %62
  %73 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CTR_RFC3686_NONCE_SIZE, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %174

78:                                               ; preds = %72
  %79 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CTR_RFC3686_NONCE_SIZE, align 8
  %87 = sub nsw i64 %85, %86
  %88 = add nsw i64 %83, %87
  %89 = load i64, i64* @CTR_RFC3686_NONCE_SIZE, align 8
  %90 = call i32 @memcpy(i32 %81, i64 %88, i64 %89)
  %91 = load i64, i64* @CTR_RFC3686_NONCE_SIZE, align 8
  %92 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, %91
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %78, %68
  %96 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AES_KEYSIZE_128, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i8, i8* @CHCR_KEYCTX_CIPHER_KEY_SIZE_128, align 1
  store i8 %101, i8* %14, align 1
  br label %122

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @AES_KEYSIZE_192, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i8, i8* @CHCR_KEYCTX_CIPHER_KEY_SIZE_192, align 1
  store i8 %108, i8* %14, align 1
  br label %121

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @AES_KEYSIZE_256, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i8, i8* @CHCR_KEYCTX_CIPHER_KEY_SIZE_256, align 1
  store i8 %115, i8* %14, align 1
  br label %120

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %118)
  br label %174

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %107
  br label %122

122:                                              ; preds = %121, %100
  %123 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %124 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @memcpy(i32 %125, i64 %127, i64 %129)
  %131 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %135 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CBC_SHA, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %122
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CBC_NULL, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %139, %122
  %144 = load %struct.chcr_authenc_ctx*, %struct.chcr_authenc_ctx** %9, align 8
  %145 = getelementptr inbounds %struct.chcr_authenc_ctx, %struct.chcr_authenc_ctx* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %148 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %151 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = shl i32 %152, 3
  %154 = call i32 @get_aes_decrypt_key(i32 %146, i32 %149, i32 %153)
  br label %155

155:                                              ; preds = %143, %139
  %156 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @roundup(i32 %158, i32 16)
  %160 = sext i32 %159 to i64
  %161 = add i64 4, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %13, align 4
  %163 = load i8, i8* %14, align 1
  %164 = load i32, i32* @CHCR_KEYCTX_NO_KEY, align 4
  %165 = load i32, i32* %13, align 4
  %166 = ashr i32 %165, 4
  %167 = call i32 @FILL_KEY_CTX_HDR(i8 zeroext %163, i32 %164, i32 0, i32 0, i32 %166)
  %168 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %169 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @CHCR_SCMD_AUTH_MODE_NOP, align 4
  %171 = load %struct.chcr_authenc_ctx*, %struct.chcr_authenc_ctx** %9, align 8
  %172 = getelementptr inbounds %struct.chcr_authenc_ctx, %struct.chcr_authenc_ctx* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %10, i32 16)
  store i32 0, i32* %4, align 4
  br label %180

174:                                              ; preds = %116, %77, %58, %52
  %175 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %8, align 8
  %176 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %175, i32 0, i32 0
  store i32 0, i32* %176, align 8
  %177 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %10, i32 16)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %174, %155
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(i32) #1

declare dso_local i32 @a_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.chcr_authenc_ctx* @AUTHENC_CTX(%struct.chcr_aead_ctx*) #1

declare dso_local i32 @crypto_aead_clear_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i32*, i32) #1

declare dso_local i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys*, i32*, i32) #1

declare dso_local i32 @get_aead_subtype(%struct.crypto_aead*) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @get_aes_decrypt_key(i32, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @FILL_KEY_CTX_HDR(i8 zeroext, i32, i32, i32, i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_authenc_keys*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
