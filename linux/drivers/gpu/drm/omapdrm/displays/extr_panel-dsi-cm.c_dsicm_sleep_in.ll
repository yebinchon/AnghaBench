; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_sleep_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_sleep_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*, i32, i32*, i32)* }

@MIPI_DCS_ENTER_SLEEP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*)* @dsicm_sleep_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_sleep_in(%struct.panel_drv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  %7 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %8 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %7, i32 0, i32 1
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  store %struct.omap_dss_device* %9, %struct.omap_dss_device** %4, align 8
  %10 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %11 = call i32 @hw_guard_wait(%struct.panel_drv_data* %10)
  %12 = load i32, i32* @MIPI_DCS_ENTER_SLEEP_MODE, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %14 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.omap_dss_device*, i32, i32*, i32)*, i32 (%struct.omap_dss_device*, i32, i32*, i32)** %17, align 8
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %20 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %21 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %18(%struct.omap_dss_device* %19, i32 %22, i32* %5, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %30 = call i32 @hw_guard_start(%struct.panel_drv_data* %29, i32 120)
  %31 = call i32 @usleep_range(i32 5000, i32 10000)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @hw_guard_wait(%struct.panel_drv_data*) #1

declare dso_local i32 @hw_guard_start(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
