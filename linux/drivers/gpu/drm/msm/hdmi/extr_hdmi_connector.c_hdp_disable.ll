; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_hdp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_hdp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_connector = type { %struct.hdmi* }
%struct.hdmi = type { i32*, %struct.TYPE_2__*, %struct.hdmi_platform_config* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hdmi_platform_config = type { i32, i32* }

@REG_HDMI_HPD_INT_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to unconfigure GPIOs: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"pinctrl state chg failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to disable hpd regulator: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_connector*)* @hdp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdp_disable(%struct.hdmi_connector* %0) #0 {
  %2 = alloca %struct.hdmi_connector*, align 8
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca %struct.hdmi_platform_config*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdmi_connector* %0, %struct.hdmi_connector** %2, align 8
  %8 = load %struct.hdmi_connector*, %struct.hdmi_connector** %2, align 8
  %9 = getelementptr inbounds %struct.hdmi_connector, %struct.hdmi_connector* %8, i32 0, i32 0
  %10 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  store %struct.hdmi* %10, %struct.hdmi** %3, align 8
  %11 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %12 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %11, i32 0, i32 2
  %13 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %12, align 8
  store %struct.hdmi_platform_config* %13, %struct.hdmi_platform_config** %4, align 8
  %14 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %15 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %19 = load i32, i32* @REG_HDMI_HPD_INT_CTRL, align 4
  %20 = call i32 @hdmi_write(%struct.hdmi* %18, i32 %19, i32 0)
  %21 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %22 = call i32 @msm_hdmi_set_mode(%struct.hdmi* %21, i32 0)
  %23 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %24 = call i32 @enable_hpd_clocks(%struct.hdmi* %23, i32 0)
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i32 @pm_runtime_put_autosuspend(%struct.device* %25)
  %27 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %28 = call i32 @gpio_config(%struct.hdmi* %27, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @pinctrl_pm_select_sleep_state(%struct.device* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %35
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %74, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %48 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %45
  %52 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %53 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regulator_disable(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %51
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %65 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %62, %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %45

77:                                               ; preds = %45
  ret void
}

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @msm_hdmi_set_mode(%struct.hdmi*, i32) #1

declare dso_local i32 @enable_hpd_clocks(%struct.hdmi*, i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @gpio_config(%struct.hdmi*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @pinctrl_pm_select_sleep_state(%struct.device*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
