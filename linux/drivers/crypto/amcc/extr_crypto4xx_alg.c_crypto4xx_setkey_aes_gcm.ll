; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_setkey_aes_gcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_setkey_aes_gcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.crypto4xx_ctx = type { i32, i64, i64 }
%struct.dynamic_sa_ctl = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SA_AES128_GCM_LEN = common dso_local global i64 0, align 8
@SA_AES_GCM_CONTENTS = common dso_local global i32 0, align 4
@SA_SAVE_HASH = common dso_local global i32 0, align 4
@SA_NOT_SAVE_IV = common dso_local global i32 0, align 4
@SA_LOAD_HASH_FROM_SA = common dso_local global i32 0, align 4
@SA_LOAD_IV_FROM_STATE = common dso_local global i32 0, align 4
@SA_NO_HEADER_PROC = common dso_local global i32 0, align 4
@SA_HASH_ALG_GHASH = common dso_local global i32 0, align 4
@SA_CIPHER_ALG_AES = common dso_local global i32 0, align 4
@SA_PAD_TYPE_ZERO = common dso_local global i32 0, align 4
@SA_OP_GROUP_BASIC = common dso_local global i32 0, align 4
@SA_OPCODE_HASH_DECRYPT = common dso_local global i32 0, align 4
@DIR_INBOUND = common dso_local global i32 0, align 4
@CRYPTO_MODE_CTR = common dso_local global i32 0, align 4
@SA_HASH_MODE_HASH = common dso_local global i32 0, align 4
@CRYPTO_FEEDBACK_MODE_NO_FB = common dso_local global i32 0, align 4
@SA_EXTENDED_SN_OFF = common dso_local global i32 0, align 4
@SA_SEQ_MASK_ON = common dso_local global i32 0, align 4
@SA_MC_DISABLE = common dso_local global i32 0, align 4
@SA_NOT_COPY_PAD = common dso_local global i32 0, align 4
@SA_COPY_PAYLOAD = common dso_local global i32 0, align 4
@SA_NOT_COPY_HDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"GCM hash key setting failed = %d\0A\00", align 1
@DIR_OUTBOUND = common dso_local global i32 0, align 4
@SA_OPCODE_ENCRYPT_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto4xx_setkey_aes_gcm(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.crypto4xx_ctx*, align 8
  %10 = alloca %struct.dynamic_sa_ctl*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %13 = call %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead* %12)
  store %struct.crypto_tfm* %13, %struct.crypto_tfm** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %15 = call %struct.crypto4xx_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.crypto4xx_ctx* %15, %struct.crypto4xx_ctx** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @crypto4xx_aes_gcm_validate_keylen(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %21 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %22 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %20, i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %148

25:                                               ; preds = %3
  %26 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %27 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @crypto4xx_aead_setup_fallback(%struct.crypto4xx_ctx* %26, %struct.crypto_aead* %27, i32* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %148

35:                                               ; preds = %25
  %36 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %42 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %35
  %46 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %47 = call i32 @crypto4xx_free_sa(%struct.crypto4xx_ctx* %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %50 = load i64, i64* @SA_AES128_GCM_LEN, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub i32 %51, 16
  %53 = udiv i32 %52, 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = call i32 @crypto4xx_alloc_sa(%struct.crypto4xx_ctx* %49, i64 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %148

61:                                               ; preds = %48
  %62 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %63 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.dynamic_sa_ctl*
  store %struct.dynamic_sa_ctl* %65, %struct.dynamic_sa_ctl** %10, align 8
  %66 = load i32, i32* @SA_AES_GCM_CONTENTS, align 4
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 %67, 2
  %69 = or i32 %66, %68
  %70 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %71 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %74 = load i32, i32* @SA_SAVE_HASH, align 4
  %75 = load i32, i32* @SA_NOT_SAVE_IV, align 4
  %76 = load i32, i32* @SA_LOAD_HASH_FROM_SA, align 4
  %77 = load i32, i32* @SA_LOAD_IV_FROM_STATE, align 4
  %78 = load i32, i32* @SA_NO_HEADER_PROC, align 4
  %79 = load i32, i32* @SA_HASH_ALG_GHASH, align 4
  %80 = load i32, i32* @SA_CIPHER_ALG_AES, align 4
  %81 = load i32, i32* @SA_PAD_TYPE_ZERO, align 4
  %82 = load i32, i32* @SA_OP_GROUP_BASIC, align 4
  %83 = load i32, i32* @SA_OPCODE_HASH_DECRYPT, align 4
  %84 = load i32, i32* @DIR_INBOUND, align 4
  %85 = call i32 @set_dynamic_sa_command_0(%struct.dynamic_sa_ctl* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %87 = load i32, i32* @CRYPTO_MODE_CTR, align 4
  %88 = load i32, i32* @SA_HASH_MODE_HASH, align 4
  %89 = load i32, i32* @CRYPTO_FEEDBACK_MODE_NO_FB, align 4
  %90 = load i32, i32* @SA_EXTENDED_SN_OFF, align 4
  %91 = load i32, i32* @SA_SEQ_MASK_ON, align 4
  %92 = load i32, i32* @SA_MC_DISABLE, align 4
  %93 = load i32, i32* @SA_NOT_COPY_PAD, align 4
  %94 = load i32, i32* @SA_COPY_PAYLOAD, align 4
  %95 = load i32, i32* @SA_NOT_COPY_HDR, align 4
  %96 = call i32 @set_dynamic_sa_command_1(%struct.dynamic_sa_ctl* %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = lshr i32 %97, 3
  %99 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %100 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %104 = call i32 @get_dynamic_sa_key_field(%struct.dynamic_sa_ctl* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @crypto4xx_memcpy_to_le32(i32 %104, i32* %105, i32 %106)
  %108 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %109 = call i32 @get_dynamic_sa_inner_digest(%struct.dynamic_sa_ctl* %108)
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @crypto4xx_compute_gcm_hash_key_sw(i32 %109, i32* %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %61
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %116)
  br label %144

118:                                              ; preds = %61
  %119 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %120 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %123 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %126 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %127, 4
  %129 = call i32 @memcpy(i64 %121, i64 %124, i32 %128)
  %130 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %131 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.dynamic_sa_ctl*
  store %struct.dynamic_sa_ctl* %133, %struct.dynamic_sa_ctl** %10, align 8
  %134 = load i32, i32* @DIR_OUTBOUND, align 4
  %135 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %136 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* @SA_OPCODE_ENCRYPT_HASH, align 4
  %140 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %141 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 4
  store i32 0, i32* %4, align 4
  br label %148

144:                                              ; preds = %115
  %145 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %146 = call i32 @crypto4xx_free_sa(%struct.crypto4xx_ctx* %145)
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %144, %118, %59, %33, %19
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead*) #1

declare dso_local %struct.crypto4xx_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i64 @crypto4xx_aes_gcm_validate_keylen(i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto4xx_aead_setup_fallback(%struct.crypto4xx_ctx*, %struct.crypto_aead*, i32*, i32) #1

declare dso_local i32 @crypto4xx_free_sa(%struct.crypto4xx_ctx*) #1

declare dso_local i32 @crypto4xx_alloc_sa(%struct.crypto4xx_ctx*, i64) #1

declare dso_local i32 @set_dynamic_sa_command_0(%struct.dynamic_sa_ctl*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_dynamic_sa_command_1(%struct.dynamic_sa_ctl*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto4xx_memcpy_to_le32(i32, i32*, i32) #1

declare dso_local i32 @get_dynamic_sa_key_field(%struct.dynamic_sa_ctl*) #1

declare dso_local i32 @crypto4xx_compute_gcm_hash_key_sw(i32, i32*, i32) #1

declare dso_local i32 @get_dynamic_sa_inner_digest(%struct.dynamic_sa_ctl*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
