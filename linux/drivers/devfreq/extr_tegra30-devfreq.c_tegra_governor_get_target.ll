; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_governor_get_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_governor_get_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { %struct.devfreq_dev_status }
%struct.devfreq_dev_status = type { %struct.tegra_devfreq* }
%struct.tegra_devfreq = type { %struct.tegra_devfreq_device* }
%struct.tegra_devfreq_device = type { i32 }

@KHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq*, i64*)* @tegra_governor_get_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_governor_get_target(%struct.devfreq* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devfreq*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.devfreq_dev_status*, align 8
  %7 = alloca %struct.tegra_devfreq*, align 8
  %8 = alloca %struct.tegra_devfreq_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.devfreq* %0, %struct.devfreq** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %13 = call i32 @devfreq_update_stats(%struct.devfreq* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.devfreq*, %struct.devfreq** %4, align 8
  %20 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %19, i32 0, i32 0
  store %struct.devfreq_dev_status* %20, %struct.devfreq_dev_status** %6, align 8
  %21 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %6, align 8
  %22 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %21, i32 0, i32 0
  %23 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %22, align 8
  store %struct.tegra_devfreq* %23, %struct.tegra_devfreq** %7, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %46, %18
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %7, align 8
  %27 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %26, i32 0, i32 0
  %28 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %27, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.tegra_devfreq_device* %28)
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %7, align 8
  %33 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %32, i32 0, i32 0
  %34 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %34, i64 %36
  store %struct.tegra_devfreq_device* %37, %struct.tegra_devfreq_device** %8, align 8
  %38 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %7, align 8
  %39 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %8, align 8
  %40 = call i32 @actmon_update_target(%struct.tegra_devfreq* %38, %struct.tegra_devfreq_device* %39)
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.tegra_devfreq_device*, %struct.tegra_devfreq_device** %8, align 8
  %43 = getelementptr inbounds %struct.tegra_devfreq_device, %struct.tegra_devfreq_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @max(i64 %41, i32 %44)
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @KHZ, align 8
  %52 = mul i64 %50, %51
  %53 = load i64*, i64** %5, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @devfreq_update_stats(%struct.devfreq*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.tegra_devfreq_device*) #1

declare dso_local i32 @actmon_update_target(%struct.tegra_devfreq*, %struct.tegra_devfreq_device*) #1

declare dso_local i64 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
