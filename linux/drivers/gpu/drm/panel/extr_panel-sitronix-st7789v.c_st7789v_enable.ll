; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7789v.c_st7789v_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7789v.c_st7789v_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.st7789v = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @st7789v_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st7789v_enable(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.st7789v*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %4 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %5 = call %struct.st7789v* @panel_to_st7789v(%struct.drm_panel* %4)
  store %struct.st7789v* %5, %struct.st7789v** %3, align 8
  %6 = load %struct.st7789v*, %struct.st7789v** %3, align 8
  %7 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.st7789v*, %struct.st7789v** %3, align 8
  %14 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %12
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %21 = load %struct.st7789v*, %struct.st7789v** %3, align 8
  %22 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %20, i32* %25, align 4
  %26 = load %struct.st7789v*, %struct.st7789v** %3, align 8
  %27 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @backlight_update_status(%struct.TYPE_4__* %28)
  br label %30

30:                                               ; preds = %10, %1
  %31 = load %struct.st7789v*, %struct.st7789v** %3, align 8
  %32 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %33 = call i32 @st7789v_write_command(%struct.st7789v* %31, i32 %32)
  ret i32 %33
}

declare dso_local %struct.st7789v* @panel_to_st7789v(%struct.drm_panel*) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_4__*) #1

declare dso_local i32 @st7789v_write_command(%struct.st7789v*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
