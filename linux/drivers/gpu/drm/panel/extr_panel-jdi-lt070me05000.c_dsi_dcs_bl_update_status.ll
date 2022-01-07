; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_dsi_dcs_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_dsi_dcs_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mipi_dsi_device = type { i32 }

@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @dsi_dcs_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_dcs_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %7 = call %struct.mipi_dsi_device* @bl_get_data(%struct.backlight_device* %6)
  store %struct.mipi_dsi_device* %7, %struct.mipi_dsi_device** %4, align 8
  %8 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %11 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %15 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %16 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mipi_dsi_dcs_set_display_brightness(%struct.mipi_dsi_device* %14, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %26 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %27 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %22
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.mipi_dsi_device* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_brightness(%struct.mipi_dsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
