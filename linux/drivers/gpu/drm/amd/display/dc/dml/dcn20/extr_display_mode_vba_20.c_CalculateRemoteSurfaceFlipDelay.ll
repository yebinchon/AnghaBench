; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculateRemoteSurfaceFlipDelay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculateRemoteSurfaceFlipDelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"DML::CalculateRemoteSurfaceFlipDelay: SrcActiveDrainRate: %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"DML::CalculateRemoteSurfaceFlipDelay: TSlvSetup: %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"DML::CalculateRemoteSurfaceFlipDelay: TInitXFill: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"DML::CalculateRemoteSurfaceFlipDelay: AvgfillRate: %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"DML::CalculateRemoteSurfaceFlipDelay: TslvChk: %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"DML::CalculateRemoteSurfaceFlipDelay: RemoteSurfaceFlipDelay: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.display_mode_lib*, double, double, double, double, double, double, double, double, double, double, double, double, double, double*, double*, double*)* @CalculateRemoteSurfaceFlipDelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @CalculateRemoteSurfaceFlipDelay(%struct.display_mode_lib* %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9, double %10, double %11, double %12, double %13, double* %14, double* %15, double* %16) #0 {
  %18 = alloca %struct.display_mode_lib*, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double*, align 8
  %33 = alloca double*, align 8
  %34 = alloca double*, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %18, align 8
  store double %1, double* %19, align 8
  store double %2, double* %20, align 8
  store double %3, double* %21, align 8
  store double %4, double* %22, align 8
  store double %5, double* %23, align 8
  store double %6, double* %24, align 8
  store double %7, double* %25, align 8
  store double %8, double* %26, align 8
  store double %9, double* %27, align 8
  store double %10, double* %28, align 8
  store double %11, double* %29, align 8
  store double %12, double* %30, align 8
  store double %13, double* %31, align 8
  store double* %14, double** %32, align 8
  store double* %15, double** %33, align 8
  store double* %16, double** %34, align 8
  %38 = load double, double* %19, align 8
  %39 = load double, double* %20, align 8
  %40 = fmul double %38, %39
  %41 = load double, double* %21, align 8
  %42 = fmul double %40, %41
  %43 = load double, double* %22, align 8
  %44 = fdiv double %42, %43
  %45 = load double*, double** %32, align 8
  store double %44, double* %45, align 8
  %46 = load double, double* %23, align 8
  %47 = load double, double* %24, align 8
  %48 = fadd double %46, %47
  %49 = load double, double* %25, align 8
  %50 = fadd double %48, %49
  store double %50, double* %35, align 8
  %51 = load double, double* %26, align 8
  %52 = load double, double* %27, align 8
  %53 = fdiv double %52, 1.000000e+02
  %54 = fadd double 1.000000e+00, %53
  %55 = fdiv double %51, %54
  %56 = load double*, double** %33, align 8
  store double %55, double* %56, align 8
  %57 = load double*, double** %32, align 8
  %58 = load double, double* %57, align 8
  %59 = load double, double* %27, align 8
  %60 = fdiv double %59, 1.000000e+02
  %61 = fadd double 1.000000e+00, %60
  %62 = fmul double %58, %61
  store double %62, double* %36, align 8
  %63 = load double, double* %28, align 8
  %64 = load double, double* %36, align 8
  %65 = fdiv double %63, %64
  %66 = load double*, double** %34, align 8
  store double %65, double* %66, align 8
  %67 = load double*, double** %32, align 8
  %68 = load double, double* %67, align 8
  %69 = call i32 @dml_print(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), double %68)
  %70 = load double, double* %35, align 8
  %71 = call i32 @dml_print(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), double %70)
  %72 = load double*, double** %33, align 8
  %73 = load double, double* %72, align 8
  %74 = call i32 @dml_print(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), double %73)
  %75 = load double, double* %36, align 8
  %76 = call i32 @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), double %75)
  %77 = load double*, double** %34, align 8
  %78 = load double, double* %77, align 8
  %79 = call i32 @dml_print(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), double %78)
  %80 = load double, double* %29, align 8
  %81 = fmul double 2.000000e+00, %80
  %82 = load double, double* %35, align 8
  %83 = fadd double %81, %82
  %84 = load double, double* %30, align 8
  %85 = fadd double %83, %84
  %86 = load double, double* %31, align 8
  %87 = fadd double %85, %86
  %88 = load double*, double** %34, align 8
  %89 = load double, double* %88, align 8
  %90 = fadd double %87, %89
  %91 = load double*, double** %33, align 8
  %92 = load double, double* %91, align 8
  %93 = fadd double %90, %92
  store double %93, double* %37, align 8
  %94 = load double, double* %37, align 8
  %95 = call i32 @dml_print(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), double %94)
  %96 = load double, double* %37, align 8
  ret double %96
}

declare dso_local i32 @dml_print(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
