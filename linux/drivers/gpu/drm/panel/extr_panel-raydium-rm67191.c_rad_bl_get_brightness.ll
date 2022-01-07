; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_bl_get_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_bl_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mipi_dsi_device = type { i32 }
%struct.rad_panel = type { i32 }

@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @rad_bl_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rad_bl_get_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca %struct.rad_panel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = call %struct.mipi_dsi_device* @bl_get_data(%struct.backlight_device* %8)
  store %struct.mipi_dsi_device* %9, %struct.mipi_dsi_device** %4, align 8
  %10 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %11 = call %struct.rad_panel* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device* %10)
  store %struct.rad_panel* %11, %struct.rad_panel** %5, align 8
  %12 = load %struct.rad_panel*, %struct.rad_panel** %5, align 8
  %13 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

17:                                               ; preds = %1
  %18 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %21 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %25 = call i32 @mipi_dsi_dcs_get_display_brightness(%struct.mipi_dsi_device* %24, i32* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %33 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %28, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.mipi_dsi_device* @bl_get_data(%struct.backlight_device*) #1

declare dso_local %struct.rad_panel* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device*) #1

declare dso_local i32 @mipi_dsi_dcs_get_display_brightness(%struct.mipi_dsi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
