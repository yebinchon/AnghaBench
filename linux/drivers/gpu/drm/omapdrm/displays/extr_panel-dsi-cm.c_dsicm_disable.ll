; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }
%struct.panel_drv_data = type { i32, %struct.omap_dss_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @dsicm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsicm_disable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %7 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %6)
  store %struct.panel_drv_data* %7, %struct.panel_drv_data** %3, align 8
  %8 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %9 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %8, i32 0, i32 1
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  store %struct.omap_dss_device* %10, %struct.omap_dss_device** %4, align 8
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %12 = call i32 @dsicm_bl_power(%struct.panel_drv_data* %11, i32 0)
  %13 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %14 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %17 = call i32 @dsicm_cancel_ulps_work(%struct.panel_drv_data* %16)
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %19 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %22, align 8
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %25 = call i32 %23(%struct.omap_dss_device* %24)
  %26 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %27 = call i32 @dsicm_wake_up(%struct.panel_drv_data* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %32 = call i32 @dsicm_power_off(%struct.panel_drv_data* %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %35 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %38, align 8
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %41 = call i32 %39(%struct.omap_dss_device* %40)
  %42 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %43 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  ret void
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dsicm_bl_power(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsicm_cancel_ulps_work(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_wake_up(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_power_off(%struct.panel_drv_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
