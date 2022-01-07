; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_math.c_dcn_bw_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_math.c_dcn_bw_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @dcn_bw_log(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %9 = bitcast float* %4 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = ashr i32 %12, 23
  %14 = and i32 %13, 255
  %15 = sub nsw i32 %14, 128
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, -2139095041
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1065353216
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = load float, float* %4, align 4
  %23 = fmul float 0xBFD5555560000000, %22
  %24 = fadd float %23, 2.000000e+00
  %25 = load float, float* %4, align 4
  %26 = fmul float %24, %25
  %27 = fsub float %26, 0x3FE5555560000000
  store float %27, float* %4, align 4
  %28 = load float, float* %5, align 4
  %29 = fpext float %28 to double
  %30 = fcmp ogt double %29, 2.000010e+00
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = load float, float* %5, align 4
  %33 = fpext float %32 to double
  %34 = fcmp olt double %33, 1.999990e+00
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %2
  %36 = load float, float* %4, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sitofp i32 %37 to float
  %39 = fadd float %36, %38
  %40 = load float, float* %5, align 4
  %41 = call float @dcn_bw_log(float %40, float 2.000000e+00)
  %42 = fdiv float %39, %41
  store float %42, float* %3, align 4
  br label %48

43:                                               ; preds = %31
  %44 = load float, float* %4, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sitofp i32 %45 to float
  %47 = fadd float %44, %46
  store float %47, float* %3, align 4
  br label %48

48:                                               ; preds = %43, %35
  %49 = load float, float* %3, align 4
  ret float %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
