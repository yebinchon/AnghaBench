; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_connector-hdmi.c_hdmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_connector-hdmi.c_hdmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.panel_drv_data = type { %struct.gpio_desc*, %struct.omap_dss_device, i32, i32* }
%struct.gpio_desc = type { i32 }
%struct.omap_dss_device = type { i32, i32, i32, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to parse HPD gpio\0A\00", align 1
@hdmic_hpd_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"hdmic hpd\00", align 1
@hdmic_ops = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_HDMI = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@OMAP_DSS_DEVICE_OP_DETECT = common dso_local global i32 0, align 4
@OMAP_DSS_DEVICE_OP_HPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hdmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.panel_drv_data* @devm_kzalloc(i32* %9, i32 64, i32 %10)
  store %struct.panel_drv_data* %11, %struct.panel_drv_data** %4, align 8
  %12 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %13 = icmp ne %struct.panel_drv_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %106

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.panel_drv_data* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %24 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %26 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GPIOD_IN, align 4
  %31 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  store %struct.gpio_desc* %31, %struct.gpio_desc** %6, align 8
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %33 = call i64 @IS_ERR(%struct.gpio_desc* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %17
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %40 = call i32 @PTR_ERR(%struct.gpio_desc* %39)
  store i32 %40, i32* %2, align 4
  br label %106

41:                                               ; preds = %17
  %42 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %43 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %44 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %43, i32 0, i32 0
  store %struct.gpio_desc* %42, %struct.gpio_desc** %44, align 8
  %45 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %46 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %45, i32 0, i32 0
  %47 = load %struct.gpio_desc*, %struct.gpio_desc** %46, align 8
  %48 = icmp ne %struct.gpio_desc* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %41
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %53 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %52, i32 0, i32 0
  %54 = load %struct.gpio_desc*, %struct.gpio_desc** %53, align 8
  %55 = call i32 @gpiod_to_irq(%struct.gpio_desc* %54)
  %56 = load i32, i32* @hdmic_hpd_isr, align 4
  %57 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %58 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @IRQF_ONESHOT, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %63 = call i32 @devm_request_threaded_irq(i32* %51, i32 %55, i32* null, i32 %56, i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.panel_drv_data* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %106

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %71 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %70, i32 0, i32 1
  store %struct.omap_dss_device* %71, %struct.omap_dss_device** %5, align 8
  %72 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %73 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %72, i32 0, i32 6
  store i32* @hdmic_ops, i32** %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %77 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %76, i32 0, i32 5
  store i32* %75, i32** %77, align 8
  %78 = load i32, i32* @OMAP_DISPLAY_TYPE_HDMI, align 4
  %79 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %80 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %82 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load i32, i32* @THIS_MODULE, align 4
  %84 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %85 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = call i32 @BIT(i32 0)
  %87 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %88 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %90 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %89, i32 0, i32 0
  %91 = load %struct.gpio_desc*, %struct.gpio_desc** %90, align 8
  %92 = icmp ne %struct.gpio_desc* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %69
  %94 = load i32, i32* @OMAP_DSS_DEVICE_OP_DETECT, align 4
  %95 = load i32, i32* @OMAP_DSS_DEVICE_OP_HPD, align 4
  %96 = or i32 %94, %95
  br label %98

97:                                               ; preds = %69
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i32 [ %96, %93 ], [ 0, %97 ]
  %100 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %101 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %103 = call i32 @omapdss_display_init(%struct.omap_dss_device* %102)
  %104 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %105 = call i32 @omapdss_device_register(%struct.omap_dss_device* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %98, %66, %35, %14
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.panel_drv_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.panel_drv_data*) #1

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @omapdss_display_init(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_register(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
