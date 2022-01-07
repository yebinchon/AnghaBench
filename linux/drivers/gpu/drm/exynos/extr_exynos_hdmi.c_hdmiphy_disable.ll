; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmiphy_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmiphy_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { i32, i32, i32, i32 }

@HDMI_CON_0 = common dso_local global i32 0, align 4
@HDMI_EN = common dso_local global i32 0, align 4
@HDMI_PHY_CON_0 = common dso_local global i32 0, align 4
@HDMI_PHY_POWER_OFF_EN = common dso_local global i32 0, align 4
@PMU_HDMI_PHY_CONTROL = common dso_local global i32 0, align 4
@PMU_HDMI_PHY_ENABLE_BIT = common dso_local global i32 0, align 4
@supply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_context*)* @hdmiphy_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmiphy_disable(%struct.hdmi_context* %0) #0 {
  %2 = alloca %struct.hdmi_context*, align 8
  store %struct.hdmi_context* %0, %struct.hdmi_context** %2, align 8
  %3 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %10 = load i32, i32* @HDMI_CON_0, align 4
  %11 = load i32, i32* @HDMI_EN, align 4
  %12 = call i32 @hdmi_reg_writemask(%struct.hdmi_context* %9, i32 %10, i32 0, i32 %11)
  %13 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %14 = load i32, i32* @HDMI_PHY_CON_0, align 4
  %15 = load i32, i32* @HDMI_PHY_POWER_OFF_EN, align 4
  %16 = call i32 @hdmi_reg_writemask(%struct.hdmi_context* %13, i32 %14, i32 -1, i32 %15)
  %17 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %18 = call i32 @hdmi_set_refclk(%struct.hdmi_context* %17, i32 0)
  %19 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %20 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PMU_HDMI_PHY_CONTROL, align 4
  %23 = load i32, i32* @PMU_HDMI_PHY_ENABLE_BIT, align 4
  %24 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 0)
  %25 = load i32, i32* @supply, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %28 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regulator_bulk_disable(i32 %26, i32 %29)
  %31 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %32 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pm_runtime_put_sync(i32 %33)
  %35 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %36 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @hdmi_reg_writemask(%struct.hdmi_context*, i32, i32, i32) #1

declare dso_local i32 @hdmi_set_refclk(%struct.hdmi_context*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
