; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_encoder-tpd12s015.c_tpd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_encoder-tpd12s015.c_tpd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.omap_dss_device = type { i32, i32, %struct.gpio_desc*, i32, i32, %struct.TYPE_6__*, i32* }
%struct.gpio_desc = type { i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device, %struct.gpio_desc*, i32, %struct.gpio_desc*, %struct.gpio_desc* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@tpd_hpd_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tpd12s015 hpd\00", align 1
@tpd_ops = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_HDMI = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@OMAP_DSS_DEVICE_OP_DETECT = common dso_local global i32 0, align 4
@OMAP_DSS_DEVICE_OP_HPD = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to find video sink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tpd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_6__* %9, i32 72, i32 %10)
  store %struct.panel_drv_data* %11, %struct.panel_drv_data** %5, align 8
  %12 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %13 = icmp ne %struct.panel_drv_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %141

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.panel_drv_data* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %24 = call %struct.gpio_desc* @devm_gpiod_get_index_optional(%struct.TYPE_6__* %22, i32* null, i32 0, i32 %23)
  store %struct.gpio_desc* %24, %struct.gpio_desc** %7, align 8
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %26 = call i64 @IS_ERR(%struct.gpio_desc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %30 = call i32 @PTR_ERR(%struct.gpio_desc* %29)
  store i32 %30, i32* %2, align 4
  br label %141

31:                                               ; preds = %17
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %33 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %34 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %33, i32 0, i32 4
  store %struct.gpio_desc* %32, %struct.gpio_desc** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %38 = call %struct.gpio_desc* @devm_gpiod_get_index_optional(%struct.TYPE_6__* %36, i32* null, i32 1, i32 %37)
  store %struct.gpio_desc* %38, %struct.gpio_desc** %7, align 8
  %39 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %40 = call i64 @IS_ERR(%struct.gpio_desc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %44 = call i32 @PTR_ERR(%struct.gpio_desc* %43)
  store i32 %44, i32* %2, align 4
  br label %141

45:                                               ; preds = %31
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %47 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %48 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %47, i32 0, i32 3
  store %struct.gpio_desc* %46, %struct.gpio_desc** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load i32, i32* @GPIOD_IN, align 4
  %52 = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.TYPE_6__* %50, i32* null, i32 2, i32 %51)
  store %struct.gpio_desc* %52, %struct.gpio_desc** %7, align 8
  %53 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %54 = call i64 @IS_ERR(%struct.gpio_desc* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %58 = call i32 @PTR_ERR(%struct.gpio_desc* %57)
  store i32 %58, i32* %2, align 4
  br label %141

59:                                               ; preds = %45
  %60 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %61 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %62 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %61, i32 0, i32 1
  store %struct.gpio_desc* %60, %struct.gpio_desc** %62, align 8
  %63 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %64 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %63, i32 0, i32 2
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %69 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %68, i32 0, i32 1
  %70 = load %struct.gpio_desc*, %struct.gpio_desc** %69, align 8
  %71 = call i32 @gpiod_to_irq(%struct.gpio_desc* %70)
  %72 = load i32, i32* @tpd_hpd_isr, align 4
  %73 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %74 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @IRQF_ONESHOT, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %79 = call i32 @devm_request_threaded_irq(%struct.TYPE_6__* %67, i32 %71, i32* null, i32 %72, i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.panel_drv_data* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %59
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %141

84:                                               ; preds = %59
  %85 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %86 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %85, i32 0, i32 0
  store %struct.omap_dss_device* %86, %struct.omap_dss_device** %4, align 8
  %87 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %88 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %87, i32 0, i32 6
  store i32* @tpd_ops, i32** %88, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %92 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %91, i32 0, i32 5
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %92, align 8
  %93 = load i32, i32* @OMAP_DISPLAY_TYPE_HDMI, align 4
  %94 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %95 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @THIS_MODULE, align 4
  %97 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %98 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = call i32 @BIT(i32 1)
  %100 = call i32 @BIT(i32 0)
  %101 = or i32 %99, %100
  %102 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %103 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @OMAP_DSS_DEVICE_OP_DETECT, align 4
  %105 = load i32, i32* @OMAP_DSS_DEVICE_OP_HPD, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %108 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.gpio_desc* @omapdss_of_find_connected_device(i32 %112, i32 1)
  %114 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %115 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %114, i32 0, i32 2
  store %struct.gpio_desc* %113, %struct.gpio_desc** %115, align 8
  %116 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %117 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %116, i32 0, i32 2
  %118 = load %struct.gpio_desc*, %struct.gpio_desc** %117, align 8
  %119 = call i64 @IS_ERR(%struct.gpio_desc* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %84
  %122 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %123 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %122, i32 0, i32 2
  %124 = load %struct.gpio_desc*, %struct.gpio_desc** %123, align 8
  %125 = call i32 @PTR_ERR(%struct.gpio_desc* %124)
  %126 = load i32, i32* @EPROBE_DEFER, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @dev_err(%struct.TYPE_6__* %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %121
  %134 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %135 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %134, i32 0, i32 2
  %136 = load %struct.gpio_desc*, %struct.gpio_desc** %135, align 8
  %137 = call i32 @PTR_ERR(%struct.gpio_desc* %136)
  store i32 %137, i32* %2, align 4
  br label %141

138:                                              ; preds = %84
  %139 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %140 = call i32 @omapdss_device_register(%struct.omap_dss_device* %139)
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %138, %133, %82, %56, %42, %28, %14
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index_optional(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_6__*, i32, i32*, i32, i32, i8*, %struct.panel_drv_data*) #1

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.gpio_desc* @omapdss_of_find_connected_device(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @omapdss_device_register(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
