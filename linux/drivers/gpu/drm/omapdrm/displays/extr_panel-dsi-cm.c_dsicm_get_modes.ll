; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.drm_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.panel_drv_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.drm_connector*)* @dsicm_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_get_modes(%struct.omap_dss_device* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %7 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %6)
  store %struct.panel_drv_data* %7, %struct.panel_drv_data** %5, align 8
  %8 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %9 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %15 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %18 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %22 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %21, i32 0, i32 0
  %23 = call i32 @omapdss_display_get_modes(%struct.drm_connector* %20, i32* %22)
  ret i32 %23
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_display_get_modes(%struct.drm_connector*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
