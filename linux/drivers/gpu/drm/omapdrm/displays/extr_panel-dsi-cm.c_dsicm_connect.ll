; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32)* }
%struct.panel_drv_data = type { %struct.omap_dss_device*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to get virtual channel\0A\00", align 1
@TCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to set VC_ID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)* @dsicm_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_connect(%struct.omap_dss_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.panel_drv_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %10 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %9)
  store %struct.panel_drv_data* %10, %struct.panel_drv_data** %6, align 8
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %12 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %16 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i32*)** %19, align 8
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %22 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %23 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %22, i32 0, i32 1
  %24 = call i32 %20(%struct.omap_dss_device* %21, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %65

31:                                               ; preds = %2
  %32 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %33 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %36, align 8
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %39 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %40 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TCH, align 4
  %43 = call i32 %37(%struct.omap_dss_device* %38, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %31
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %50 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)** %53, align 8
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %56 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %57 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %54(%struct.omap_dss_device* %55, i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %65

61:                                               ; preds = %31
  %62 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %63 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %64 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %63, i32 0, i32 0
  store %struct.omap_dss_device* %62, %struct.omap_dss_device** %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %46, %27
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
