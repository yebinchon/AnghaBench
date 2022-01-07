; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_actmon_cpu_to_emc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_actmon_cpu_to_emc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_actmon_emc_ratio = type { i64, i64 }
%struct.tegra_devfreq = type { i64 }

@actmon_emc_ratios = common dso_local global %struct.tegra_actmon_emc_ratio* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tegra_devfreq*, i64)* @actmon_cpu_to_emc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @actmon_cpu_to_emc_rate(%struct.tegra_devfreq* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tegra_devfreq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_actmon_emc_ratio*, align 8
  store %struct.tegra_devfreq* %0, %struct.tegra_devfreq** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tegra_actmon_emc_ratio*, %struct.tegra_actmon_emc_ratio** @actmon_emc_ratios, align 8
  store %struct.tegra_actmon_emc_ratio* %8, %struct.tegra_actmon_emc_ratio** %7, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %37, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.tegra_actmon_emc_ratio*, %struct.tegra_actmon_emc_ratio** @actmon_emc_ratios, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.tegra_actmon_emc_ratio* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.tegra_actmon_emc_ratio*, %struct.tegra_actmon_emc_ratio** %7, align 8
  %17 = getelementptr inbounds %struct.tegra_actmon_emc_ratio, %struct.tegra_actmon_emc_ratio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.tegra_actmon_emc_ratio*, %struct.tegra_actmon_emc_ratio** %7, align 8
  %22 = getelementptr inbounds %struct.tegra_actmon_emc_ratio, %struct.tegra_actmon_emc_ratio* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %3, align 8
  br label %43

32:                                               ; preds = %20
  %33 = load %struct.tegra_actmon_emc_ratio*, %struct.tegra_actmon_emc_ratio** %7, align 8
  %34 = getelementptr inbounds %struct.tegra_actmon_emc_ratio, %struct.tegra_actmon_emc_ratio* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %3, align 8
  br label %43

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load %struct.tegra_actmon_emc_ratio*, %struct.tegra_actmon_emc_ratio** %7, align 8
  %41 = getelementptr inbounds %struct.tegra_actmon_emc_ratio, %struct.tegra_actmon_emc_ratio* %40, i32 1
  store %struct.tegra_actmon_emc_ratio* %41, %struct.tegra_actmon_emc_ratio** %7, align 8
  br label %9

42:                                               ; preds = %9
  store i64 0, i64* %3, align 8
  br label %43

43:                                               ; preds = %42, %32, %28
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32 @ARRAY_SIZE(%struct.tegra_actmon_emc_ratio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
