; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_math.c_dcn_bw_floor2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_math.c_dcn_bw_floor2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @dcn_bw_floor2(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %5, align 4
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %17

9:                                                ; preds = %2
  %10 = load float, float* %4, align 4
  %11 = load float, float* %5, align 4
  %12 = fdiv float %10, %11
  %13 = fptosi float %12 to i32
  %14 = sitofp i32 %13 to float
  %15 = load float, float* %5, align 4
  %16 = fmul float %14, %15
  store float %16, float* %3, align 4
  br label %17

17:                                               ; preds = %9, %8
  %18 = load float, float* %3, align 4
  ret float %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
