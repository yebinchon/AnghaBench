; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_store_ulps_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_store_ulps_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.panel_drv_data = type { i64, i32, i64, %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dsicm_store_ulps_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_store_ulps_timeout(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.panel_drv_data*, align 8
  %11 = alloca %struct.omap_dss_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.panel_drv_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.panel_drv_data* %15, %struct.panel_drv_data** %10, align 8
  %16 = load %struct.panel_drv_data*, %struct.panel_drv_data** %10, align 8
  %17 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %16, i32 0, i32 3
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  store %struct.omap_dss_device* %18, %struct.omap_dss_device** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtoul(i8* %19, i32 0, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %66

25:                                               ; preds = %4
  %26 = load %struct.panel_drv_data*, %struct.panel_drv_data** %10, align 8
  %27 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.panel_drv_data*, %struct.panel_drv_data** %10, align 8
  %31 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.panel_drv_data*, %struct.panel_drv_data** %10, align 8
  %33 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %25
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  %38 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %41, align 8
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  %44 = call i32 %42(%struct.omap_dss_device* %43)
  %45 = load %struct.panel_drv_data*, %struct.panel_drv_data** %10, align 8
  %46 = call i32 @dsicm_wake_up(%struct.panel_drv_data* %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  %48 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %51, align 8
  %53 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  %54 = call i32 %52(%struct.omap_dss_device* %53)
  br label %55

55:                                               ; preds = %36, %25
  %56 = load %struct.panel_drv_data*, %struct.panel_drv_data** %10, align 8
  %57 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %66

63:                                               ; preds = %55
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %61, %23
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.panel_drv_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsicm_wake_up(%struct.panel_drv_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
