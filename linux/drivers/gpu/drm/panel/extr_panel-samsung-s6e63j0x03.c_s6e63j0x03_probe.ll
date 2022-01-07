; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63j0x03.c_s6e63j0x03_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63j0x03.c_s6e63j0x03_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.s6e63j0x03 = type { %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.device* }
%struct.TYPE_13__ = type { i32*, %struct.device* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_EOT_PACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vdd3\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vci\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"cannot get reset-gpio: %ld\0A\00", align 1
@s6e63j0x03_funcs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"s6e63j0x03\00", align 1
@s6e63j0x03_bl_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to register backlight device\0A\00", align 1
@MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@DEFAULT_BRIGHTNESS = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @s6e63j0x03_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e63j0x03_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s6e63j0x03*, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %7, i32 0, i32 3
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.s6e63j0x03* @devm_kzalloc(%struct.device* %9, i32 48, i32 %10)
  store %struct.s6e63j0x03* %11, %struct.s6e63j0x03** %5, align 8
  %12 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %13 = icmp ne %struct.s6e63j0x03* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %151

17:                                               ; preds = %1
  %18 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %19 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %20 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %18, %struct.s6e63j0x03* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %23 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %22, i32 0, i32 4
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %27 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %28 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @MIPI_DSI_MODE_EOT_PACKET, align 4
  %30 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %31 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %33 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %32, i32 0, i32 3
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  %37 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %38 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %37, i32 0, i32 3
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %41, align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %44 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %43, i32 0, i32 3
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %45)
  %47 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %48 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %47, i32 0, i32 3
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = call i32 @devm_regulator_bulk_get(%struct.device* %42, i32 %46, %struct.TYPE_14__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %17
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %151

58:                                               ; preds = %17
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %61 = call %struct.TYPE_15__* @devm_gpiod_get(%struct.device* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %63 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %62, i32 0, i32 2
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %63, align 8
  %64 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %65 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %64, i32 0, i32 2
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = call i64 @IS_ERR(%struct.TYPE_15__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %58
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %72 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %71, i32 0, i32 2
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = call i32 @PTR_ERR(%struct.TYPE_15__* %73)
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %77 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %76, i32 0, i32 2
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = call i32 @PTR_ERR(%struct.TYPE_15__* %78)
  store i32 %79, i32* %2, align 4
  br label %151

80:                                               ; preds = %58
  %81 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %82 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %81, i32 0, i32 1
  %83 = call i32 @drm_panel_init(%struct.TYPE_13__* %82)
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %86 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  store %struct.device* %84, %struct.device** %87, align 8
  %88 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %89 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  store i32* @s6e63j0x03_funcs, i32** %90, align 8
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %93 = call %struct.TYPE_15__* @backlight_device_register(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %struct.device* %91, %struct.s6e63j0x03* %92, i32* @s6e63j0x03_bl_ops, i32* null)
  %94 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %95 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %94, i32 0, i32 0
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %95, align 8
  %96 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %97 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = call i64 @IS_ERR(%struct.TYPE_15__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %80
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %104 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %105 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %104, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = call i32 @PTR_ERR(%struct.TYPE_15__* %106)
  store i32 %107, i32* %2, align 4
  br label %151

108:                                              ; preds = %80
  %109 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %110 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %111 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  store i32 %109, i32* %114, align 4
  %115 = load i32, i32* @DEFAULT_BRIGHTNESS, align 4
  %116 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %117 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %116, i32 0, i32 0
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  store i32 %115, i32* %120, align 4
  %121 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %122 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %123 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %122, i32 0, i32 0
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 4
  %127 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %128 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %127, i32 0, i32 1
  %129 = call i32 @drm_panel_add(%struct.TYPE_13__* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %108
  br label %145

133:                                              ; preds = %108
  %134 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %135 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %2, align 4
  br label %151

141:                                              ; preds = %138
  %142 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %143 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %142, i32 0, i32 1
  %144 = call i32 @drm_panel_remove(%struct.TYPE_13__* %143)
  br label %145

145:                                              ; preds = %141, %132
  %146 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %5, align 8
  %147 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %146, i32 0, i32 0
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = call i32 @backlight_device_unregister(%struct.TYPE_15__* %148)
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %145, %139, %101, %69, %53, %14
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.s6e63j0x03* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.s6e63j0x03*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.TYPE_15__* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @backlight_device_register(i8*, %struct.device*, %struct.s6e63j0x03*, i32*, i32*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_13__*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_panel_remove(%struct.TYPE_13__*) #1

declare dso_local i32 @backlight_device_unregister(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
