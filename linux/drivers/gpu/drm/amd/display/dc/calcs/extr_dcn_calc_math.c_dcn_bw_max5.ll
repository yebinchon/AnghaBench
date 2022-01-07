; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_math.c_dcn_bw_max5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calc_math.c_dcn_bw_max5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @dcn_bw_max5(float %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %11 = load float, float* %6, align 4
  %12 = load float, float* %7, align 4
  %13 = load float, float* %8, align 4
  %14 = call float @dcn_bw_max3(float %11, float %12, float %13)
  %15 = load float, float* %9, align 4
  %16 = load float, float* %10, align 4
  %17 = call float @dcn_bw_max2(float %15, float %16)
  %18 = fcmp ogt float %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load float, float* %6, align 4
  %21 = load float, float* %7, align 4
  %22 = load float, float* %8, align 4
  %23 = call float @dcn_bw_max3(float %20, float %21, float %22)
  br label %28

24:                                               ; preds = %5
  %25 = load float, float* %9, align 4
  %26 = load float, float* %10, align 4
  %27 = call float @dcn_bw_max2(float %25, float %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi float [ %23, %19 ], [ %27, %24 ]
  ret float %29
}

declare dso_local float @dcn_bw_max3(float, float, float) #1

declare dso_local float @dcn_bw_max2(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
