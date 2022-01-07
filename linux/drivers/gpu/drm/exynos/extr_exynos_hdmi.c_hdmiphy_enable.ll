; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmiphy_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmiphy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { i32, i32, i32, i32 }

@supply = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to enable regulator bulk\0A\00", align 1
@PMU_HDMI_PHY_CONTROL = common dso_local global i32 0, align 4
@PMU_HDMI_PHY_ENABLE_BIT = common dso_local global i32 0, align 4
@HDMI_PHY_CON_0 = common dso_local global i32 0, align 4
@HDMI_PHY_POWER_OFF_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_context*)* @hdmiphy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmiphy_enable(%struct.hdmi_context* %0) #0 {
  %2 = alloca %struct.hdmi_context*, align 8
  store %struct.hdmi_context* %0, %struct.hdmi_context** %2, align 8
  %3 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %42

8:                                                ; preds = %1
  %9 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %10 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pm_runtime_get_sync(i32 %11)
  %13 = load i32, i32* @supply, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %16 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @regulator_bulk_enable(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %8
  %21 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %22 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DRM_DEV_DEBUG_KMS(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %8
  %26 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %27 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PMU_HDMI_PHY_CONTROL, align 4
  %30 = load i32, i32* @PMU_HDMI_PHY_ENABLE_BIT, align 4
  %31 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 1)
  %32 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %33 = call i32 @hdmi_set_refclk(%struct.hdmi_context* %32, i32 1)
  %34 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %35 = load i32, i32* @HDMI_PHY_CON_0, align 4
  %36 = load i32, i32* @HDMI_PHY_POWER_OFF_EN, align 4
  %37 = call i32 @hdmi_reg_writemask(%struct.hdmi_context* %34, i32 %35, i32 0, i32 %36)
  %38 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %39 = call i32 @hdmiphy_conf_apply(%struct.hdmi_context* %38)
  %40 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %41 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %25, %7
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_set_refclk(%struct.hdmi_context*, i32) #1

declare dso_local i32 @hdmi_reg_writemask(%struct.hdmi_context*, i32, i32, i32) #1

declare dso_local i32 @hdmiphy_conf_apply(%struct.hdmi_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
