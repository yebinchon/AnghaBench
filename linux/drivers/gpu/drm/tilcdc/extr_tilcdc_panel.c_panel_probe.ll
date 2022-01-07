; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_panel.c_panel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_panel.c_panel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.tilcdc_module*, %struct.device_node* }
%struct.tilcdc_module = type { i32 }
%struct.device_node = type { i32 }
%struct.panel_module = type { %struct.TYPE_8__*, i32, i32, %struct.tilcdc_module, %struct.pinctrl* }
%struct.TYPE_8__ = type { i32 }
%struct.pinctrl = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"device-tree data is missing\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"found backlight\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to request enable GPIO\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"found enable GPIO\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"panel\00", align 1
@panel_module_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"pins are not configured\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"could not get panel timings\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"could not get panel info\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @panel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.panel_module*, align 8
  %7 = alloca %struct.tilcdc_module*, align 8
  %8 = alloca %struct.pinctrl*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %155

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.panel_module* @devm_kzalloc(%struct.TYPE_9__* %24, i32 32, i32 %25)
  store %struct.panel_module* %26, %struct.panel_module** %6, align 8
  %27 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %28 = icmp ne %struct.panel_module* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %155

32:                                               ; preds = %22
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %34, %struct.device_node** %4, align 8
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = icmp ne %struct.device_node* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = call %struct.TYPE_8__* @of_find_backlight_by_node(%struct.device_node* %38)
  %40 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %41 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %40, i32 0, i32 0
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %41, align 8
  %42 = load %struct.device_node*, %struct.device_node** %4, align 8
  %43 = call i32 @of_node_put(%struct.device_node* %42)
  %44 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %45 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @EPROBE_DEFER, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %155

51:                                               ; preds = %37
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_info(%struct.TYPE_9__* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %32
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %59 = call %struct.pinctrl* @devm_gpiod_get_optional(%struct.TYPE_9__* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %61 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %60, i32 0, i32 4
  store %struct.pinctrl* %59, %struct.pinctrl** %61, align 8
  %62 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %63 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %62, i32 0, i32 4
  %64 = load %struct.pinctrl*, %struct.pinctrl** %63, align 8
  %65 = call i64 @IS_ERR(%struct.pinctrl* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %55
  %68 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %69 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %68, i32 0, i32 4
  %70 = load %struct.pinctrl*, %struct.pinctrl** %69, align 8
  %71 = call i32 @PTR_ERR(%struct.pinctrl* %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.TYPE_9__* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %142

75:                                               ; preds = %55
  %76 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %77 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %76, i32 0, i32 4
  %78 = load %struct.pinctrl*, %struct.pinctrl** %77, align 8
  %79 = icmp ne %struct.pinctrl* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_info(%struct.TYPE_9__* %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %86 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %85, i32 0, i32 3
  store %struct.tilcdc_module* %86, %struct.tilcdc_module** %7, align 8
  %87 = load %struct.tilcdc_module*, %struct.tilcdc_module** %7, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store %struct.tilcdc_module* %87, %struct.tilcdc_module** %90, align 8
  %91 = load %struct.tilcdc_module*, %struct.tilcdc_module** %7, align 8
  %92 = call i32 @tilcdc_module_init(%struct.tilcdc_module* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* @panel_module_ops)
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call %struct.pinctrl* @devm_pinctrl_get_select_default(%struct.TYPE_9__* %94)
  store %struct.pinctrl* %95, %struct.pinctrl** %8, align 8
  %96 = load %struct.pinctrl*, %struct.pinctrl** %8, align 8
  %97 = call i64 @IS_ERR(%struct.pinctrl* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %84
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @dev_warn(%struct.TYPE_9__* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %99, %84
  %104 = load %struct.device_node*, %struct.device_node** %5, align 8
  %105 = call i32 @of_get_display_timings(%struct.device_node* %104)
  %106 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %107 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %109 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %103
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @dev_err(%struct.TYPE_9__* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  br label %139

118:                                              ; preds = %103
  %119 = load %struct.device_node*, %struct.device_node** %5, align 8
  %120 = call i32 @of_get_panel_info(%struct.device_node* %119)
  %121 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %122 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %124 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %118
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @dev_err(%struct.TYPE_9__* %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %9, align 4
  br label %134

133:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %155

134:                                              ; preds = %127
  %135 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %136 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @display_timings_release(i32 %137)
  br label %139

139:                                              ; preds = %134, %112
  %140 = load %struct.tilcdc_module*, %struct.tilcdc_module** %7, align 8
  %141 = call i32 @tilcdc_module_cleanup(%struct.tilcdc_module* %140)
  br label %142

142:                                              ; preds = %139, %67
  %143 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %144 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = icmp ne %struct.TYPE_8__* %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load %struct.panel_module*, %struct.panel_module** %6, align 8
  %149 = getelementptr inbounds %struct.panel_module, %struct.panel_module* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = call i32 @put_device(i32* %151)
  br label %153

153:                                              ; preds = %147, %142
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %133, %48, %29, %16
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.panel_module* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @of_find_backlight_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.pinctrl* @devm_gpiod_get_optional(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl*) #1

declare dso_local i32 @tilcdc_module_init(%struct.tilcdc_module*, i8*, i32*) #1

declare dso_local %struct.pinctrl* @devm_pinctrl_get_select_default(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @of_get_display_timings(%struct.device_node*) #1

declare dso_local i32 @of_get_panel_info(%struct.device_node*) #1

declare dso_local i32 @display_timings_release(i32) #1

declare dso_local i32 @tilcdc_module_cleanup(%struct.tilcdc_module*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
