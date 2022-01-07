; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_devfreq.c_panfrost_devfreq_get_dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_devfreq.c_panfrost_devfreq_get_dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devfreq_dev_status = type { i32, i32, i32 }
%struct.panfrost_device = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@NUM_JOB_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"busy %lu total %lu %lu %% freq %lu MHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.devfreq_dev_status*)* @panfrost_devfreq_get_dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_devfreq_get_dev_status(%struct.device* %0, %struct.devfreq_dev_status* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.devfreq_dev_status*, align 8
  %5 = alloca %struct.panfrost_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.devfreq_dev_status* %1, %struct.devfreq_dev_status** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @to_platform_device(%struct.device* %7)
  %9 = call %struct.panfrost_device* @platform_get_drvdata(i32 %8)
  store %struct.panfrost_device* %9, %struct.panfrost_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %18, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NUM_JOB_SLOTS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @panfrost_devfreq_update_utilization(%struct.panfrost_device* %15, i32 %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %10

21:                                               ; preds = %10
  %22 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %23 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_get_rate(i32 %24)
  %26 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %27 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %29 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %36 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ktime_add(i32 %34, i32 %41)
  %43 = call i32 @ktime_to_ns(i32 %42)
  %44 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %45 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %47 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %46, i32 0, i32 2
  store i32 0, i32* %47, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %67, %21
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @NUM_JOB_SLOTS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %54 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ktime_to_ns(i32 %61)
  %63 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %64 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %52
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %48

70:                                               ; preds = %48
  %71 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %72 = call i32 @panfrost_devfreq_reset(%struct.panfrost_device* %71)
  %73 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %74 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %77 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %80 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %83 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %86 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 100
  %89 = sdiv i32 %84, %88
  %90 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %91 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 1000
  %94 = sdiv i32 %93, 1000
  %95 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81, i32 %89, i32 %94)
  ret i32 0
}

declare dso_local %struct.panfrost_device* @platform_get_drvdata(i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local i32 @panfrost_devfreq_update_utilization(%struct.panfrost_device*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @panfrost_devfreq_reset(%struct.panfrost_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
