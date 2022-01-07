; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_scpi-hwmon.c_scpi_hwmon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_scpi-hwmon.c_scpi_hwmon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.thermal_zone_device }
%struct.thermal_zone_device = type { i32 }
%struct.scpi_ops = type { i32 (i32*)*, i32 (i32, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.device = type opaque
%struct.scpi_sensors = type { %struct.sensor_data*, i32, %struct.TYPE_10__**, %struct.TYPE_10__, %struct.TYPE_8__**, %struct.scpi_ops* }
%struct.sensor_data = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__** }
%struct.of_device_id = type { i32* }
%struct.scpi_thermal_zone = type { i32, %struct.scpi_sensors* }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scpi_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to initialize scpi-hwmon data\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"temp%d_input\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"temp%d_label\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"in%d_input\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"in%d_label\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"curr%d_input\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"curr%d_label\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"power%d_input\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"power%d_label\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"energy%d_input\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"energy%d_label\00", align 1
@scpi_show_sensor = common dso_local global i32 0, align 4
@scpi_show_label = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"scpi_sensors\00", align 1
@scpi_sensor_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @scpi_hwmon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpi_hwmon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scpi_ops*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.scpi_sensors*, align 8
  %16 = alloca %struct.of_device_id*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sensor_data*, align 8
  %20 = alloca %struct.sensor_data*, align 8
  %21 = alloca %struct.thermal_zone_device*, align 8
  %22 = alloca %struct.scpi_thermal_zone*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = bitcast %struct.thermal_zone_device* %24 to %struct.device*
  store %struct.device* %25, %struct.device** %14, align 8
  %26 = call %struct.scpi_ops* (...) @get_scpi_ops()
  store %struct.scpi_ops* %26, %struct.scpi_ops** %12, align 8
  %27 = load %struct.scpi_ops*, %struct.scpi_ops** %12, align 8
  %28 = icmp ne %struct.scpi_ops* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %391

32:                                               ; preds = %1
  %33 = load %struct.scpi_ops*, %struct.scpi_ops** %12, align 8
  %34 = getelementptr inbounds %struct.scpi_ops, %struct.scpi_ops* %33, i32 0, i32 0
  %35 = load i32 (i32*)*, i32 (i32*)** %34, align 8
  %36 = call i32 %35(i32* %4)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %18, align 4
  store i32 %40, i32* %2, align 4
  br label %391

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %391

47:                                               ; preds = %41
  %48 = load %struct.device*, %struct.device** %14, align 8
  %49 = bitcast %struct.device* %48 to %struct.thermal_zone_device*
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @devm_kzalloc(%struct.thermal_zone_device* %49, i32 48, i32 %50)
  %52 = bitcast i8* %51 to %struct.scpi_sensors*
  store %struct.scpi_sensors* %52, %struct.scpi_sensors** %15, align 8
  %53 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %54 = icmp ne %struct.scpi_sensors* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %391

58:                                               ; preds = %47
  %59 = load %struct.device*, %struct.device** %14, align 8
  %60 = bitcast %struct.device* %59 to %struct.thermal_zone_device*
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @devm_kcalloc(%struct.thermal_zone_device* %60, i32 %61, i32 44, i32 %62)
  %64 = bitcast i8* %63 to %struct.sensor_data*
  %65 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %66 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %65, i32 0, i32 0
  store %struct.sensor_data* %64, %struct.sensor_data** %66, align 8
  %67 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %68 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %67, i32 0, i32 0
  %69 = load %struct.sensor_data*, %struct.sensor_data** %68, align 8
  %70 = icmp ne %struct.sensor_data* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %58
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %391

74:                                               ; preds = %58
  %75 = load %struct.device*, %struct.device** %14, align 8
  %76 = bitcast %struct.device* %75 to %struct.thermal_zone_device*
  %77 = load i32, i32* %4, align 4
  %78 = mul nsw i32 %77, 2
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @devm_kcalloc(%struct.thermal_zone_device* %76, i32 %79, i32 8, i32 %80)
  %82 = bitcast i8* %81 to %struct.TYPE_8__**
  %83 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %84 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %83, i32 0, i32 4
  store %struct.TYPE_8__** %82, %struct.TYPE_8__*** %84, align 8
  %85 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %86 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %85, i32 0, i32 4
  %87 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %86, align 8
  %88 = icmp ne %struct.TYPE_8__** %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %74
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %391

92:                                               ; preds = %74
  %93 = load %struct.scpi_ops*, %struct.scpi_ops** %12, align 8
  %94 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %95 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %94, i32 0, i32 5
  store %struct.scpi_ops* %93, %struct.scpi_ops** %95, align 8
  %96 = load i32, i32* @scpi_of_match, align 4
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call %struct.of_device_id* @of_match_device(i32 %96, %struct.thermal_zone_device* %98)
  store %struct.of_device_id* %99, %struct.of_device_id** %16, align 8
  %100 = load %struct.of_device_id*, %struct.of_device_id** %16, align 8
  %101 = icmp ne %struct.of_device_id* %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %92
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @dev_err(%struct.thermal_zone_device* %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %391

108:                                              ; preds = %92
  %109 = load %struct.of_device_id*, %struct.of_device_id** %16, align 8
  %110 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %6, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %17, align 4
  br label %112

112:                                              ; preds = %296, %108
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %299

116:                                              ; preds = %112
  %117 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %118 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %117, i32 0, i32 0
  %119 = load %struct.sensor_data*, %struct.sensor_data** %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %119, i64 %121
  store %struct.sensor_data* %122, %struct.sensor_data** %19, align 8
  %123 = load %struct.scpi_ops*, %struct.scpi_ops** %12, align 8
  %124 = getelementptr inbounds %struct.scpi_ops, %struct.scpi_ops* %123, i32 0, i32 1
  %125 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %128 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %127, i32 0, i32 0
  %129 = call i32 %125(i32 %126, %struct.TYPE_9__* %128)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %116
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %2, align 4
  br label %391

134:                                              ; preds = %116
  %135 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %136 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  switch i32 %138, label %212 [
    i32 129, label %139
    i32 128, label %154
    i32 132, label %167
    i32 130, label %182
    i32 131, label %197
  ]

139:                                              ; preds = %134
  %140 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %141 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  %145 = call i32 @snprintf(i32 %142, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %147 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  %151 = call i32 @snprintf(i32 %148, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %213

154:                                              ; preds = %134
  %155 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %156 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @snprintf(i32 %157, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  %160 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %161 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @snprintf(i32 %162, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %213

167:                                              ; preds = %134
  %168 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %169 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  %173 = call i32 @snprintf(i32 %170, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  %174 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %175 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  %179 = call i32 @snprintf(i32 %176, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %213

182:                                              ; preds = %134
  %183 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %184 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  %188 = call i32 @snprintf(i32 %185, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %187)
  %189 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %190 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  %194 = call i32 @snprintf(i32 %191, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  br label %213

197:                                              ; preds = %134
  %198 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %199 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  %203 = call i32 @snprintf(i32 %200, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %202)
  %204 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %205 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  %209 = call i32 @snprintf(i32 %206, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %213

212:                                              ; preds = %134
  br label %296

213:                                              ; preds = %197, %182, %167, %154, %139
  %214 = load i32*, i32** %6, align 8
  %215 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %216 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %214, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %223 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  %224 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %225 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  store i32 292, i32* %227, align 4
  %228 = load i32, i32* @scpi_show_sensor, align 4
  %229 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %230 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 4
  %232 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %233 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %236 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  store i32 %234, i32* %238, align 4
  %239 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %240 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  store i32 292, i32* %242, align 4
  %243 = load i32, i32* @scpi_show_label, align 4
  %244 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %245 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  store i32 %243, i32* %246, align 4
  %247 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %248 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %251 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  store i32 %249, i32* %253, align 4
  %254 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %255 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %258 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %257, i32 0, i32 4
  %259 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %258, align 8
  %260 = load i32, i32* %17, align 4
  %261 = shl i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %259, i64 %262
  store %struct.TYPE_8__* %256, %struct.TYPE_8__** %263, align 8
  %264 = load %struct.sensor_data*, %struct.sensor_data** %19, align 8
  %265 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %268 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %267, i32 0, i32 4
  %269 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %268, align 8
  %270 = load i32, i32* %17, align 4
  %271 = shl i32 %270, 1
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %269, i64 %273
  store %struct.TYPE_8__* %266, %struct.TYPE_8__** %274, align 8
  %275 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %276 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %275, i32 0, i32 4
  %277 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %276, align 8
  %278 = load i32, i32* %17, align 4
  %279 = shl i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %277, i64 %280
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %281, align 8
  %283 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %282)
  %284 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %285 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %284, i32 0, i32 4
  %286 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %285, align 8
  %287 = load i32, i32* %17, align 4
  %288 = shl i32 %287, 1
  %289 = add nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %286, i64 %290
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %291, align 8
  %293 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %292)
  %294 = load i32, i32* %17, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %17, align 4
  br label %296

296:                                              ; preds = %213, %212
  %297 = load i32, i32* %5, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %5, align 4
  br label %112

299:                                              ; preds = %112
  %300 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %301 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %300, i32 0, i32 4
  %302 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %301, align 8
  %303 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %304 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  store %struct.TYPE_8__** %302, %struct.TYPE_8__*** %305, align 8
  %306 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %307 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %306, i32 0, i32 3
  %308 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %309 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %308, i32 0, i32 2
  %310 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %310, i64 0
  store %struct.TYPE_10__* %307, %struct.TYPE_10__** %311, align 8
  %312 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %313 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %314 = call i32 @platform_set_drvdata(%struct.platform_device* %312, %struct.scpi_sensors* %313)
  %315 = load %struct.device*, %struct.device** %14, align 8
  %316 = bitcast %struct.device* %315 to %struct.thermal_zone_device*
  %317 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %318 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %319 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %318, i32 0, i32 2
  %320 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %319, align 8
  %321 = call %struct.thermal_zone_device* @devm_hwmon_device_register_with_groups(%struct.thermal_zone_device* %316, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), %struct.scpi_sensors* %317, %struct.TYPE_10__** %320)
  %322 = bitcast %struct.thermal_zone_device* %321 to %struct.device*
  store %struct.device* %322, %struct.device** %13, align 8
  %323 = load %struct.device*, %struct.device** %13, align 8
  %324 = bitcast %struct.device* %323 to %struct.thermal_zone_device*
  %325 = call i64 @IS_ERR(%struct.thermal_zone_device* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %299
  %328 = load %struct.device*, %struct.device** %13, align 8
  %329 = bitcast %struct.device* %328 to %struct.thermal_zone_device*
  %330 = call i32 @PTR_ERR(%struct.thermal_zone_device* %329)
  store i32 %330, i32* %2, align 4
  br label %391

331:                                              ; preds = %299
  %332 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %333 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %332, i32 0, i32 1
  %334 = call i32 @INIT_LIST_HEAD(i32* %333)
  store i32 0, i32* %5, align 4
  br label %335

335:                                              ; preds = %387, %331
  %336 = load i32, i32* %5, align 4
  %337 = load i32, i32* %4, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %390

339:                                              ; preds = %335
  %340 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %341 = getelementptr inbounds %struct.scpi_sensors, %struct.scpi_sensors* %340, i32 0, i32 0
  %342 = load %struct.sensor_data*, %struct.sensor_data** %341, align 8
  %343 = load i32, i32* %5, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %342, i64 %344
  store %struct.sensor_data* %345, %struct.sensor_data** %20, align 8
  %346 = load %struct.sensor_data*, %struct.sensor_data** %20, align 8
  %347 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 129
  br i1 %350, label %351, label %352

351:                                              ; preds = %339
  br label %387

352:                                              ; preds = %339
  %353 = load %struct.device*, %struct.device** %14, align 8
  %354 = bitcast %struct.device* %353 to %struct.thermal_zone_device*
  %355 = load i32, i32* @GFP_KERNEL, align 4
  %356 = call i8* @devm_kzalloc(%struct.thermal_zone_device* %354, i32 16, i32 %355)
  %357 = bitcast i8* %356 to %struct.scpi_thermal_zone*
  store %struct.scpi_thermal_zone* %357, %struct.scpi_thermal_zone** %22, align 8
  %358 = load %struct.scpi_thermal_zone*, %struct.scpi_thermal_zone** %22, align 8
  %359 = icmp ne %struct.scpi_thermal_zone* %358, null
  br i1 %359, label %363, label %360

360:                                              ; preds = %352
  %361 = load i32, i32* @ENOMEM, align 4
  %362 = sub nsw i32 0, %361
  store i32 %362, i32* %2, align 4
  br label %391

363:                                              ; preds = %352
  %364 = load i32, i32* %5, align 4
  %365 = load %struct.scpi_thermal_zone*, %struct.scpi_thermal_zone** %22, align 8
  %366 = getelementptr inbounds %struct.scpi_thermal_zone, %struct.scpi_thermal_zone* %365, i32 0, i32 0
  store i32 %364, i32* %366, align 8
  %367 = load %struct.scpi_sensors*, %struct.scpi_sensors** %15, align 8
  %368 = load %struct.scpi_thermal_zone*, %struct.scpi_thermal_zone** %22, align 8
  %369 = getelementptr inbounds %struct.scpi_thermal_zone, %struct.scpi_thermal_zone* %368, i32 0, i32 1
  store %struct.scpi_sensors* %367, %struct.scpi_sensors** %369, align 8
  %370 = load %struct.device*, %struct.device** %14, align 8
  %371 = bitcast %struct.device* %370 to %struct.thermal_zone_device*
  %372 = load %struct.sensor_data*, %struct.sensor_data** %20, align 8
  %373 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.scpi_thermal_zone*, %struct.scpi_thermal_zone** %22, align 8
  %377 = call %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.thermal_zone_device* %371, i32 %375, %struct.scpi_thermal_zone* %376, i32* @scpi_sensor_ops)
  store %struct.thermal_zone_device* %377, %struct.thermal_zone_device** %21, align 8
  %378 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %21, align 8
  %379 = call i64 @IS_ERR(%struct.thermal_zone_device* %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %363
  %382 = load %struct.device*, %struct.device** %14, align 8
  %383 = bitcast %struct.device* %382 to %struct.thermal_zone_device*
  %384 = load %struct.scpi_thermal_zone*, %struct.scpi_thermal_zone** %22, align 8
  %385 = call i32 @devm_kfree(%struct.thermal_zone_device* %383, %struct.scpi_thermal_zone* %384)
  br label %386

386:                                              ; preds = %381, %363
  br label %387

387:                                              ; preds = %386, %351
  %388 = load i32, i32* %5, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %5, align 4
  br label %335

390:                                              ; preds = %335
  store i32 0, i32* %2, align 4
  br label %391

391:                                              ; preds = %390, %360, %327, %132, %102, %89, %71, %55, %44, %39, %29
  %392 = load i32, i32* %2, align 4
  ret i32 %392
}

declare dso_local %struct.scpi_ops* @get_scpi_ops(...) #1

declare dso_local i8* @devm_kzalloc(%struct.thermal_zone_device*, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.thermal_zone_device*, i32, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.thermal_zone_device*) #1

declare dso_local i32 @dev_err(%struct.thermal_zone_device*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.scpi_sensors*) #1

declare dso_local %struct.thermal_zone_device* @devm_hwmon_device_register_with_groups(%struct.thermal_zone_device*, i8*, %struct.scpi_sensors*, %struct.TYPE_10__**) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.thermal_zone_device*, i32, %struct.scpi_thermal_zone*, i32*) #1

declare dso_local i32 @devm_kfree(%struct.thermal_zone_device*, %struct.scpi_thermal_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
