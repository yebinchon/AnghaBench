; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i64, i64, i64, %struct.TYPE_4__*, i32, %struct.omap_dss_device* }
%struct.TYPE_4__ = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32)* }

@MIPI_DCS_SET_DISPLAY_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error disabling panel, issuing HW reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panel_drv_data*)* @dsicm_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsicm_power_off(%struct.panel_drv_data* %0) #0 {
  %2 = alloca %struct.panel_drv_data*, align 8
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca i32, align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %2, align 8
  %5 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %6 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %5, i32 0, i32 5
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  store %struct.omap_dss_device* %7, %struct.omap_dss_device** %3, align 8
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %9 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)** %12, align 8
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %15 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %16 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 %13(%struct.omap_dss_device* %14, i32 %17)
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %20 = load i32, i32* @MIPI_DCS_SET_DISPLAY_OFF, align 4
  %21 = call i32 @dsicm_dcs_write_0(%struct.panel_drv_data* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %26 = call i32 @dsicm_sleep_in(%struct.panel_drv_data* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %32 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %37 = call i32 @dsicm_hw_reset(%struct.panel_drv_data* %36)
  br label %38

38:                                               ; preds = %30, %27
  %39 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %40 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %43, align 8
  %45 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %46 = call i32 %44(%struct.omap_dss_device* %45, i32 1, i32 0)
  %47 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %48 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %53 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @regulator_disable(i64 %54)
  br label %56

56:                                               ; preds = %51, %38
  %57 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %58 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %63 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @regulator_disable(i64 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %68 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  ret void
}

declare dso_local i32 @dsicm_dcs_write_0(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @dsicm_sleep_in(%struct.panel_drv_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dsicm_hw_reset(%struct.panel_drv_data*) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
