; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63j0x03.c_s6e63j0x03_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63j0x03.c_s6e63j0x03_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.s6e63j0x03 = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mipi_dsi_device = type { i32 }

@FB_BLANK_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @s6e63j0x03_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e63j0x03_disable(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.s6e63j0x03*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.s6e63j0x03* @panel_to_s6e63j0x03(%struct.drm_panel* %7)
  store %struct.s6e63j0x03* %8, %struct.s6e63j0x03** %4, align 8
  %9 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %10 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %11)
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %5, align 8
  %13 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %14 = call i32 @mipi_dsi_dcs_set_display_off(%struct.mipi_dsi_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %21 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %22 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %20, i32* %25, align 4
  %26 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %27 = call i32 @mipi_dsi_dcs_enter_sleep_mode(%struct.mipi_dsi_device* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %19
  %33 = call i32 @msleep(i32 120)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.s6e63j0x03* @panel_to_s6e63j0x03(%struct.drm_panel*) #1

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_off(%struct.mipi_dsi_device*) #1

declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(%struct.mipi_dsi_device*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
