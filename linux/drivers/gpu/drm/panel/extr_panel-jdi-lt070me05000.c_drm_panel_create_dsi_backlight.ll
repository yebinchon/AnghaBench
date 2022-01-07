; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_drm_panel_create_dsi_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_drm_panel_create_dsi_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.mipi_dsi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.backlight_properties = type { i32, i32, i32 }

@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@dsi_bl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.backlight_device* (%struct.mipi_dsi_device*)* @drm_panel_create_dsi_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.backlight_device* @drm_panel_create_dsi_backlight(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca %struct.mipi_dsi_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %2, align 8
  %5 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 12)
  %8 = load i32, i32* @BACKLIGHT_RAW, align 4
  %9 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 255, i32* %10, align 4
  %11 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 255, i32* %11, align 4
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @dev_name(%struct.device* %13)
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %17 = call %struct.backlight_device* @devm_backlight_device_register(%struct.device* %12, i32 %14, %struct.device* %15, %struct.mipi_dsi_device* %16, i32* @dsi_bl_ops, %struct.backlight_properties* %4)
  ret %struct.backlight_device* %17
}

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.device*, i32, %struct.device*, %struct.mipi_dsi_device*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
