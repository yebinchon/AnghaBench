; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_devfreq_update_avg_wmark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_devfreq_update_avg_wmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_devfreq = type { i32 }
%struct.tegra_devfreq_device = type { i32 }

@ACTMON_DEFAULT_AVG_BAND = common dso_local global i32 0, align 4
@KHZ = common dso_local global i32 0, align 4
@ACTMON_SAMPLING_PERIOD = common dso_local global i32 0, align 4
@ACTMON_DEV_AVG_UPPER_WMARK = common dso_local global i32 0, align 4
@ACTMON_DEV_AVG_LOWER_WMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_devfreq*, %struct.tegra_devfreq_device*)* @tegra_devfreq_update_avg_wmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_devfreq_update_avg_wmark(%struct.tegra_devfreq* %0, %struct.tegra_devfreq_device* %1) #0 {
  %3 = alloca %struct.tegra_devfreq*, align 8
  %4 = alloca %struct.tegra_devfreq_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_devfreq* %0, %struct.tegra_devfreq** %3, align 8
  store %struct.tegra_devfreq_device* %1, %struct.tegra_devfreq_device** %4, align 8
  %8 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ACTMON_DEFAULT_AVG_BAND, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* @KHZ, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ACTMON_SAMPLING_PERIOD, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @ACTMON_DEV_AVG_UPPER_WMARK, align 4
  %26 = call i32 @device_writel(%struct.tegra_devfreq_device* %21, i32 %24, i32 %25)
  %27 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @max(i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* @ACTMON_DEV_AVG_LOWER_WMARK, align 4
  %37 = call i32 @device_writel(%struct.tegra_devfreq_device* %32, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @device_writel(%struct.tegra_devfreq_device*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
