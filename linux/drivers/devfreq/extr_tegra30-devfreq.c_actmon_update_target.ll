; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_actmon_update_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_actmon_update_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_devfreq = type { i32 }
%struct.tegra_devfreq_device = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@ACTMON_SAMPLING_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_devfreq*, %struct.tegra_devfreq_device*)* @actmon_update_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @actmon_update_target(%struct.tegra_devfreq* %0, %struct.tegra_devfreq_device* %1) #0 {
  %3 = alloca %struct.tegra_devfreq*, align 8
  %4 = alloca %struct.tegra_devfreq_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_devfreq* %0, %struct.tegra_devfreq** %3, align 8
  store %struct.tegra_devfreq_device* %1, %struct.tegra_devfreq_device** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = call i64 @cpufreq_get(i32 0)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @actmon_cpu_to_emc_rate(%struct.tegra_devfreq* %16, i64 %17)
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ACTMON_SAMPLING_PERIOD, align 4
  %24 = sdiv i32 %22, %23
  %25 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 10000, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %34 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @do_percent(i32 %35, i32 %36)
  %38 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %44 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  %49 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %53 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %51, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %19
  %59 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %60 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @max(i32 %61, i64 %62)
  %64 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %4, align 8
  %65 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %58, %19
  ret void
}

declare dso_local i64 @cpufreq_get(i32) #1

declare dso_local i64 @actmon_cpu_to_emc_rate(%struct.tegra_devfreq*, i64) #1

declare dso_local i32 @do_percent(i32, i32) #1

declare dso_local i32 @max(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
