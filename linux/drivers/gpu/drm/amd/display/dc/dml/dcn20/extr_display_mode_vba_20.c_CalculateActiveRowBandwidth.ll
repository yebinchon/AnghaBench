; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculateActiveRowBandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculateActiveRowBandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dm_420_8 = common dso_local global i32 0, align 4
@dm_420_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, double, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, double*, double*, double*)* @CalculateActiveRowBandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CalculateActiveRowBandwidth(i32 %0, i32 %1, double %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, double* %13, double* %14, double* %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca double*, align 8
  %31 = alloca double*, align 8
  %32 = alloca double*, align 8
  store i32 %0, i32* %17, align 4
  store i32 %1, i32* %18, align 4
  store double %2, double* %19, align 8
  store i32 %3, i32* %20, align 4
  store double %4, double* %21, align 8
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store i32 %11, i32* %28, align 4
  store i32 %12, i32* %29, align 4
  store double* %13, double** %30, align 8
  store double* %14, double** %31, align 8
  store double* %15, double** %32, align 8
  %33 = load i32, i32* %20, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %16
  %36 = load double*, double** %30, align 8
  store double 0.000000e+00, double* %36, align 8
  br label %79

37:                                               ; preds = %16
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* @dm_420_8, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @dm_420_10, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41, %37
  %46 = load double, double* %19, align 8
  %47 = load i32, i32* %22, align 4
  %48 = uitofp i32 %47 to double
  %49 = fmul double %46, %48
  %50 = load i32, i32* %24, align 4
  %51 = uitofp i32 %50 to double
  %52 = load double, double* %21, align 8
  %53 = fmul double %51, %52
  %54 = fdiv double %49, %53
  %55 = load double, double* %19, align 8
  %56 = fdiv double %55, 2.000000e+00
  %57 = load i32, i32* %23, align 4
  %58 = uitofp i32 %57 to double
  %59 = fmul double %56, %58
  %60 = load i32, i32* %25, align 4
  %61 = uitofp i32 %60 to double
  %62 = load double, double* %21, align 8
  %63 = fmul double %61, %62
  %64 = fdiv double %59, %63
  %65 = fadd double %54, %64
  %66 = load double*, double** %30, align 8
  store double %65, double* %66, align 8
  br label %78

67:                                               ; preds = %41
  %68 = load double, double* %19, align 8
  %69 = load i32, i32* %22, align 4
  %70 = uitofp i32 %69 to double
  %71 = fmul double %68, %70
  %72 = load i32, i32* %24, align 4
  %73 = uitofp i32 %72 to double
  %74 = load double, double* %21, align 8
  %75 = fmul double %73, %74
  %76 = fdiv double %71, %75
  %77 = load double*, double** %30, align 8
  store double %76, double* %77, align 8
  br label %78

78:                                               ; preds = %67, %45
  br label %79

79:                                               ; preds = %78, %35
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load double*, double** %31, align 8
  store double 0.000000e+00, double* %83, align 8
  br label %126

84:                                               ; preds = %79
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @dm_420_8, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* @dm_420_10, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %88, %84
  %93 = load double, double* %19, align 8
  %94 = load i32, i32* %26, align 4
  %95 = uitofp i32 %94 to double
  %96 = fmul double %93, %95
  %97 = load i32, i32* %28, align 4
  %98 = uitofp i32 %97 to double
  %99 = load double, double* %21, align 8
  %100 = fmul double %98, %99
  %101 = fdiv double %96, %100
  %102 = load double, double* %19, align 8
  %103 = fdiv double %102, 2.000000e+00
  %104 = load i32, i32* %27, align 4
  %105 = uitofp i32 %104 to double
  %106 = fmul double %103, %105
  %107 = load i32, i32* %29, align 4
  %108 = uitofp i32 %107 to double
  %109 = load double, double* %21, align 8
  %110 = fmul double %108, %109
  %111 = fdiv double %106, %110
  %112 = fadd double %101, %111
  %113 = load double*, double** %31, align 8
  store double %112, double* %113, align 8
  br label %125

114:                                              ; preds = %88
  %115 = load double, double* %19, align 8
  %116 = load i32, i32* %26, align 4
  %117 = uitofp i32 %116 to double
  %118 = fmul double %115, %117
  %119 = load i32, i32* %28, align 4
  %120 = uitofp i32 %119 to double
  %121 = load double, double* %21, align 8
  %122 = fmul double %120, %121
  %123 = fdiv double %118, %122
  %124 = load double*, double** %31, align 8
  store double %123, double* %124, align 8
  br label %125

125:                                              ; preds = %114, %92
  br label %126

126:                                              ; preds = %125, %82
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* @dm_420_8, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* @dm_420_10, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130, %126
  %135 = load double*, double** %30, align 8
  %136 = load double, double* %135, align 8
  %137 = load double*, double** %31, align 8
  %138 = load double, double* %137, align 8
  %139 = fadd double %136, %138
  %140 = load double*, double** %32, align 8
  store double %139, double* %140, align 8
  br label %143

141:                                              ; preds = %130
  %142 = load double*, double** %32, align 8
  store double 0.000000e+00, double* %142, align 8
  br label %143

143:                                              ; preds = %141, %134
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
