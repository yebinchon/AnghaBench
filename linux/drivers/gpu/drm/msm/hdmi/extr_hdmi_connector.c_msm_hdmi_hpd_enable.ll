; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_hpd_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_hpd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.hdmi_connector = type { %struct.hdmi* }
%struct.hdmi = type { i32, i32*, %struct.TYPE_2__*, %struct.hdmi_platform_config* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hdmi_platform_config = type { i32, i32* }

@.str = private unnamed_addr constant [41 x i8] c"failed to enable hpd regulator: %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"pinctrl state chg failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to configure GPIOs: %d\0A\00", align 1
@REG_HDMI_USEC_REFTIMER = common dso_local global i32 0, align 4
@REG_HDMI_HPD_INT_CTRL = common dso_local global i32 0, align 4
@HDMI_HPD_INT_CTRL_INT_CONNECT = common dso_local global i32 0, align 4
@HDMI_HPD_INT_CTRL_INT_EN = common dso_local global i32 0, align 4
@REG_HDMI_HPD_CTRL = common dso_local global i32 0, align 4
@HDMI_HPD_CTRL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_hdmi_hpd_enable(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.hdmi_connector*, align 8
  %5 = alloca %struct.hdmi*, align 8
  %6 = alloca %struct.hdmi_platform_config*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = call %struct.hdmi_connector* @to_hdmi_connector(%struct.drm_connector* %12)
  store %struct.hdmi_connector* %13, %struct.hdmi_connector** %4, align 8
  %14 = load %struct.hdmi_connector*, %struct.hdmi_connector** %4, align 8
  %15 = getelementptr inbounds %struct.hdmi_connector, %struct.hdmi_connector* %14, i32 0, i32 0
  %16 = load %struct.hdmi*, %struct.hdmi** %15, align 8
  store %struct.hdmi* %16, %struct.hdmi** %5, align 8
  %17 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %18 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %17, i32 0, i32 3
  %19 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %18, align 8
  store %struct.hdmi_platform_config* %19, %struct.hdmi_platform_config** %6, align 8
  %20 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %21 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %53, %1
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  %27 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %32 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @regulator_enable(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %30
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  %44 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (%struct.device*, i8*, i32, ...) @DRM_DEV_ERROR(%struct.device* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %121

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %24

56:                                               ; preds = %24
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = call i32 @pinctrl_pm_select_default_state(%struct.device* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (%struct.device*, i8*, i32, ...) @DRM_DEV_ERROR(%struct.device* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %121

65:                                               ; preds = %56
  %66 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %67 = call i32 @gpio_config(%struct.hdmi* %66, i32 1)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 (%struct.device*, i8*, i32, ...) @DRM_DEV_ERROR(%struct.device* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %121

74:                                               ; preds = %65
  %75 = load %struct.device*, %struct.device** %7, align 8
  %76 = call i32 @pm_runtime_get_sync(%struct.device* %75)
  %77 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %78 = call i32 @enable_hpd_clocks(%struct.hdmi* %77, i32 1)
  %79 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %80 = call i32 @msm_hdmi_set_mode(%struct.hdmi* %79, i32 0)
  %81 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %82 = call i32 @msm_hdmi_phy_reset(%struct.hdmi* %81)
  %83 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %84 = call i32 @msm_hdmi_set_mode(%struct.hdmi* %83, i32 1)
  %85 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %86 = load i32, i32* @REG_HDMI_USEC_REFTIMER, align 4
  %87 = call i32 @hdmi_write(%struct.hdmi* %85, i32 %86, i32 65563)
  %88 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %89 = load i32, i32* @REG_HDMI_HPD_INT_CTRL, align 4
  %90 = load i32, i32* @HDMI_HPD_INT_CTRL_INT_CONNECT, align 4
  %91 = load i32, i32* @HDMI_HPD_INT_CTRL_INT_EN, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @hdmi_write(%struct.hdmi* %88, i32 %89, i32 %92)
  %94 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %95 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %94, i32 0, i32 0
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @spin_lock_irqsave(i32* %95, i64 %96)
  %98 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %99 = load i32, i32* @REG_HDMI_HPD_CTRL, align 4
  %100 = call i32 @hdmi_read(%struct.hdmi* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = call i32 @HDMI_HPD_CTRL_TIMEOUT(i32 8191)
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %105 = load i32, i32* @REG_HDMI_HPD_CTRL, align 4
  %106 = load i32, i32* @HDMI_HPD_CTRL_ENABLE, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %107, %108
  %110 = call i32 @hdmi_write(%struct.hdmi* %104, i32 %105, i32 %109)
  %111 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %112 = load i32, i32* @REG_HDMI_HPD_CTRL, align 4
  %113 = load i32, i32* @HDMI_HPD_CTRL_ENABLE, align 4
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @hdmi_write(%struct.hdmi* %111, i32 %112, i32 %115)
  %117 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %118 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %117, i32 0, i32 0
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  store i32 0, i32* %2, align 4
  br label %123

121:                                              ; preds = %70, %61, %41
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %74
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.hdmi_connector* @to_hdmi_connector(%struct.drm_connector*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @pinctrl_pm_select_default_state(%struct.device*) #1

declare dso_local i32 @gpio_config(%struct.hdmi*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @enable_hpd_clocks(%struct.hdmi*, i32) #1

declare dso_local i32 @msm_hdmi_set_mode(%struct.hdmi*, i32) #1

declare dso_local i32 @msm_hdmi_phy_reset(%struct.hdmi*) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @HDMI_HPD_CTRL_TIMEOUT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
