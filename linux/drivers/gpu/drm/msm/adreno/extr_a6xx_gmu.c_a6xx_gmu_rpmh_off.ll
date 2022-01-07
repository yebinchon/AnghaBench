; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_rpmh_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_rpmh_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }

@REG_A6XX_RSCC_TCS0_DRV0_STATUS = common dso_local global i32 0, align 4
@REG_A6XX_RSCC_TCS1_DRV0_STATUS = common dso_local global i32 0, align 4
@REG_A6XX_RSCC_TCS2_DRV0_STATUS = common dso_local global i32 0, align 4
@REG_A6XX_RSCC_TCS3_DRV0_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a6xx_gmu*)* @a6xx_gmu_rpmh_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_gmu_rpmh_off(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca %struct.a6xx_gmu*, align 8
  %3 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %2, align 8
  %4 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %5 = load i32, i32* @REG_A6XX_RSCC_TCS0_DRV0_STATUS, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 1
  %9 = call i32 @gmu_poll_timeout(%struct.a6xx_gmu* %4, i32 %5, i32 %6, i32 %8, i32 100, i32 10000)
  %10 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %11 = load i32, i32* @REG_A6XX_RSCC_TCS1_DRV0_STATUS, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 1
  %15 = call i32 @gmu_poll_timeout(%struct.a6xx_gmu* %10, i32 %11, i32 %12, i32 %14, i32 100, i32 10000)
  %16 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %17 = load i32, i32* @REG_A6XX_RSCC_TCS2_DRV0_STATUS, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 1
  %21 = call i32 @gmu_poll_timeout(%struct.a6xx_gmu* %16, i32 %17, i32 %18, i32 %20, i32 100, i32 10000)
  %22 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %23 = load i32, i32* @REG_A6XX_RSCC_TCS3_DRV0_STATUS, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 1
  %27 = call i32 @gmu_poll_timeout(%struct.a6xx_gmu* %22, i32 %23, i32 %24, i32 %26, i32 100, i32 1000)
  ret void
}

declare dso_local i32 @gmu_poll_timeout(%struct.a6xx_gmu*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
