; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_encoder-opa362.c_opa362_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_encoder-opa362.c_opa362_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device, %struct.gpio_desc* }
%struct.omap_dss_device = type { i32, %struct.gpio_desc*, i32, i32, %struct.TYPE_5__*, i32* }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"probe\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@opa362_ops = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_VENC = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to find video sink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @opa362_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa362_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(%struct.TYPE_5__* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_5__* %11, i32 48, i32 %12)
  store %struct.panel_drv_data* %13, %struct.panel_drv_data** %4, align 8
  %14 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %15 = icmp ne %struct.panel_drv_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %88

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.panel_drv_data* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %26 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.TYPE_5__* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store %struct.gpio_desc* %26, %struct.gpio_desc** %6, align 8
  %27 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %28 = call i64 @IS_ERR(%struct.gpio_desc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %32 = call i32 @PTR_ERR(%struct.gpio_desc* %31)
  store i32 %32, i32* %2, align 4
  br label %88

33:                                               ; preds = %19
  %34 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %35 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %36 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %35, i32 0, i32 1
  store %struct.gpio_desc* %34, %struct.gpio_desc** %36, align 8
  %37 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %38 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %37, i32 0, i32 0
  store %struct.omap_dss_device* %38, %struct.omap_dss_device** %5, align 8
  %39 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %40 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %39, i32 0, i32 5
  store i32* @opa362_ops, i32** %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 4
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %44, align 8
  %45 = load i32, i32* @OMAP_DISPLAY_TYPE_VENC, align 4
  %46 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %47 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %50 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = call i32 @BIT(i32 1)
  %52 = call i32 @BIT(i32 0)
  %53 = or i32 %51, %52
  %54 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %55 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.gpio_desc* @omapdss_of_find_connected_device(i32 %59, i32 1)
  %61 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %62 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %61, i32 0, i32 1
  store %struct.gpio_desc* %60, %struct.gpio_desc** %62, align 8
  %63 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %64 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %63, i32 0, i32 1
  %65 = load %struct.gpio_desc*, %struct.gpio_desc** %64, align 8
  %66 = call i64 @IS_ERR(%struct.gpio_desc* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %33
  %69 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %70 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %69, i32 0, i32 1
  %71 = load %struct.gpio_desc*, %struct.gpio_desc** %70, align 8
  %72 = call i32 @PTR_ERR(%struct.gpio_desc* %71)
  %73 = load i32, i32* @EPROBE_DEFER, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @dev_err(%struct.TYPE_5__* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %68
  %81 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %82 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %81, i32 0, i32 1
  %83 = load %struct.gpio_desc*, %struct.gpio_desc** %82, align 8
  %84 = call i32 @PTR_ERR(%struct.gpio_desc* %83)
  store i32 %84, i32* %2, align 4
  br label %88

85:                                               ; preds = %33
  %86 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %87 = call i32 @omapdss_device_register(%struct.omap_dss_device* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %85, %80, %30, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.gpio_desc* @omapdss_of_find_connected_device(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @omapdss_device_register(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
