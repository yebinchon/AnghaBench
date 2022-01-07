; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acx565akm_panel = type { i32 }

@MIPI_DCS_SET_DISPLAY_BRIGHTNESS = common dso_local global i32 0, align 4
@MIPI_DCS_GET_CONTROL_DISPLAY = common dso_local global i32 0, align 4
@CTRL_DISP_BRIGHTNESS_CTRL_ON = common dso_local global i32 0, align 4
@CTRL_DISP_BACKLIGHT_ON = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_CONTROL_DISPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acx565akm_panel*, i32)* @acx565akm_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acx565akm_set_brightness(%struct.acx565akm_panel* %0, i32 %1) #0 {
  %3 = alloca %struct.acx565akm_panel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acx565akm_panel* %0, %struct.acx565akm_panel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = or i32 %7, 256
  store i32 %8, i32* %6, align 4
  %9 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %10 = load i32, i32* @MIPI_DCS_SET_DISPLAY_BRIGHTNESS, align 4
  %11 = call i32 @acx565akm_write(%struct.acx565akm_panel* %9, i32 %10, i32* %6, i32 2)
  %12 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %13 = load i32, i32* @MIPI_DCS_GET_CONTROL_DISPLAY, align 4
  %14 = call i32 @acx565akm_read(%struct.acx565akm_panel* %12, i32 %13, i32* %5, i32 1)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @CTRL_DISP_BRIGHTNESS_CTRL_ON, align 4
  %19 = load i32, i32* @CTRL_DISP_BACKLIGHT_ON, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @CTRL_DISP_BRIGHTNESS_CTRL_ON, align 4
  %25 = load i32, i32* @CTRL_DISP_BACKLIGHT_ON, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, 256
  store i32 %32, i32* %5, align 4
  %33 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %34 = load i32, i32* @MIPI_DCS_WRITE_CONTROL_DISPLAY, align 4
  %35 = call i32 @acx565akm_write(%struct.acx565akm_panel* %33, i32 %34, i32* %5, i32 2)
  ret void
}

declare dso_local i32 @acx565akm_write(%struct.acx565akm_panel*, i32, i32*, i32) #1

declare dso_local i32 @acx565akm_read(%struct.acx565akm_panel*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
