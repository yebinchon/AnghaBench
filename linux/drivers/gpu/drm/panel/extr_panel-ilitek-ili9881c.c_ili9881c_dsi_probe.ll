; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9881c.c_ili9881c_dsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9881c.c_ili9881c_dsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.device_node = type { i32 }
%struct.ili9881c = type { %struct.TYPE_7__, i32, i32, i32, %struct.mipi_dsi_device* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_8__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ili9881c_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't get our power regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset GPIO\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @ili9881c_dsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9881c_dsi_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ili9881c*, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %7, i32 0, i32 3
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ili9881c* @devm_kzalloc(%struct.TYPE_8__* %8, i32 40, i32 %9)
  store %struct.ili9881c* %10, %struct.ili9881c** %5, align 8
  %11 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %12 = icmp ne %struct.ili9881c* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %114

16:                                               ; preds = %1
  %17 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %18 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %19 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %17, %struct.ili9881c* %18)
  %20 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %21 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %22 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %21, i32 0, i32 4
  store %struct.mipi_dsi_device* %20, %struct.mipi_dsi_device** %22, align 8
  %23 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %24 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %23, i32 0, i32 0
  %25 = call i32 @drm_panel_init(%struct.TYPE_7__* %24)
  %26 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %27 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %26, i32 0, i32 3
  %28 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %29 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %30, align 8
  %31 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %32 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32* @ili9881c_funcs, i32** %33, align 8
  %34 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %35 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %34, i32 0, i32 3
  %36 = call i32 @devm_regulator_get(%struct.TYPE_8__* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %38 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %40 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %16
  %45 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %46 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %45, i32 0, i32 3
  %47 = call i32 @dev_err(%struct.TYPE_8__* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %49 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %114

52:                                               ; preds = %16
  %53 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %54 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %53, i32 0, i32 3
  %55 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %56 = call i32 @devm_gpiod_get(%struct.TYPE_8__* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %58 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %60 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %52
  %65 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %66 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %65, i32 0, i32 3
  %67 = call i32 @dev_err(%struct.TYPE_8__* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %69 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %114

72:                                               ; preds = %52
  %73 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %74 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.device_node* @of_parse_phandle(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.device_node* %77, %struct.device_node** %4, align 8
  %78 = load %struct.device_node*, %struct.device_node** %4, align 8
  %79 = icmp ne %struct.device_node* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %72
  %81 = load %struct.device_node*, %struct.device_node** %4, align 8
  %82 = call i32 @of_find_backlight_by_node(%struct.device_node* %81)
  %83 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %84 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.device_node*, %struct.device_node** %4, align 8
  %86 = call i32 @of_node_put(%struct.device_node* %85)
  %87 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %88 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %80
  %92 = load i32, i32* @EPROBE_DEFER, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %114

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94, %72
  %96 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %97 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %96, i32 0, i32 0
  %98 = call i32 @drm_panel_add(%struct.TYPE_7__* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %114

103:                                              ; preds = %95
  %104 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %105 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %106 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %108 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %109 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %111 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %110, i32 0, i32 0
  store i32 4, i32* %111, align 4
  %112 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %113 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %112)
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %103, %101, %91, %64, %44, %13
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.ili9881c* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.ili9881c*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @of_find_backlight_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_7__*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
