; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_bl_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_bl_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { %struct.backlight_device*, %struct.backlight_device* }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@FB_BLANK_UNBLANK = common dso_local global i8* null, align 8
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@FB_BLANK_NORMAL = common dso_local global i8* null, align 8
@FB_BLANK_POWERDOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panel_drv_data*, i32)* @dsicm_bl_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsicm_bl_power(%struct.panel_drv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.backlight_device*, align 8
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %7 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %6, i32 0, i32 1
  %8 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %9 = icmp ne %struct.backlight_device* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %12 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %11, i32 0, i32 1
  %13 = load %struct.backlight_device*, %struct.backlight_device** %12, align 8
  store %struct.backlight_device* %13, %struct.backlight_device** %5, align 8
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %16 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %15, i32 0, i32 0
  %17 = load %struct.backlight_device*, %struct.backlight_device** %16, align 8
  %18 = icmp ne %struct.backlight_device* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %21 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %20, i32 0, i32 0
  %22 = load %struct.backlight_device*, %struct.backlight_device** %21, align 8
  store %struct.backlight_device* %22, %struct.backlight_device** %5, align 8
  br label %24

23:                                               ; preds = %14
  br label %64

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i8*, i8** @FB_BLANK_UNBLANK, align 8
  %30 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %31 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %34 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %38 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i8*, i8** @FB_BLANK_UNBLANK, align 8
  %41 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %42 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  br label %61

44:                                               ; preds = %25
  %45 = load i8*, i8** @FB_BLANK_NORMAL, align 8
  %46 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %47 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = load i8*, i8** @FB_BLANK_POWERDOWN, align 8
  %50 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %51 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %54 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %57 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %44, %28
  %62 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %63 = call i32 @backlight_update_status(%struct.backlight_device* %62)
  br label %64

64:                                               ; preds = %61, %23
  ret void
}

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
