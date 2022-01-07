; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_devfreq_get_dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_devfreq_get_dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devfreq_dev_status = type { i64, i32, i64, %struct.tegra_devfreq* }
%struct.tegra_devfreq = type { %struct.tegra_devfreq_device*, i32 }
%struct.tegra_devfreq_device = type { i32 }

@KHZ = common dso_local global i64 0, align 8
@MCALL = common dso_local global i64 0, align 8
@ACTMON_DEV_AVG_COUNT = common dso_local global i32 0, align 4
@BUS_SATURATION_RATIO = common dso_local global i32 0, align 4
@ACTMON_SAMPLING_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.devfreq_dev_status*)* @tegra_devfreq_get_dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_devfreq_get_dev_status(%struct.device* %0, %struct.devfreq_dev_status* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.devfreq_dev_status*, align 8
  %5 = alloca %struct.tegra_devfreq*, align 8
  %6 = alloca %struct.tegra_devfreq_device*, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.devfreq_dev_status* %1, %struct.devfreq_dev_status** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.tegra_devfreq* @dev_get_drvdata(%struct.device* %8)
  store %struct.tegra_devfreq* %9, %struct.tegra_devfreq** %5, align 8
  %10 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @READ_ONCE(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %15 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %16 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %15, i32 0, i32 3
  store %struct.tegra_devfreq* %14, %struct.tegra_devfreq** %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @KHZ, align 8
  %19 = mul i64 %17, %18
  %20 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %21 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %23 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %22, i32 0, i32 0
  %24 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %23, align 8
  %25 = load i64, i64* @MCALL, align 8
  %26 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %24, i64 %25
  store %struct.tegra_devfreq_device* %26, %struct.tegra_devfreq_device** %6, align 8
  %27 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %6, align 8
  %28 = load i32, i32* @ACTMON_DEV_AVG_COUNT, align 4
  %29 = call i32 @device_readl(%struct.tegra_devfreq_device* %27, i32 %28)
  %30 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %31 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @BUS_SATURATION_RATIO, align 4
  %33 = sdiv i32 100, %32
  %34 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %35 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i64, i64* @ACTMON_SAMPLING_PERIOD, align 8
  %39 = load i64, i64* %7, align 8
  %40 = mul i64 %38, %39
  %41 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %42 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %44 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %47 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @min(i32 %45, i64 %48)
  %50 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %51 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  ret i32 0
}

declare dso_local %struct.tegra_devfreq* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @device_readl(%struct.tegra_devfreq_device*, i32) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
