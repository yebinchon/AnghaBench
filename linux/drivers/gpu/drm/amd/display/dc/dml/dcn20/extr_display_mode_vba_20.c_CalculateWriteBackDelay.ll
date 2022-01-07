; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculateWriteBackDelay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculateWriteBackDelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dm_444_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, double, double, i32, i32, i32, i32, i32)* @CalculateWriteBackDelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @CalculateWriteBackDelay(i32 %0, double %1, double %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store i32 %0, i32* %9, align 4
  store double %1, double* %10, align 8
  store double %2, double* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %12, align 4
  %19 = uitofp i32 %18 to double
  %20 = fdiv double %19, 4.000000e+00
  %21 = fptoui double %20 to i32
  %22 = call i32 @dml_ceil(i32 %21, i32 1)
  %23 = sitofp i32 %22 to double
  %24 = load double, double* %10, align 8
  %25 = fdiv double %23, %24
  %26 = load i32, i32* %13, align 4
  %27 = load double, double* %11, align 8
  %28 = fdiv double 1.000000e+00, %27
  %29 = fptoui double %28 to i32
  %30 = call i32 @dml_ceil(i32 %29, i32 1)
  %31 = mul i32 %26, %30
  %32 = load i32, i32* %16, align 4
  %33 = uitofp i32 %32 to double
  %34 = fdiv double %33, 4.000000e+00
  %35 = fptoui double %34 to i32
  %36 = call i32 @dml_ceil(i32 %35, i32 1)
  %37 = mul i32 %31, %36
  %38 = load double, double* %11, align 8
  %39 = fdiv double 1.000000e+00, %38
  %40 = fptoui double %39 to i32
  %41 = call i32 @dml_ceil(i32 %40, i32 1)
  %42 = load i32, i32* %13, align 4
  %43 = uitofp i32 %42 to double
  %44 = fdiv double %43, 4.000000e+00
  %45 = fptoui double %44 to i32
  %46 = call i32 @dml_ceil(i32 %45, i32 1)
  %47 = add nsw i32 %46, 4
  %48 = mul nsw i32 %41, %47
  %49 = add i32 %37, %48
  %50 = call i32 @dml_max(double %25, i32 %49)
  %51 = uitofp i32 %50 to double
  store double %51, double* %17, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @dm_444_32, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %8
  %56 = load double, double* %17, align 8
  %57 = load i32, i32* %14, align 4
  %58 = uitofp i32 %57 to double
  %59 = fdiv double %58, 2.000000e+00
  %60 = fptoui double %59 to i32
  %61 = call i32 @dml_ceil(i32 %60, i32 1)
  %62 = sitofp i32 %61 to double
  %63 = load double, double* %10, align 8
  %64 = fmul double 2.000000e+00, %63
  %65 = fdiv double %62, %64
  %66 = load i32, i32* %15, align 4
  %67 = load double, double* %11, align 8
  %68 = fmul double 2.000000e+00, %67
  %69 = fdiv double 1.000000e+00, %68
  %70 = fptoui double %69 to i32
  %71 = call i32 @dml_ceil(i32 %70, i32 1)
  %72 = mul i32 %66, %71
  %73 = load i32, i32* %16, align 4
  %74 = uitofp i32 %73 to double
  %75 = fdiv double %74, 2.000000e+00
  %76 = fdiv double %75, 2.000000e+00
  %77 = fptoui double %76 to i32
  %78 = call i32 @dml_ceil(i32 %77, i32 1)
  %79 = mul i32 %72, %78
  %80 = load double, double* %11, align 8
  %81 = fmul double 2.000000e+00, %80
  %82 = fdiv double 1.000000e+00, %81
  %83 = fptoui double %82 to i32
  %84 = call i32 @dml_ceil(i32 %83, i32 1)
  %85 = load i32, i32* %15, align 4
  %86 = uitofp i32 %85 to double
  %87 = fdiv double %86, 4.000000e+00
  %88 = fptoui double %87 to i32
  %89 = call i32 @dml_ceil(i32 %88, i32 1)
  %90 = add nsw i32 %89, 4
  %91 = mul nsw i32 %84, %90
  %92 = add i32 %79, %91
  %93 = call i32 @dml_max(double %65, i32 %92)
  %94 = call i32 @dml_max(double %56, i32 %93)
  %95 = uitofp i32 %94 to double
  store double %95, double* %17, align 8
  br label %96

96:                                               ; preds = %55, %8
  %97 = load double, double* %17, align 8
  ret double %97
}

declare dso_local i32 @dml_max(double, i32) #1

declare dso_local i32 @dml_ceil(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
