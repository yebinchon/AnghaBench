; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mipi_dsi_device = type { i32 }
%struct.rad_panel = type { i32 }

@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @rad_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rad_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca %struct.rad_panel*, align 8
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.mipi_dsi_device* @bl_get_data(%struct.backlight_device* %7)
  store %struct.mipi_dsi_device* %8, %struct.mipi_dsi_device** %4, align 8
  %9 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %10 = call %struct.rad_panel* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device* %9)
  store %struct.rad_panel* %10, %struct.rad_panel** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.rad_panel*, %struct.rad_panel** %5, align 8
  %12 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %20 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %24 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %25 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mipi_dsi_dcs_set_display_brightness(%struct.mipi_dsi_device* %23, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %31, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.mipi_dsi_device* @bl_get_data(%struct.backlight_device*) #1

declare dso_local %struct.rad_panel* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device*) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_brightness(%struct.mipi_dsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
