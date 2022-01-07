; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_setup_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_setup_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.ix_sa_dir = type { i32, i32, i32* }
%struct.ixp_ctx = type { %struct.ix_sa_dir, %struct.ix_sa_dir }

@NPE_OP_CRYPT_ENCRYPT = common dso_local global i32 0, align 4
@MOD_AES = common dso_local global i32 0, align 4
@MOD_AES128 = common dso_local global i32 0, align 4
@MOD_AES192 = common dso_local global i32 0, align 4
@MOD_AES256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DES3_EDE_KEY_SIZE = common dso_local global i32 0, align 4
@NPE_OP_CRYPT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32, i32*, i32)* @setup_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_cipher(%struct.crypto_tfm* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ix_sa_dir*, align 8
  %14 = alloca %struct.ixp_ctx*, align 8
  %15 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %17 = call %struct.ixp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.ixp_ctx* %17, %struct.ixp_ctx** %14, align 8
  %18 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %19 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %18, i32 0, i32 0
  store i32* %19, i32** %15, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.ixp_ctx*, %struct.ixp_ctx** %14, align 8
  %24 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %23, i32 0, i32 1
  br label %28

25:                                               ; preds = %4
  %26 = load %struct.ixp_ctx*, %struct.ixp_ctx** %14, align 8
  %27 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %26, i32 0, i32 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi %struct.ix_sa_dir* [ %24, %22 ], [ %27, %25 ]
  store %struct.ix_sa_dir* %29, %struct.ix_sa_dir** %13, align 8
  %30 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %13, align 8
  %31 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %37 = call i32 @cipher_cfg_enc(%struct.crypto_tfm* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @NPE_OP_CRYPT_ENCRYPT, align 4
  %39 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %13, align 8
  %40 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %46

43:                                               ; preds = %28
  %44 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %45 = call i32 @cipher_cfg_dec(%struct.crypto_tfm* %44)
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @MOD_AES, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %59 [
    i32 16, label %53
    i32 24, label %55
    i32 32, label %57
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* @MOD_AES128, align 4
  store i32 %54, i32* %12, align 4
  br label %66

55:                                               ; preds = %51
  %56 = load i32, i32* @MOD_AES192, align 4
  store i32 %56, i32* %12, align 4
  br label %66

57:                                               ; preds = %51
  %58 = load i32, i32* @MOD_AES256, align 4
  store i32 %58, i32* %12, align 4
  br label %66

59:                                               ; preds = %51
  %60 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %125

66:                                               ; preds = %57, %55, %53
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  br label %74

70:                                               ; preds = %46
  %71 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @crypto_des_verify_key(%struct.crypto_tfm* %71, i32* %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @cpu_to_be32(i32 %75)
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @memcpy(i32* %80, i32* %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @DES3_EDE_KEY_SIZE, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %74
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @MOD_AES, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* @DES3_EDE_KEY_SIZE, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %97, %98
  %100 = call i32 @memset(i32* %96, i32 0, i32 %99)
  %101 = load i32, i32* @DES3_EDE_KEY_SIZE, align 4
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %92, %87, %74
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 4, %104
  %106 = trunc i64 %105 to i32
  %107 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %13, align 8
  %108 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @NPE_OP_CRYPT_ENABLE, align 4
  %110 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %13, align 8
  %111 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @MOD_AES, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %102
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %123 = call i32 @gen_rev_aes_key(%struct.crypto_tfm* %122)
  store i32 %123, i32* %5, align 4
  br label %125

124:                                              ; preds = %118, %102
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %121, %59
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.ixp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @cipher_cfg_enc(%struct.crypto_tfm*) #1

declare dso_local i32 @cipher_cfg_dec(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_des_verify_key(%struct.crypto_tfm*, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gen_rev_aes_key(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
