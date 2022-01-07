; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_get_dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_exynos-bus.c_exynos_bus_get_dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devfreq_dev_status = type { i32, i32, i32 }
%struct.exynos_bus = type { i32, i32 }
%struct.devfreq_event_data = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Usage of devfreq-event : %lu/%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to set event to devfreq-event devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.devfreq_dev_status*)* @exynos_bus_get_dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_bus_get_dev_status(%struct.device* %0, %struct.devfreq_dev_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.devfreq_dev_status*, align 8
  %6 = alloca %struct.exynos_bus*, align 8
  %7 = alloca %struct.devfreq_event_data, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.devfreq_dev_status* %1, %struct.devfreq_dev_status** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.exynos_bus* @dev_get_drvdata(%struct.device* %9)
  store %struct.exynos_bus* %10, %struct.exynos_bus** %6, align 8
  %11 = load %struct.exynos_bus*, %struct.exynos_bus** %6, align 8
  %12 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %15 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.exynos_bus*, %struct.exynos_bus** %6, align 8
  %17 = call i32 @exynos_bus_get_event(%struct.exynos_bus* %16, %struct.devfreq_event_data* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %22 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %24 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %47

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 100
  %29 = load %struct.exynos_bus*, %struct.exynos_bus** %6, align 8
  %30 = getelementptr inbounds %struct.exynos_bus, %struct.exynos_bus* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %28, %31
  %33 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %34 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %38 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %41 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %44 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %25, %20
  %48 = load %struct.exynos_bus*, %struct.exynos_bus** %6, align 8
  %49 = call i32 @exynos_bus_set_event(%struct.exynos_bus* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.exynos_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @exynos_bus_get_event(%struct.exynos_bus*, %struct.devfreq_event_data*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @exynos_bus_set_event(%struct.exynos_bus*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
