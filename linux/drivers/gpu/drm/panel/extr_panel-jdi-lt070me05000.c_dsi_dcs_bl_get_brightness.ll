; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_dsi_dcs_bl_get_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_dsi_dcs_bl_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mipi_dsi_device = type { i32 }

@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @dsi_dcs_bl_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_dcs_bl_get_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.mipi_dsi_device* @bl_get_data(%struct.backlight_device* %7)
  store %struct.mipi_dsi_device* %8, %struct.mipi_dsi_device** %4, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %10 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %16 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %20 = call i32 @mipi_dsi_dcs_get_display_brightness(%struct.mipi_dsi_device* %19, i32* %6)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %27 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %28 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.mipi_dsi_device* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @mipi_dsi_dcs_get_display_brightness(%struct.mipi_dsi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
