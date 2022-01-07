; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9881c.c_ili9881c_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9881c.c_ili9881c_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.ili9881c = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @ili9881c_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9881c_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.ili9881c*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %4 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %5 = call %struct.ili9881c* @panel_to_ili9881c(%struct.drm_panel* %4)
  store %struct.ili9881c* %5, %struct.ili9881c** %3, align 8
  %6 = load %struct.ili9881c*, %struct.ili9881c** %3, align 8
  %7 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mipi_dsi_dcs_enter_sleep_mode(i32 %8)
  %10 = load %struct.ili9881c*, %struct.ili9881c** %3, align 8
  %11 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regulator_disable(i32 %12)
  %14 = load %struct.ili9881c*, %struct.ili9881c** %3, align 8
  %15 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpiod_set_value(i32 %16, i32 1)
  ret i32 0
}

declare dso_local %struct.ili9881c* @panel_to_ili9881c(%struct.drm_panel*) #1

declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
