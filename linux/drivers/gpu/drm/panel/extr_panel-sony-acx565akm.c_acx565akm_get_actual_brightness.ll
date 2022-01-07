; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_get_actual_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_get_actual_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acx565akm_panel = type { i32 }

@MIPI_DCS_GET_DISPLAY_BRIGHTNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acx565akm_panel*)* @acx565akm_get_actual_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acx565akm_get_actual_brightness(%struct.acx565akm_panel* %0) #0 {
  %2 = alloca %struct.acx565akm_panel*, align 8
  %3 = alloca i32, align 4
  store %struct.acx565akm_panel* %0, %struct.acx565akm_panel** %2, align 8
  %4 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %5 = load i32, i32* @MIPI_DCS_GET_DISPLAY_BRIGHTNESS, align 4
  %6 = call i32 @acx565akm_read(%struct.acx565akm_panel* %4, i32 %5, i32* %3, i32 1)
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

declare dso_local i32 @acx565akm_read(%struct.acx565akm_panel*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
