; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra20-devfreq.c_tegra_devfreq_get_dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra20-devfreq.c_tegra_devfreq_get_dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devfreq_dev_status = type { i32, i32, i32 }
%struct.tegra_devfreq = type { i64, i32 }

@MC_STAT_EMC_COUNT = common dso_local global i64 0, align 8
@MC_STAT_EMC_CLOCKS = common dso_local global i64 0, align 8
@EMC_GATHER_CLEAR = common dso_local global i32 0, align 4
@MC_STAT_CONTROL = common dso_local global i64 0, align 8
@EMC_GATHER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.devfreq_dev_status*)* @tegra_devfreq_get_dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_devfreq_get_dev_status(%struct.device* %0, %struct.devfreq_dev_status* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.devfreq_dev_status*, align 8
  %5 = alloca %struct.tegra_devfreq*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.devfreq_dev_status* %1, %struct.devfreq_dev_status** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.tegra_devfreq* @dev_get_drvdata(%struct.device* %6)
  store %struct.tegra_devfreq* %7, %struct.tegra_devfreq** %5, align 8
  %8 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %9 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MC_STAT_EMC_COUNT, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl_relaxed(i64 %12)
  %14 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %15 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %17 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MC_STAT_EMC_CLOCKS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  %22 = sdiv i32 %21, 8
  %23 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %24 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_get_rate(i32 %27)
  %29 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %30 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @EMC_GATHER_CLEAR, align 4
  %32 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MC_STAT_CONTROL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel_relaxed(i32 %31, i64 %36)
  %38 = load i32, i32* @EMC_GATHER_ENABLE, align 4
  %39 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %40 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MC_STAT_CONTROL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel_relaxed(i32 %38, i64 %43)
  ret i32 0
}

declare dso_local %struct.tegra_devfreq* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
