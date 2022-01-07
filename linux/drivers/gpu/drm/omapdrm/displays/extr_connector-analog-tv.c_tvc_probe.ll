; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_connector-analog-tv.c_tvc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_connector-analog-tv.c_tvc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device, i32* }
%struct.omap_dss_device = type { i32, i32, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tvc_ops = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_VENC = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tvc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.panel_drv_data* @devm_kzalloc(i32* %7, i32 40, i32 %8)
  store %struct.panel_drv_data* %9, %struct.panel_drv_data** %4, align 8
  %10 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %11 = icmp ne %struct.panel_drv_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.panel_drv_data* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %22 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %24 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %23, i32 0, i32 0
  store %struct.omap_dss_device* %24, %struct.omap_dss_device** %5, align 8
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %26 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %25, i32 0, i32 5
  store i32* @tvc_ops, i32** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %30 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %29, i32 0, i32 4
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* @OMAP_DISPLAY_TYPE_VENC, align 4
  %32 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %33 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %35 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @THIS_MODULE, align 4
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %38 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = call i32 @BIT(i32 0)
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %41 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %43 = call i32 @omapdss_display_init(%struct.omap_dss_device* %42)
  %44 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %45 = call i32 @omapdss_device_register(%struct.omap_dss_device* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %15, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.panel_drv_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @omapdss_display_init(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_register(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
