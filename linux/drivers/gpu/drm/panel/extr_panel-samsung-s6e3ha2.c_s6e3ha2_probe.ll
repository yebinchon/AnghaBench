; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e3ha2.c_s6e3ha2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e3ha2.c_s6e3ha2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.s6e3ha2 = type { %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32, %struct.device* }
%struct.TYPE_12__ = type { i32*, %struct.device* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vdd3\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vci\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"cannot get reset-gpios %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"cannot get enable-gpios %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"s6e3ha2\00", align 1
@s6e3ha2_bl_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"failed to register backlight device\0A\00", align 1
@S6E3HA2_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@S6E3HA2_DEFAULT_BRIGHTNESS = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@s6e3ha2_drm_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @s6e3ha2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e3ha2_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s6e3ha2*, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %7, i32 0, i32 3
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.s6e3ha2* @devm_kzalloc(%struct.device* %9, i32 64, i32 %10)
  store %struct.s6e3ha2* %11, %struct.s6e3ha2** %5, align 8
  %12 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %13 = icmp ne %struct.s6e3ha2* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %179

17:                                               ; preds = %1
  %18 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %19 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %20 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %18, %struct.s6e3ha2* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %23 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %22, i32 0, i32 6
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @of_device_get_match_data(%struct.device* %24)
  %26 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %27 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %29 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %28, i32 0, i32 0
  store i32 4, i32* %29, align 4
  %30 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %31 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %32 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %34 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %35 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %37 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %36, i32 0, i32 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %42 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %41, i32 0, i32 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %45, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %48 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %47, i32 0, i32 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %49)
  %51 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %52 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %51, i32 0, i32 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = call i32 @devm_regulator_bulk_get(%struct.device* %46, i32 %50, %struct.TYPE_13__* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %17
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %179

62:                                               ; preds = %17
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %65 = call i8* @devm_gpiod_get(%struct.device* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = bitcast i8* %65 to %struct.TYPE_14__*
  %67 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %68 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %67, i32 0, i32 3
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %68, align 8
  %69 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %70 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %69, i32 0, i32 3
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = call i64 @IS_ERR(%struct.TYPE_14__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %62
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %77 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %76, i32 0, i32 3
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = call i32 @PTR_ERR(%struct.TYPE_14__* %78)
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %82 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %81, i32 0, i32 3
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = call i32 @PTR_ERR(%struct.TYPE_14__* %83)
  store i32 %84, i32* %2, align 4
  br label %179

85:                                               ; preds = %62
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %88 = call i8* @devm_gpiod_get(%struct.device* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = bitcast i8* %88 to %struct.TYPE_14__*
  %90 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %91 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %90, i32 0, i32 2
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %91, align 8
  %92 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %93 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %92, i32 0, i32 2
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = call i64 @IS_ERR(%struct.TYPE_14__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %85
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %100 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %99, i32 0, i32 2
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = call i32 @PTR_ERR(%struct.TYPE_14__* %101)
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  %104 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %105 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %104, i32 0, i32 2
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = call i32 @PTR_ERR(%struct.TYPE_14__* %106)
  store i32 %107, i32* %2, align 4
  br label %179

108:                                              ; preds = %85
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %111 = call %struct.TYPE_14__* @backlight_device_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %struct.device* %109, %struct.s6e3ha2* %110, i32* @s6e3ha2_bl_ops, i32* null)
  %112 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %113 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %112, i32 0, i32 0
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %113, align 8
  %114 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %115 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %114, i32 0, i32 0
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = call i64 @IS_ERR(%struct.TYPE_14__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %108
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %122 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %123 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %122, i32 0, i32 0
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = call i32 @PTR_ERR(%struct.TYPE_14__* %124)
  store i32 %125, i32* %2, align 4
  br label %179

126:                                              ; preds = %108
  %127 = load i32, i32* @S6E3HA2_MAX_BRIGHTNESS, align 4
  %128 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %129 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %128, i32 0, i32 0
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  store i32 %127, i32* %132, align 4
  %133 = load i32, i32* @S6E3HA2_DEFAULT_BRIGHTNESS, align 4
  %134 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %135 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %134, i32 0, i32 0
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32 %133, i32* %138, align 4
  %139 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %140 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %141 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %140, i32 0, i32 0
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  store i32 %139, i32* %144, align 4
  %145 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %146 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %145, i32 0, i32 1
  %147 = call i32 @drm_panel_init(%struct.TYPE_12__* %146)
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %150 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  store %struct.device* %148, %struct.device** %151, align 8
  %152 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %153 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  store i32* @s6e3ha2_drm_funcs, i32** %154, align 8
  %155 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %156 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %155, i32 0, i32 1
  %157 = call i32 @drm_panel_add(%struct.TYPE_12__* %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %126
  br label %173

161:                                              ; preds = %126
  %162 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %163 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %169

167:                                              ; preds = %161
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %2, align 4
  br label %179

169:                                              ; preds = %166
  %170 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %171 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %170, i32 0, i32 1
  %172 = call i32 @drm_panel_remove(%struct.TYPE_12__* %171)
  br label %173

173:                                              ; preds = %169, %160
  %174 = load %struct.s6e3ha2*, %struct.s6e3ha2** %5, align 8
  %175 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %174, i32 0, i32 0
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = call i32 @backlight_device_unregister(%struct.TYPE_14__* %176)
  %178 = load i32, i32* %6, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %173, %167, %119, %97, %74, %57, %14
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.s6e3ha2* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.s6e3ha2*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @backlight_device_register(i8*, %struct.device*, %struct.s6e3ha2*, i32*, i32*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_12__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_12__*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_panel_remove(%struct.TYPE_12__*) #1

declare dso_local i32 @backlight_device_unregister(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
