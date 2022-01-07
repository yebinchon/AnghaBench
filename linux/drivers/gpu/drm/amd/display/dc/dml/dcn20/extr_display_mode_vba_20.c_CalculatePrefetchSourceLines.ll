; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculatePrefetchSourceLines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculatePrefetchSourceLines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [133 x i8] c"WARNING DML: using viewport y position of 0 even though actual viewport y position is non-zero in prefetch source lines calculation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.display_mode_lib*, double, double, i32, i32, i32, i32, double*, i32*)* @CalculatePrefetchSourceLines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @CalculatePrefetchSourceLines(%struct.display_mode_lib* %0, double %1, double %2, i32 %3, i32 %4, i32 %5, i32 %6, double* %7, i32* %8) #0 {
  %10 = alloca %struct.display_mode_lib*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %10, align 8
  store double %1, double* %11, align 8
  store double %2, double* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store double* %7, double** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %9
  %23 = load double, double* %11, align 8
  %24 = load double, double* %12, align 8
  %25 = fadd double %23, %24
  %26 = fadd double %25, 1.000000e+00
  %27 = fdiv double %26, 2.000000e+00
  %28 = call double @dml_floor(double %27, i32 1)
  %29 = load double*, double** %17, align 8
  store double %28, double* %29, align 8
  br label %44

30:                                               ; preds = %9
  %31 = load double, double* %11, align 8
  %32 = load double, double* %12, align 8
  %33 = fadd double %31, %32
  %34 = fadd double %33, 1.000000e+00
  %35 = load i32, i32* %13, align 4
  %36 = sitofp i32 %35 to double
  %37 = fmul double %36, 5.000000e-01
  %38 = load double, double* %11, align 8
  %39 = fmul double %37, %38
  %40 = fadd double %34, %39
  %41 = fdiv double %40, 2.000000e+00
  %42 = call double @dml_floor(double %41, i32 1)
  %43 = load double*, double** %17, align 8
  store double %42, double* %43, align 8
  br label %44

44:                                               ; preds = %30, %22
  %45 = load %struct.display_mode_lib*, %struct.display_mode_lib** %10, align 8
  %46 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %84, label %50

50:                                               ; preds = %44
  %51 = load double*, double** %17, align 8
  %52 = load double, double* %51, align 8
  %53 = fsub double %52, 1.000000e+00
  %54 = load i32, i32* %15, align 4
  %55 = uitofp i32 %54 to double
  %56 = fdiv double %53, %55
  %57 = call double @dml_ceil(double %56, i32 1)
  %58 = fadd double %57, 1.000000e+00
  %59 = fptoui double %58 to i32
  %60 = load i32*, i32** %18, align 8
  store i32 %59, i32* %60, align 4
  %61 = load double*, double** %17, align 8
  %62 = load double, double* %61, align 8
  %63 = fcmp ogt double %62, 1.000000e+00
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = load double*, double** %17, align 8
  %66 = load double, double* %65, align 8
  %67 = fsub double %66, 2.000000e+00
  %68 = fptoui double %67 to i32
  %69 = load i32, i32* %15, align 4
  %70 = urem i32 %68, %69
  store i32 %70, i32* %19, align 4
  br label %81

71:                                               ; preds = %50
  %72 = load double*, double** %17, align 8
  %73 = load double, double* %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = uitofp i32 %74 to double
  %76 = fadd double %73, %75
  %77 = fsub double %76, 2.000000e+00
  %78 = fptoui double %77 to i32
  %79 = load i32, i32* %15, align 4
  %80 = urem i32 %78, %79
  store i32 %80, i32* %19, align 4
  br label %81

81:                                               ; preds = %71, %64
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @dml_max(i32 1, i32 %82)
  store i32 %83, i32* %19, align 4
  br label %119

84:                                               ; preds = %44
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 @dml_print(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  %90 = load double*, double** %17, align 8
  %91 = load double, double* %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = uitofp i32 %92 to double
  %94 = fdiv double %91, %93
  %95 = call double @dml_ceil(double %94, i32 1)
  %96 = fptoui double %95 to i32
  %97 = load i32*, i32** %18, align 8
  store i32 %96, i32* %97, align 4
  %98 = load double*, double** %17, align 8
  %99 = load double, double* %98, align 8
  %100 = fcmp ogt double %99, 1.000000e+00
  br i1 %100, label %101, label %108

101:                                              ; preds = %89
  %102 = load double*, double** %17, align 8
  %103 = load double, double* %102, align 8
  %104 = fsub double %103, 1.000000e+00
  %105 = fptoui double %104 to i32
  %106 = load i32, i32* %15, align 4
  %107 = urem i32 %105, %106
  store i32 %107, i32* %19, align 4
  br label %118

108:                                              ; preds = %89
  %109 = load double*, double** %17, align 8
  %110 = load double, double* %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = uitofp i32 %111 to double
  %113 = fadd double %110, %112
  %114 = fsub double %113, 1.000000e+00
  %115 = fptoui double %114 to i32
  %116 = load i32, i32* %15, align 4
  %117 = urem i32 %115, %116
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %108, %101
  br label %119

119:                                              ; preds = %118, %81
  %120 = load i32*, i32** %18, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %15, align 4
  %123 = mul i32 %121, %122
  %124 = load i32, i32* %19, align 4
  %125 = add i32 %123, %124
  %126 = uitofp i32 %125 to double
  ret double %126
}

declare dso_local double @dml_floor(double, i32) #1

declare dso_local double @dml_ceil(double, i32) #1

declare dso_local i32 @dml_max(i32, i32) #1

declare dso_local i32 @dml_print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
