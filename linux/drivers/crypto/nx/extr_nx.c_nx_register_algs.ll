; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_register_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_register_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@nx_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@NX_OF_FLAG_MASK_READY = common dso_local global i64 0, align 8
@NX_OKAY = common dso_local global i32 0, align 4
@nx_ecb_aes_alg = common dso_local global i32 0, align 4
@NX_FC_AES = common dso_local global i32 0, align 4
@NX_MODE_AES_ECB = common dso_local global i32 0, align 4
@nx_cbc_aes_alg = common dso_local global i32 0, align 4
@NX_MODE_AES_CBC = common dso_local global i32 0, align 4
@nx_ctr3686_aes_alg = common dso_local global i32 0, align 4
@NX_MODE_AES_CTR = common dso_local global i32 0, align 4
@nx_gcm_aes_alg = common dso_local global i32 0, align 4
@NX_MODE_AES_GCM = common dso_local global i32 0, align 4
@nx_gcm4106_aes_alg = common dso_local global i32 0, align 4
@nx_ccm_aes_alg = common dso_local global i32 0, align 4
@NX_MODE_AES_CCM = common dso_local global i32 0, align 4
@nx_ccm4309_aes_alg = common dso_local global i32 0, align 4
@nx_shash_sha256_alg = common dso_local global i32 0, align 4
@NX_FC_SHA = common dso_local global i32 0, align 4
@NX_MODE_SHA = common dso_local global i32 0, align 4
@NX_PROPS_SHA256 = common dso_local global i32 0, align 4
@nx_shash_sha512_alg = common dso_local global i32 0, align 4
@NX_PROPS_SHA512 = common dso_local global i32 0, align 4
@nx_shash_aes_xcbc_alg = common dso_local global i32 0, align 4
@NX_MODE_AES_XCBC_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nx_register_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_register_algs() #0 {
  %1 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nx_driver, i32 0, i32 0, i32 0), align 8
  %3 = load i64, i64* @NX_OF_FLAG_MASK_READY, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %120

6:                                                ; preds = %0
  %7 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nx_driver, i32 0, i32 1), i32 0, i32 4)
  %8 = call i32 @NX_DEBUGFS_INIT(%struct.TYPE_5__* @nx_driver)
  %9 = load i32, i32* @NX_OKAY, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nx_driver, i32 0, i32 0, i32 1), align 8
  %10 = load i32, i32* @NX_FC_AES, align 4
  %11 = load i32, i32* @NX_MODE_AES_ECB, align 4
  %12 = call i32 @nx_register_alg(i32* @nx_ecb_aes_alg, i32 %10, i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %120

16:                                               ; preds = %6
  %17 = load i32, i32* @NX_FC_AES, align 4
  %18 = load i32, i32* @NX_MODE_AES_CBC, align 4
  %19 = call i32 @nx_register_alg(i32* @nx_cbc_aes_alg, i32 %17, i32 %18)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %116

23:                                               ; preds = %16
  %24 = load i32, i32* @NX_FC_AES, align 4
  %25 = load i32, i32* @NX_MODE_AES_CTR, align 4
  %26 = call i32 @nx_register_alg(i32* @nx_ctr3686_aes_alg, i32 %24, i32 %25)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %112

30:                                               ; preds = %23
  %31 = load i32, i32* @NX_FC_AES, align 4
  %32 = load i32, i32* @NX_MODE_AES_GCM, align 4
  %33 = call i32 @nx_register_aead(i32* @nx_gcm_aes_alg, i32 %31, i32 %32)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %108

37:                                               ; preds = %30
  %38 = load i32, i32* @NX_FC_AES, align 4
  %39 = load i32, i32* @NX_MODE_AES_GCM, align 4
  %40 = call i32 @nx_register_aead(i32* @nx_gcm4106_aes_alg, i32 %38, i32 %39)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %104

44:                                               ; preds = %37
  %45 = load i32, i32* @NX_FC_AES, align 4
  %46 = load i32, i32* @NX_MODE_AES_CCM, align 4
  %47 = call i32 @nx_register_aead(i32* @nx_ccm_aes_alg, i32 %45, i32 %46)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %100

51:                                               ; preds = %44
  %52 = load i32, i32* @NX_FC_AES, align 4
  %53 = load i32, i32* @NX_MODE_AES_CCM, align 4
  %54 = call i32 @nx_register_aead(i32* @nx_ccm4309_aes_alg, i32 %52, i32 %53)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %96

58:                                               ; preds = %51
  %59 = load i32, i32* @NX_FC_SHA, align 4
  %60 = load i32, i32* @NX_MODE_SHA, align 4
  %61 = load i32, i32* @NX_PROPS_SHA256, align 4
  %62 = call i32 @nx_register_shash(i32* @nx_shash_sha256_alg, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* %1, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %92

66:                                               ; preds = %58
  %67 = load i32, i32* @NX_FC_SHA, align 4
  %68 = load i32, i32* @NX_MODE_SHA, align 4
  %69 = load i32, i32* @NX_PROPS_SHA512, align 4
  %70 = call i32 @nx_register_shash(i32* @nx_shash_sha512_alg, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %87

74:                                               ; preds = %66
  %75 = load i32, i32* @NX_FC_AES, align 4
  %76 = load i32, i32* @NX_MODE_AES_XCBC_MAC, align 4
  %77 = call i32 @nx_register_shash(i32* @nx_shash_aes_xcbc_alg, i32 %75, i32 %76, i32 -1)
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* %1, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %82

81:                                               ; preds = %74
  br label %120

82:                                               ; preds = %80
  %83 = load i32, i32* @NX_FC_SHA, align 4
  %84 = load i32, i32* @NX_MODE_SHA, align 4
  %85 = load i32, i32* @NX_PROPS_SHA512, align 4
  %86 = call i32 @nx_unregister_shash(i32* @nx_shash_sha512_alg, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %73
  %88 = load i32, i32* @NX_FC_SHA, align 4
  %89 = load i32, i32* @NX_MODE_SHA, align 4
  %90 = load i32, i32* @NX_PROPS_SHA256, align 4
  %91 = call i32 @nx_unregister_shash(i32* @nx_shash_sha256_alg, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %65
  %93 = load i32, i32* @NX_FC_AES, align 4
  %94 = load i32, i32* @NX_MODE_AES_CCM, align 4
  %95 = call i32 @nx_unregister_aead(i32* @nx_ccm4309_aes_alg, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %57
  %97 = load i32, i32* @NX_FC_AES, align 4
  %98 = load i32, i32* @NX_MODE_AES_CCM, align 4
  %99 = call i32 @nx_unregister_aead(i32* @nx_ccm_aes_alg, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %50
  %101 = load i32, i32* @NX_FC_AES, align 4
  %102 = load i32, i32* @NX_MODE_AES_GCM, align 4
  %103 = call i32 @nx_unregister_aead(i32* @nx_gcm4106_aes_alg, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %43
  %105 = load i32, i32* @NX_FC_AES, align 4
  %106 = load i32, i32* @NX_MODE_AES_GCM, align 4
  %107 = call i32 @nx_unregister_aead(i32* @nx_gcm_aes_alg, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %36
  %109 = load i32, i32* @NX_FC_AES, align 4
  %110 = load i32, i32* @NX_MODE_AES_CTR, align 4
  %111 = call i32 @nx_unregister_alg(i32* @nx_ctr3686_aes_alg, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %29
  %113 = load i32, i32* @NX_FC_AES, align 4
  %114 = load i32, i32* @NX_MODE_AES_CBC, align 4
  %115 = call i32 @nx_unregister_alg(i32* @nx_cbc_aes_alg, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %22
  %117 = load i32, i32* @NX_FC_AES, align 4
  %118 = load i32, i32* @NX_MODE_AES_ECB, align 4
  %119 = call i32 @nx_unregister_alg(i32* @nx_ecb_aes_alg, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %81, %15, %5
  %121 = load i32, i32* %1, align 4
  ret i32 %121
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @NX_DEBUGFS_INIT(%struct.TYPE_5__*) #1

declare dso_local i32 @nx_register_alg(i32*, i32, i32) #1

declare dso_local i32 @nx_register_aead(i32*, i32, i32) #1

declare dso_local i32 @nx_register_shash(i32*, i32, i32, i32) #1

declare dso_local i32 @nx_unregister_shash(i32*, i32, i32, i32) #1

declare dso_local i32 @nx_unregister_aead(i32*, i32, i32) #1

declare dso_local i32 @nx_unregister_alg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
