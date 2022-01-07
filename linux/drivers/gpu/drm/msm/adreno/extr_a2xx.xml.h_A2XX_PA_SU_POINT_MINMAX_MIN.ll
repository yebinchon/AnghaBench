; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx.xml.h_A2XX_PA_SU_POINT_MINMAX_MIN.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a2xx.xml.h_A2XX_PA_SU_POINT_MINMAX_MIN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A2XX_PA_SU_POINT_MINMAX_MIN__SHIFT = common dso_local global i32 0, align 4
@A2XX_PA_SU_POINT_MINMAX_MIN__MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float)* @A2XX_PA_SU_POINT_MINMAX_MIN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @A2XX_PA_SU_POINT_MINMAX_MIN(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fpext float %3 to double
  %5 = fmul double %4, 1.600000e+01
  %6 = fptosi double %5 to i32
  %7 = load i32, i32* @A2XX_PA_SU_POINT_MINMAX_MIN__SHIFT, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* @A2XX_PA_SU_POINT_MINMAX_MIN__MASK, align 4
  %10 = and i32 %8, %9
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
