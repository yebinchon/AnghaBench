; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_bl_update_status_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_bl_update_status_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.acx565akm_panel = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @acx565akm_bl_update_status_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acx565akm_bl_update_status_locked(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.acx565akm_panel*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 1
  %7 = call %struct.acx565akm_panel* @dev_get_drvdata(i32* %6)
  store %struct.acx565akm_panel* %7, %struct.acx565akm_panel** %3, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %9 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %16 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %23 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %4, align 4
  br label %27

26:                                               ; preds = %14, %1
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @acx565akm_set_brightness(%struct.acx565akm_panel* %28, i32 %29)
  ret i32 0
}

declare dso_local %struct.acx565akm_panel* @dev_get_drvdata(i32*) #1

declare dso_local i32 @acx565akm_set_brightness(%struct.acx565akm_panel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
