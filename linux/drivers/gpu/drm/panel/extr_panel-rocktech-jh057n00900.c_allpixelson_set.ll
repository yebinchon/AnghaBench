; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-rocktech-jh057n00900.c_allpixelson_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-rocktech-jh057n00900.c_allpixelson_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jh057n = type { i32, i32 }
%struct.mipi_dsi_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Setting all pixels on\0A\00", align 1
@ST7703_CMD_ALL_PIXEL_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @allpixelson_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allpixelson_set(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jh057n*, align 8
  %6 = alloca %struct.mipi_dsi_device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.jh057n*
  store %struct.jh057n* %8, %struct.jh057n** %5, align 8
  %9 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %10 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %11)
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %6, align 8
  %13 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %14 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %18 = load i32, i32* @ST7703_CMD_ALL_PIXEL_ON, align 4
  %19 = call i32 @dsi_generic_write_seq(%struct.mipi_dsi_device* %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, 1000
  %22 = call i32 @msleep(i32 %21)
  %23 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %24 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %23, i32 0, i32 0
  %25 = call i32 @drm_panel_disable(i32* %24)
  %26 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %27 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %26, i32 0, i32 0
  %28 = call i32 @drm_panel_unprepare(i32* %27)
  %29 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %30 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %29, i32 0, i32 0
  %31 = call i32 @drm_panel_prepare(i32* %30)
  %32 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %33 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %32, i32 0, i32 0
  %34 = call i32 @drm_panel_enable(i32* %33)
  ret i32 0
}

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*) #1

declare dso_local i32 @dsi_generic_write_seq(%struct.mipi_dsi_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @drm_panel_disable(i32*) #1

declare dso_local i32 @drm_panel_unprepare(i32*) #1

declare dso_local i32 @drm_panel_prepare(i32*) #1

declare dso_local i32 @drm_panel_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
