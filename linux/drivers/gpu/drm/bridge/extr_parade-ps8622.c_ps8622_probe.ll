; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_parade-ps8622.c_ps8622_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_parade-ps8622.c_ps8622_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.ps8622_bridge = type { i64, i64, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.i2c_client*, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vdd12\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"no 1.2v regulator found for PS8622\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot get gpio_slp %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"cannot get gpio_rst %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"lane-count\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"lane-count property is too high,using max_lane_count\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"use-external-pwm\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ps8622-backlight\00", align 1
@ps8622_backlight_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@PS8622_MAX_BRIGHTNESS = common dso_local global i8* null, align 8
@ps8622_bridge_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ps8622_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps8622_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ps8622_bridge*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ps8622_bridge* @devm_kzalloc(%struct.device* %11, i32 80, i32 %12)
  store %struct.ps8622_bridge* %13, %struct.ps8622_bridge** %7, align 8
  %14 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %15 = icmp ne %struct.ps8622_bridge* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %181

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %24 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %23, i32 0, i32 8
  %25 = call i32 @drm_of_find_panel_or_bridge(i32 %22, i32 0, i32 0, i32* %24, i32* null)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %181

30:                                               ; preds = %19
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %33 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %32, i32 0, i32 7
  store %struct.i2c_client* %31, %struct.i2c_client** %33, align 8
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call %struct.TYPE_9__* @devm_regulator_get(%struct.device* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %37 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %36, i32 0, i32 6
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %37, align 8
  %38 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %39 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %38, i32 0, i32 6
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = call i64 @IS_ERR(%struct.TYPE_9__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @dev_info(%struct.device* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %47 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %46, i32 0, i32 6
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %47, align 8
  br label %48

48:                                               ; preds = %43, %30
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %51 = call i8* @devm_gpiod_get(%struct.device* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_9__*
  %53 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %54 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %53, i32 0, i32 5
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %54, align 8
  %55 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %56 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %55, i32 0, i32 5
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i64 @IS_ERR(%struct.TYPE_9__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %48
  %61 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %62 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %61, i32 0, i32 5
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = call i32 @PTR_ERR(%struct.TYPE_9__* %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %181

69:                                               ; preds = %48
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %72 = call i8* @devm_gpiod_get(%struct.device* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = bitcast i8* %72 to %struct.TYPE_9__*
  %74 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %75 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %74, i32 0, i32 4
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %75, align 8
  %76 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %77 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %76, i32 0, i32 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = call i64 @IS_ERR(%struct.TYPE_9__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %69
  %82 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %83 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %82, i32 0, i32 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = call i32 @PTR_ERR(%struct.TYPE_9__* %84)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %181

90:                                               ; preds = %69
  %91 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %92 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %95 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = getelementptr inbounds %struct.device, %struct.device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %100 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %99, i32 0, i32 1
  %101 = call i64 @of_property_read_u32(i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %90
  %104 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %105 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %108 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %126

109:                                              ; preds = %90
  %110 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %111 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %114 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %112, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = call i32 @dev_info(%struct.device* %118, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %120 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %121 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %124 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %117, %109
  br label %126

126:                                              ; preds = %125, %103
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = getelementptr inbounds %struct.device, %struct.device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @of_find_property(i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* null)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %165, label %132

132:                                              ; preds = %126
  %133 = load %struct.device*, %struct.device** %6, align 8
  %134 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %135 = call %struct.TYPE_9__* @backlight_device_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), %struct.device* %133, %struct.ps8622_bridge* %134, i32* @ps8622_backlight_ops, i32* null)
  %136 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %137 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %136, i32 0, i32 3
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %137, align 8
  %138 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %139 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %138, i32 0, i32 3
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = call i64 @IS_ERR(%struct.TYPE_9__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %132
  %144 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %145 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %146 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %145, i32 0, i32 3
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = call i32 @PTR_ERR(%struct.TYPE_9__* %147)
  store i32 %148, i32* %8, align 4
  %149 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %150 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %149, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %150, align 8
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %3, align 4
  br label %181

152:                                              ; preds = %132
  %153 = load i8*, i8** @PS8622_MAX_BRIGHTNESS, align 8
  %154 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %155 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %154, i32 0, i32 3
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  store i8* %153, i8** %158, align 8
  %159 = load i8*, i8** @PS8622_MAX_BRIGHTNESS, align 8
  %160 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %161 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %160, i32 0, i32 3
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  store i8* %159, i8** %164, align 8
  br label %165

165:                                              ; preds = %152, %126
  %166 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %167 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  store i32* @ps8622_bridge_funcs, i32** %168, align 8
  %169 = load %struct.device*, %struct.device** %6, align 8
  %170 = getelementptr inbounds %struct.device, %struct.device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %173 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  %175 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %176 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %175, i32 0, i32 2
  %177 = call i32 @drm_bridge_add(%struct.TYPE_8__* %176)
  %178 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %179 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %7, align 8
  %180 = call i32 @i2c_set_clientdata(%struct.i2c_client* %178, %struct.ps8622_bridge* %179)
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %165, %143, %81, %60, %28, %16
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.ps8622_bridge* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @of_find_property(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @backlight_device_register(i8*, %struct.device*, %struct.ps8622_bridge*, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_8__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ps8622_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
