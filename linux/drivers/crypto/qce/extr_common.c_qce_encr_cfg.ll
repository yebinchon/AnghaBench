; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_common.c_qce_encr_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_common.c_qce_encr_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_KEYSIZE_128 = common dso_local global i64 0, align 8
@ENCR_KEY_SZ_AES128 = common dso_local global i64 0, align 8
@ENCR_KEY_SZ_SHIFT = common dso_local global i64 0, align 8
@AES_KEYSIZE_256 = common dso_local global i64 0, align 8
@ENCR_KEY_SZ_AES256 = common dso_local global i64 0, align 8
@ENCR_ALG_AES = common dso_local global i64 0, align 8
@ENCR_ALG_SHIFT = common dso_local global i64 0, align 8
@ENCR_ALG_DES = common dso_local global i64 0, align 8
@ENCR_KEY_SZ_DES = common dso_local global i64 0, align 8
@ENCR_KEY_SZ_3DES = common dso_local global i64 0, align 8
@QCE_MODE_MASK = common dso_local global i64 0, align 8
@ENCR_MODE_ECB = common dso_local global i64 0, align 8
@ENCR_MODE_SHIFT = common dso_local global i64 0, align 8
@ENCR_MODE_CBC = common dso_local global i64 0, align 8
@ENCR_MODE_CTR = common dso_local global i64 0, align 8
@ENCR_MODE_XTS = common dso_local global i64 0, align 8
@ENCR_MODE_CCM = common dso_local global i64 0, align 8
@LAST_CCM_XFR = common dso_local global i64 0, align 8
@LAST_CCM_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @qce_encr_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qce_encr_cfg(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @IS_AES(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @AES_KEYSIZE_128, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i64, i64* @ENCR_KEY_SZ_AES128, align 8
  %16 = load i64, i64* @ENCR_KEY_SZ_SHIFT, align 8
  %17 = shl i64 %15, %16
  %18 = load i64, i64* %6, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %6, align 8
  br label %31

20:                                               ; preds = %10
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @AES_KEYSIZE_256, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64, i64* @ENCR_KEY_SZ_AES256, align 8
  %26 = load i64, i64* @ENCR_KEY_SZ_SHIFT, align 8
  %27 = shl i64 %25, %26
  %28 = load i64, i64* %6, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %24, %20
  br label %31

31:                                               ; preds = %30, %14
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @IS_AES(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i64, i64* @ENCR_ALG_AES, align 8
  %38 = load i64, i64* @ENCR_ALG_SHIFT, align 8
  %39 = shl i64 %37, %38
  %40 = load i64, i64* %6, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %6, align 8
  br label %57

42:                                               ; preds = %32
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @IS_DES(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @IS_3DES(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46, %42
  %51 = load i64, i64* @ENCR_ALG_DES, align 8
  %52 = load i64, i64* @ENCR_ALG_SHIFT, align 8
  %53 = shl i64 %51, %52
  %54 = load i64, i64* %6, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %50, %46
  br label %57

57:                                               ; preds = %56, %36
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @IS_DES(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i64, i64* @ENCR_KEY_SZ_DES, align 8
  %63 = load i64, i64* @ENCR_KEY_SZ_SHIFT, align 8
  %64 = shl i64 %62, %63
  %65 = load i64, i64* %6, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %61, %57
  %68 = load i64, i64* %4, align 8
  %69 = call i64 @IS_3DES(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i64, i64* @ENCR_KEY_SZ_3DES, align 8
  %73 = load i64, i64* @ENCR_KEY_SZ_SHIFT, align 8
  %74 = shl i64 %72, %73
  %75 = load i64, i64* %6, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %71, %67
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @QCE_MODE_MASK, align 8
  %80 = and i64 %78, %79
  switch i64 %80, label %116 [
    i64 129, label %81
    i64 132, label %87
    i64 130, label %93
    i64 128, label %99
    i64 131, label %105
  ]

81:                                               ; preds = %77
  %82 = load i64, i64* @ENCR_MODE_ECB, align 8
  %83 = load i64, i64* @ENCR_MODE_SHIFT, align 8
  %84 = shl i64 %82, %83
  %85 = load i64, i64* %6, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %6, align 8
  br label %117

87:                                               ; preds = %77
  %88 = load i64, i64* @ENCR_MODE_CBC, align 8
  %89 = load i64, i64* @ENCR_MODE_SHIFT, align 8
  %90 = shl i64 %88, %89
  %91 = load i64, i64* %6, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %6, align 8
  br label %117

93:                                               ; preds = %77
  %94 = load i64, i64* @ENCR_MODE_CTR, align 8
  %95 = load i64, i64* @ENCR_MODE_SHIFT, align 8
  %96 = shl i64 %94, %95
  %97 = load i64, i64* %6, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %6, align 8
  br label %117

99:                                               ; preds = %77
  %100 = load i64, i64* @ENCR_MODE_XTS, align 8
  %101 = load i64, i64* @ENCR_MODE_SHIFT, align 8
  %102 = shl i64 %100, %101
  %103 = load i64, i64* %6, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %6, align 8
  br label %117

105:                                              ; preds = %77
  %106 = load i64, i64* @ENCR_MODE_CCM, align 8
  %107 = load i64, i64* @ENCR_MODE_SHIFT, align 8
  %108 = shl i64 %106, %107
  %109 = load i64, i64* %6, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* @LAST_CCM_XFR, align 8
  %112 = load i64, i64* @LAST_CCM_SHIFT, align 8
  %113 = shl i64 %111, %112
  %114 = load i64, i64* %6, align 8
  %115 = or i64 %114, %113
  store i64 %115, i64* %6, align 8
  br label %117

116:                                              ; preds = %77
  store i64 -1, i64* %3, align 8
  br label %119

117:                                              ; preds = %105, %99, %93, %87, %81
  %118 = load i64, i64* %6, align 8
  store i64 %118, i64* %3, align 8
  br label %119

119:                                              ; preds = %117, %116
  %120 = load i64, i64* %3, align 8
  ret i64 %120
}

declare dso_local i64 @IS_AES(i64) #1

declare dso_local i64 @IS_DES(i64) #1

declare dso_local i64 @IS_3DES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
