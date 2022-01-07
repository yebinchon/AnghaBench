; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu-backlight.c___pmu_backlight_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu-backlight.c___pmu_backlight_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.adb_request = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@PMU_BACKLIGHT_BRIGHT = common dso_local global i32 0, align 4
@PMU_POWER_CTRL = common dso_local global i32 0, align 4
@PMU_POW_BACKLIGHT = common dso_local global i32 0, align 4
@PMU_POW_ON = common dso_local global i32 0, align 4
@PMU_POW_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @__pmu_backlight_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pmu_backlight_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.adb_request, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %7 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %11 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %18 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pmu_backlight_get_level_brightness(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @PMU_BACKLIGHT_BRIGHT, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @pmu_request(%struct.adb_request* %3, i32* null, i32 2, i32 %30, i32 %31)
  %33 = call i32 @pmu_wait_complete(%struct.adb_request* %3)
  %34 = load i32, i32* @PMU_POWER_CTRL, align 4
  %35 = load i32, i32* @PMU_POW_BACKLIGHT, align 4
  %36 = load i32, i32* @PMU_POW_ON, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @pmu_request(%struct.adb_request* %3, i32* null, i32 2, i32 %34, i32 %37)
  %39 = call i32 @pmu_wait_complete(%struct.adb_request* %3)
  br label %47

40:                                               ; preds = %24
  %41 = load i32, i32* @PMU_POWER_CTRL, align 4
  %42 = load i32, i32* @PMU_POW_BACKLIGHT, align 4
  %43 = load i32, i32* @PMU_POW_OFF, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @pmu_request(%struct.adb_request* %3, i32* null, i32 2, i32 %41, i32 %44)
  %46 = call i32 @pmu_wait_complete(%struct.adb_request* %3)
  br label %47

47:                                               ; preds = %40, %27
  ret i32 0
}

declare dso_local i32 @pmu_backlight_get_level_brightness(i32) #1

declare dso_local i32 @pmu_request(%struct.adb_request*, i32*, i32, i32, i32) #1

declare dso_local i32 @pmu_wait_complete(%struct.adb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
