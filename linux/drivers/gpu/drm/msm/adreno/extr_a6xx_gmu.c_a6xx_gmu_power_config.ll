; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_power_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_power_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }

@REG_A6XX_GMU_SYS_BUS_CONFIG = common dso_local global i32 0, align 4
@REG_A6XX_GMU_PWR_COL_INTER_FRAME_CTRL = common dso_local global i32 0, align 4
@REG_A6XX_GMU_PWR_COL_INTER_FRAME_HYST = common dso_local global i32 0, align 4
@GMU_PWR_COL_HYST = common dso_local global i32 0, align 4
@A6XX_GMU_PWR_COL_INTER_FRAME_CTRL_IFPC_ENABLE = common dso_local global i32 0, align 4
@A6XX_GMU_PWR_COL_INTER_FRAME_CTRL_HM_POWER_COLLAPSE_ENABLE = common dso_local global i32 0, align 4
@REG_A6XX_GMU_PWR_COL_SPTPRAC_HYST = common dso_local global i32 0, align 4
@A6XX_GMU_PWR_COL_INTER_FRAME_CTRL_SPTPRAC_POWER_CONTROL_ENABLE = common dso_local global i32 0, align 4
@REG_A6XX_GMU_RPMH_CTRL = common dso_local global i32 0, align 4
@A6XX_GMU_RPMH_CTRL_RPMH_INTERFACE_ENABLE = common dso_local global i32 0, align 4
@A6XX_GMU_RPMH_CTRL_LLC_VOTE_ENABLE = common dso_local global i32 0, align 4
@A6XX_GMU_RPMH_CTRL_DDR_VOTE_ENABLE = common dso_local global i32 0, align 4
@A6XX_GMU_RPMH_CTRL_MX_VOTE_ENABLE = common dso_local global i32 0, align 4
@A6XX_GMU_RPMH_CTRL_CX_VOTE_ENABLE = common dso_local global i32 0, align 4
@A6XX_GMU_RPMH_CTRL_GFX_VOTE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a6xx_gmu*)* @a6xx_gmu_power_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_gmu_power_config(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca %struct.a6xx_gmu*, align 8
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %2, align 8
  %3 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %4 = load i32, i32* @REG_A6XX_GMU_SYS_BUS_CONFIG, align 4
  %5 = call i32 @gmu_write(%struct.a6xx_gmu* %3, i32 %4, i32 1)
  %6 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %7 = load i32, i32* @REG_A6XX_GMU_PWR_COL_INTER_FRAME_CTRL, align 4
  %8 = call i32 @gmu_write(%struct.a6xx_gmu* %6, i32 %7, i32 163841024)
  %9 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %10 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %34 [
    i32 129, label %12
    i32 128, label %23
  ]

12:                                               ; preds = %1
  %13 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %14 = load i32, i32* @REG_A6XX_GMU_PWR_COL_INTER_FRAME_HYST, align 4
  %15 = load i32, i32* @GMU_PWR_COL_HYST, align 4
  %16 = call i32 @gmu_write(%struct.a6xx_gmu* %13, i32 %14, i32 %15)
  %17 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %18 = load i32, i32* @REG_A6XX_GMU_PWR_COL_INTER_FRAME_CTRL, align 4
  %19 = load i32, i32* @A6XX_GMU_PWR_COL_INTER_FRAME_CTRL_IFPC_ENABLE, align 4
  %20 = load i32, i32* @A6XX_GMU_PWR_COL_INTER_FRAME_CTRL_HM_POWER_COLLAPSE_ENABLE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @gmu_rmw(%struct.a6xx_gmu* %17, i32 %18, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %1, %12
  %24 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %25 = load i32, i32* @REG_A6XX_GMU_PWR_COL_SPTPRAC_HYST, align 4
  %26 = load i32, i32* @GMU_PWR_COL_HYST, align 4
  %27 = call i32 @gmu_write(%struct.a6xx_gmu* %24, i32 %25, i32 %26)
  %28 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %29 = load i32, i32* @REG_A6XX_GMU_PWR_COL_INTER_FRAME_CTRL, align 4
  %30 = load i32, i32* @A6XX_GMU_PWR_COL_INTER_FRAME_CTRL_IFPC_ENABLE, align 4
  %31 = load i32, i32* @A6XX_GMU_PWR_COL_INTER_FRAME_CTRL_SPTPRAC_POWER_CONTROL_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @gmu_rmw(%struct.a6xx_gmu* %28, i32 %29, i32 0, i32 %32)
  br label %34

34:                                               ; preds = %23, %1
  %35 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %36 = load i32, i32* @REG_A6XX_GMU_RPMH_CTRL, align 4
  %37 = load i32, i32* @A6XX_GMU_RPMH_CTRL_RPMH_INTERFACE_ENABLE, align 4
  %38 = load i32, i32* @A6XX_GMU_RPMH_CTRL_LLC_VOTE_ENABLE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @A6XX_GMU_RPMH_CTRL_DDR_VOTE_ENABLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @A6XX_GMU_RPMH_CTRL_MX_VOTE_ENABLE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @A6XX_GMU_RPMH_CTRL_CX_VOTE_ENABLE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @A6XX_GMU_RPMH_CTRL_GFX_VOTE_ENABLE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @gmu_rmw(%struct.a6xx_gmu* %35, i32 %36, i32 0, i32 %47)
  ret void
}

declare dso_local i32 @gmu_write(%struct.a6xx_gmu*, i32, i32) #1

declare dso_local i32 @gmu_rmw(%struct.a6xx_gmu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
