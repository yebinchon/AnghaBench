; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_gcm_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_gcm_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32, i32, i32, i32, %struct.crypto_aead* }
%struct.chcr_gcm_ctx = type { i32 }
%struct.crypto_aes_ctx = type { i32 }
%struct.crypto_tfm = type { i32 }

@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106 = common dso_local global i64 0, align 8
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"GCM: Invalid key length %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AEAD_H_SIZE = common dso_local global i32 0, align 4
@CHCR_KEYCTX_MAC_KEY_SIZE_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @chcr_gcm_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_gcm_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chcr_aead_ctx*, align 8
  %8 = alloca %struct.chcr_gcm_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.crypto_aes_ctx, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %14 = call i32 @a_ctx(%struct.crypto_aead* %13)
  %15 = call %struct.chcr_aead_ctx* @AEAD_CTX(i32 %14)
  store %struct.chcr_aead_ctx* %15, %struct.chcr_aead_ctx** %7, align 8
  %16 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %7, align 8
  %17 = call %struct.chcr_gcm_ctx* @GCM_CTX(%struct.chcr_aead_ctx* %16)
  store %struct.chcr_gcm_ctx* %17, %struct.chcr_gcm_ctx** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %20, i32 0, i32 4
  %22 = load %struct.crypto_aead*, %struct.crypto_aead** %21, align 8
  %23 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %24 = call i32 @crypto_aead_clear_flags(%struct.crypto_aead* %22, i32 %23)
  %25 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %25, i32 0, i32 4
  %27 = load %struct.crypto_aead*, %struct.crypto_aead** %26, align 8
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %29 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %28)
  %30 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %27, i32 %31)
  %33 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %33, i32 0, i32 4
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %34, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %35, i32* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %40 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %41 = call i32 @crypto_aead_clear_flags(%struct.crypto_aead* %39, i32 %40)
  %42 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %43 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %43, i32 0, i32 4
  %45 = load %struct.crypto_aead*, %struct.crypto_aead** %44, align 8
  %46 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %45)
  %47 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %42, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %3
  br label %148

53:                                               ; preds = %3
  %54 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %55 = call i64 @get_aead_subtype(%struct.crypto_aead* %54)
  %56 = load i64, i64* @CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = icmp ugt i32 %59, 3
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = sub i32 %62, 4
  store i32 %63, i32* %6, align 4
  %64 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %7, align 8
  %65 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @memcpy(i32 %66, i32* %70, i32 4)
  br label %72

72:                                               ; preds = %61, %58, %53
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @AES_KEYSIZE_128, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_128, align 4
  store i32 %77, i32* %9, align 4
  br label %101

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @AES_KEYSIZE_192, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_192, align 4
  store i32 %83, i32* %9, align 4
  br label %100

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @AES_KEYSIZE_256, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_256, align 4
  store i32 %89, i32* %9, align 4
  br label %99

90:                                               ; preds = %84
  %91 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %92 = bitcast %struct.crypto_aead* %91 to %struct.crypto_tfm*
  %93 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %94 = call i32 @crypto_tfm_set_flags(%struct.crypto_tfm* %92, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %148

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %82
  br label %101

101:                                              ; preds = %100, %76
  %102 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %7, align 8
  %103 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @memcpy(i32 %104, i32* %105, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %7, align 8
  %110 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @roundup(i32 %111, i32 16)
  %113 = sext i32 %112 to i64
  %114 = add i64 4, %113
  %115 = load i32, i32* @AEAD_H_SIZE, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %114, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_128, align 4
  %121 = load i32, i32* %11, align 4
  %122 = ashr i32 %121, 4
  %123 = call i32 @FILL_KEY_CTX_HDR(i32 %119, i32 %120, i32 0, i32 0, i32 %122)
  %124 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %7, align 8
  %125 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %12, i32* %126, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %101
  %132 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %7, align 8
  %133 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %148

134:                                              ; preds = %101
  %135 = load %struct.chcr_gcm_ctx*, %struct.chcr_gcm_ctx** %8, align 8
  %136 = getelementptr inbounds %struct.chcr_gcm_ctx, %struct.chcr_gcm_ctx* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @AEAD_H_SIZE, align 4
  %139 = call i32 @memset(i32 %137, i32 0, i32 %138)
  %140 = load %struct.chcr_gcm_ctx*, %struct.chcr_gcm_ctx** %8, align 8
  %141 = getelementptr inbounds %struct.chcr_gcm_ctx, %struct.chcr_gcm_ctx* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.chcr_gcm_ctx*, %struct.chcr_gcm_ctx** %8, align 8
  %144 = getelementptr inbounds %struct.chcr_gcm_ctx, %struct.chcr_gcm_ctx* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %12, i32 %142, i32 %145)
  %147 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %12, i32 4)
  br label %148

148:                                              ; preds = %134, %131, %90, %52
  %149 = load i32, i32* %10, align 4
  ret i32 %149
}

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(i32) #1

declare dso_local i32 @a_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.chcr_gcm_ctx* @GCM_CTX(%struct.chcr_aead_ctx*) #1

declare dso_local i32 @crypto_aead_clear_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i32*, i32) #1

declare dso_local i64 @get_aead_subtype(%struct.crypto_aead*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @crypto_tfm_set_flags(%struct.crypto_tfm*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @FILL_KEY_CTX_HDR(i32, i32, i32, i32, i32) #1

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @aes_encrypt(%struct.crypto_aes_ctx*, i32, i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_aes_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
