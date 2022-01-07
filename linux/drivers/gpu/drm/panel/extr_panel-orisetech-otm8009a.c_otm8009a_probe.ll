; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, %struct.TYPE_12__*, i32, %struct.device }
%struct.TYPE_12__ = type { i32 }
%struct.device = type { i32 }
%struct.otm8009a = type { %struct.TYPE_15__*, %struct.TYPE_14__, %struct.device*, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32*, %struct.device* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot get reset-gpio\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to request regulator: %d\0A\00", align 1
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@otm8009a_drm_funcs = common dso_local global i32 0, align 4
@otm8009a_backlight_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to register backlight: %d\0A\00", align 1
@OTM8009A_BACKLIGHT_MAX = common dso_local global i32 0, align 4
@OTM8009A_BACKLIGHT_DEFAULT = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"mipi_dsi_attach failed. Is host ready?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @otm8009a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otm8009a_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.otm8009a*, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %7, i32 0, i32 4
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.otm8009a* @devm_kzalloc(%struct.device* %9, i32 48, i32 %10)
  store %struct.otm8009a* %11, %struct.otm8009a** %5, align 8
  %12 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %13 = icmp ne %struct.otm8009a* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %159

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %20 = call %struct.TYPE_15__* @devm_gpiod_get_optional(%struct.device* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %22 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %21, i32 0, i32 4
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %22, align 8
  %23 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %24 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %23, i32 0, i32 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = call i64 @IS_ERR(%struct.TYPE_15__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %32 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %31, i32 0, i32 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = call i32 @PTR_ERR(%struct.TYPE_15__* %33)
  store i32 %34, i32* %2, align 4
  br label %159

35:                                               ; preds = %17
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call %struct.TYPE_15__* @devm_regulator_get(%struct.device* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %39 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %38, i32 0, i32 3
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %39, align 8
  %40 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %41 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %40, i32 0, i32 3
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = call i64 @IS_ERR(%struct.TYPE_15__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %35
  %46 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %47 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %46, i32 0, i32 3
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = call i32 @PTR_ERR(%struct.TYPE_15__* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @EPROBE_DEFER, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %45
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %159

60:                                               ; preds = %35
  %61 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %62 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %63 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %61, %struct.otm8009a* %62)
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %66 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %65, i32 0, i32 2
  store %struct.device* %64, %struct.device** %66, align 8
  %67 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %68 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %67, i32 0, i32 0
  store i32 2, i32* %68, align 8
  %69 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %70 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %71 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %73 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %78 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %80 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %79, i32 0, i32 1
  %81 = call i32 @drm_panel_init(%struct.TYPE_14__* %80)
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %84 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store %struct.device* %82, %struct.device** %85, align 8
  %86 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %87 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i32* @otm8009a_drm_funcs, i32** %88, align 8
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 @dev_name(%struct.device* %90)
  %92 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %93 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %92, i32 0, i32 2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %98 = call %struct.TYPE_15__* @devm_backlight_device_register(%struct.device* %89, i32 %91, i32 %96, %struct.otm8009a* %97, i32* @otm8009a_backlight_ops, i32* null)
  %99 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %100 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %99, i32 0, i32 0
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %100, align 8
  %101 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %102 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %101, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = call i64 @IS_ERR(%struct.TYPE_15__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %60
  %107 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %108 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = call i32 @PTR_ERR(%struct.TYPE_15__* %109)
  store i32 %110, i32* %6, align 4
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %159

115:                                              ; preds = %60
  %116 = load i32, i32* @OTM8009A_BACKLIGHT_MAX, align 4
  %117 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %118 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %117, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  store i32 %116, i32* %121, align 4
  %122 = load i32, i32* @OTM8009A_BACKLIGHT_DEFAULT, align 4
  %123 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %124 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %123, i32 0, i32 0
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  store i32 %122, i32* %127, align 4
  %128 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %129 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %130 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %129, i32 0, i32 0
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  store i32 %128, i32* %133, align 4
  %134 = load i32, i32* @BACKLIGHT_RAW, align 4
  %135 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %136 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %135, i32 0, i32 0
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  store i32 %134, i32* %139, align 4
  %140 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %141 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %140, i32 0, i32 1
  %142 = call i32 @drm_panel_add(%struct.TYPE_14__* %141)
  %143 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %144 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %115
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %150 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %151 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %150, i32 0, i32 1
  %152 = call i32 @drm_panel_remove(%struct.TYPE_14__* %151)
  %153 = load %struct.otm8009a*, %struct.otm8009a** %5, align 8
  %154 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %153, i32 0, i32 0
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = call i32 @backlight_device_unregister(%struct.TYPE_15__* %155)
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %159

158:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %147, %106, %58, %28, %14
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.otm8009a* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.otm8009a*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @devm_backlight_device_register(%struct.device*, i32, i32, %struct.otm8009a*, i32*, i32*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_14__*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_panel_remove(%struct.TYPE_14__*) #1

declare dso_local i32 @backlight_device_unregister(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
