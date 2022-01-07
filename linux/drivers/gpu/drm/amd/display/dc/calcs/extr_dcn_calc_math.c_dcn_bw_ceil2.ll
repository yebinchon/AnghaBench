; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_math.c_dcn_bw_ceil2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_math.c_dcn_bw_ceil2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @dcn_bw_ceil2(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = call float @dcn_bw_floor2(float %7, float %8)
  store float %9, float* %6, align 4
  %10 = load float, float* %5, align 4
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load float, float* %6, align 4
  %15 = fpext float %14 to double
  %16 = fadd double %15, 1.000000e-05
  %17 = load float, float* %4, align 4
  %18 = fpext float %17 to double
  %19 = fcmp oge double %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load float, float* %4, align 4
  br label %26

22:                                               ; preds = %13
  %23 = load float, float* %6, align 4
  %24 = load float, float* %5, align 4
  %25 = fadd float %23, %24
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi float [ %21, %20 ], [ %25, %22 ]
  store float %27, float* %3, align 4
  br label %28

28:                                               ; preds = %26, %12
  %29 = load float, float* %3, align 4
  ret float %29
}

declare dso_local float @dcn_bw_floor2(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
