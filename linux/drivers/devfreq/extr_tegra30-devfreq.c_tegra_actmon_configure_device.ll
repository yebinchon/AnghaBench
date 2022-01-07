; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_actmon_configure_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_actmon_configure_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_devfreq = type { i32 }
%struct.tegra_devfreq_device = type { i32, i32 }

@ACTMON_SAMPLING_PERIOD = common dso_local global i32 0, align 4
@ACTMON_DEV_INIT_AVG = common dso_local global i32 0, align 4
@ACTMON_COUNT_WEIGHT = common dso_local global i32 0, align 4
@ACTMON_DEV_COUNT_WEIGHT = common dso_local global i32 0, align 4
@ACTMON_INTR_STATUS_CLEAR = common dso_local global i32 0, align 4
@ACTMON_DEV_INTR_STATUS = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL_ENB_PERIODIC = common dso_local global i32 0, align 4
@ACTMON_AVERAGE_WINDOW_LOG2 = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL_K_VAL_SHIFT = common dso_local global i32 0, align 4
@ACTMON_BELOW_WMARK_WINDOW = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL_CONSECUTIVE_BELOW_WMARK_NUM_SHIFT = common dso_local global i32 0, align 4
@ACTMON_ABOVE_WMARK_WINDOW = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL_CONSECUTIVE_ABOVE_WMARK_NUM_SHIFT = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL_AVG_ABOVE_WMARK_EN = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL_AVG_BELOW_WMARK_EN = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL_CONSECUTIVE_BELOW_WMARK_EN = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL_CONSECUTIVE_ABOVE_WMARK_EN = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL_ENB = common dso_local global i32 0, align 4
@ACTMON_DEV_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_devfreq*, %struct.tegra_devfreq_device*)* @tegra_actmon_configure_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_actmon_configure_device(%struct.tegra_devfreq* %0, %struct.tegra_devfreq_device* %1) #0 {
  %3 = alloca %struct.tegra_devfreq*, align 8
  %4 = alloca %struct.tegra_devfreq_device*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_devfreq* %0, %struct.tegra_devfreq** %3, align 8
  store %struct.tegra_devfreq_device* %1, %struct.tegra_devfreq_device** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ACTMON_SAMPLING_PERIOD, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %19 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ACTMON_DEV_INIT_AVG, align 4
  %23 = call i32 @device_writel(%struct.tegra_devfreq_device* %18, i32 %21, i32 %22)
  %24 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %25 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %26 = call i32 @tegra_devfreq_update_avg_wmark(%struct.tegra_devfreq* %24, %struct.tegra_devfreq_device* %25)
  %27 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %28 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %29 = call i32 @tegra_devfreq_update_wmark(%struct.tegra_devfreq* %27, %struct.tegra_devfreq_device* %28)
  %30 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %31 = load i32, i32* @ACTMON_COUNT_WEIGHT, align 4
  %32 = load i32, i32* @ACTMON_DEV_COUNT_WEIGHT, align 4
  %33 = call i32 @device_writel(%struct.tegra_devfreq_device* %30, i32 %31, i32 %32)
  %34 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %35 = load i32, i32* @ACTMON_INTR_STATUS_CLEAR, align 4
  %36 = load i32, i32* @ACTMON_DEV_INTR_STATUS, align 4
  %37 = call i32 @device_writel(%struct.tegra_devfreq_device* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @ACTMON_DEV_CTRL_ENB_PERIODIC, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @ACTMON_AVERAGE_WINDOW_LOG2, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* @ACTMON_DEV_CTRL_K_VAL_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @ACTMON_BELOW_WMARK_WINDOW, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @ACTMON_DEV_CTRL_CONSECUTIVE_BELOW_WMARK_NUM_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @ACTMON_ABOVE_WMARK_WINDOW, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* @ACTMON_DEV_CTRL_CONSECUTIVE_ABOVE_WMARK_NUM_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @ACTMON_DEV_CTRL_AVG_ABOVE_WMARK_EN, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @ACTMON_DEV_CTRL_AVG_BELOW_WMARK_EN, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @ACTMON_DEV_CTRL_CONSECUTIVE_BELOW_WMARK_EN, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @ACTMON_DEV_CTRL_CONSECUTIVE_ABOVE_WMARK_EN, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @ACTMON_DEV_CTRL_ENB, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @ACTMON_DEV_CTRL, align 4
  %77 = call i32 @device_writel(%struct.tegra_devfreq_device* %74, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @device_writel(%struct.tegra_devfreq_device*, i32, i32) #1

declare dso_local i32 @tegra_devfreq_update_avg_wmark(%struct.tegra_devfreq*, %struct.tegra_devfreq_device*) #1

declare dso_local i32 @tegra_devfreq_update_wmark(%struct.tegra_devfreq*, %struct.tegra_devfreq_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
