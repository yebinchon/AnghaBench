; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_lvds = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RK3288_LVDS_CFG_REG21 = common dso_local global i32 0, align 4
@RK3288_LVDS_CFG_REG21_TX_ENABLE = common dso_local global i32 0, align 4
@RK3288_LVDS_CFG_REGC = common dso_local global i32 0, align 4
@RK3288_LVDS_CFG_REGC_PLL_ENABLE = common dso_local global i32 0, align 4
@LVDS_DUAL = common dso_local global i32 0, align 4
@LVDS_TTL_EN = common dso_local global i32 0, align 4
@LVDS_CH0_EN = common dso_local global i32 0, align 4
@LVDS_CH1_EN = common dso_local global i32 0, align 4
@LVDS_PWRDN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not write to GRF: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_lvds*)* @rockchip_lvds_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_lvds_poweroff(%struct.rockchip_lvds* %0) #0 {
  %2 = alloca %struct.rockchip_lvds*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rockchip_lvds* %0, %struct.rockchip_lvds** %2, align 8
  %5 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %2, align 8
  %6 = load i32, i32* @RK3288_LVDS_CFG_REG21, align 4
  %7 = load i32, i32* @RK3288_LVDS_CFG_REG21_TX_ENABLE, align 4
  %8 = call i32 @lvds_writel(%struct.rockchip_lvds* %5, i32 %6, i32 %7)
  %9 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %2, align 8
  %10 = load i32, i32* @RK3288_LVDS_CFG_REGC, align 4
  %11 = load i32, i32* @RK3288_LVDS_CFG_REGC_PLL_ENABLE, align 4
  %12 = call i32 @lvds_writel(%struct.rockchip_lvds* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @LVDS_DUAL, align 4
  %14 = load i32, i32* @LVDS_TTL_EN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @LVDS_CH0_EN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @LVDS_CH1_EN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @LVDS_PWRDN, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %22, 16
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %2, align 8
  %27 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %2, align 8
  %30 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @regmap_write(i32 %28, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %1
  %39 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %2, align 8
  %40 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @DRM_DEV_ERROR(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %1
  %45 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %2, align 8
  %46 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pm_runtime_put(i32 %47)
  %49 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %2, align 8
  %50 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @clk_disable(i32 %51)
  ret void
}

declare dso_local i32 @lvds_writel(%struct.rockchip_lvds*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
