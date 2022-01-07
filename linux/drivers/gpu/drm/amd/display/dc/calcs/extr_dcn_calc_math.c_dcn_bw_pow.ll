; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_math.c_dcn_bw_pow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_math.c_dcn_bw_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @dcn_bw_pow(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %7 = load float, float* %5, align 4
  %8 = fptosi float %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store float 1.000000e+00, float* %3, align 4
  br label %42

11:                                               ; preds = %2
  %12 = load float, float* %4, align 4
  %13 = load float, float* %5, align 4
  %14 = fdiv float %13, 2.000000e+00
  %15 = fptosi float %14 to i32
  %16 = sitofp i32 %15 to float
  %17 = call float @dcn_bw_pow(float %12, float %16)
  store float %17, float* %6, align 4
  %18 = load float, float* %5, align 4
  %19 = fptosi float %18 to i32
  %20 = srem i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load float, float* %6, align 4
  %24 = load float, float* %6, align 4
  %25 = fmul float %23, %24
  store float %25, float* %3, align 4
  br label %42

26:                                               ; preds = %11
  %27 = load float, float* %5, align 4
  %28 = fptosi float %27 to i32
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load float, float* %4, align 4
  %32 = load float, float* %6, align 4
  %33 = fmul float %31, %32
  %34 = load float, float* %6, align 4
  %35 = fmul float %33, %34
  store float %35, float* %3, align 4
  br label %42

36:                                               ; preds = %26
  %37 = load float, float* %6, align 4
  %38 = load float, float* %6, align 4
  %39 = fmul float %37, %38
  %40 = load float, float* %4, align 4
  %41 = fdiv float %39, %40
  store float %41, float* %3, align 4
  br label %42

42:                                               ; preds = %36, %30, %22, %10
  %43 = load float, float* %3, align 4
  ret float %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
