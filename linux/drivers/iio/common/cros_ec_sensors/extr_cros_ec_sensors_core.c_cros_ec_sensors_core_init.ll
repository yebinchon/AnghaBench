; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.iio_dev = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device* }
%struct.cros_ec_sensors_core_state = type { %struct.ec_response_motion_sense*, i64*, %struct.TYPE_15__*, %struct.TYPE_12__*, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_16__*, i32 }
%struct.ec_response_motion_sense = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.cros_ec_dev = type { i64, %struct.TYPE_16__* }
%struct.cros_ec_sensor_platform = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_CMD_MOTION_SENSE_CMD = common dso_local global i64 0, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@MOTIONSENSE_CMD_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can not access sensor info\0A\00", align 1
@CROS_EC_SENSOR_MAX_AXIS = common dso_local global i32 0, align 4
@CROS_EC_SENSOR_X = common dso_local global i32 0, align 4
@MOTION_SENSE_DEFAULT_SCALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cros_ec_sensors_core_init(%struct.platform_device* %0, %struct.iio_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.cros_ec_sensors_core_state*, align 8
  %10 = alloca %struct.cros_ec_dev*, align 8
  %11 = alloca %struct.cros_ec_sensor_platform*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call %struct.cros_ec_sensors_core_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.cros_ec_sensors_core_state* %18, %struct.cros_ec_sensors_core_state** %9, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.cros_ec_dev* @dev_get_drvdata(i32 %22)
  store %struct.cros_ec_dev* %23, %struct.cros_ec_dev** %10, align 8
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = call %struct.cros_ec_sensor_platform* @dev_get_platdata(%struct.device* %24)
  store %struct.cros_ec_sensor_platform* %25, %struct.cros_ec_sensor_platform** %11, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.iio_dev* %27)
  %29 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %10, align 8
  %30 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %33 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %32, i32 0, i32 8
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 1
  %36 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %37 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %36, i32 0, i32 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @max(i32 4, i32 %40)
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.TYPE_15__* @devm_kzalloc(%struct.device* %35, i32 %41, i32 %42)
  %44 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %45 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %44, i32 0, i32 2
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %45, align 8
  %46 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %47 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %46, i32 0, i32 2
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = icmp ne %struct.TYPE_15__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %3
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %222

53:                                               ; preds = %3
  %54 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %55 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %54, i32 0, i32 2
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.ec_response_motion_sense*
  %60 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %61 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %60, i32 0, i32 0
  store %struct.ec_response_motion_sense* %59, %struct.ec_response_motion_sense** %61, align 8
  %62 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %63 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %62, i32 0, i32 9
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %66 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %65, i32 0, i32 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %10, align 8
  %69 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EC_CMD_MOTION_SENSE_CMD, align 8
  %72 = call i32 @cros_ec_get_host_cmd_version_mask(%struct.TYPE_16__* %67, i64 %70, i64 %71, i32* %12)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %53
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %222

77:                                               ; preds = %53
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @fls(i32 %78)
  %80 = sub nsw i32 %79, 1
  %81 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %82 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %81, i32 0, i32 2
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = load i64, i64* @EC_CMD_MOTION_SENSE_CMD, align 8
  %86 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %10, align 8
  %87 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %91 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %90, i32 0, i32 2
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  store i64 %89, i64* %93, align 8
  %94 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %95 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %94, i32 0, i32 2
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  store i32 4, i32* %97, align 4
  %98 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 1
  %100 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %101 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store %struct.device* %99, %struct.device** %102, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %107 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %221

110:                                              ; preds = %77
  %111 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %112 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %113 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @MOTIONSENSE_CMD_INFO, align 4
  %115 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %116 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load %struct.cros_ec_sensor_platform*, %struct.cros_ec_sensor_platform** %11, align 8
  %119 = getelementptr inbounds %struct.cros_ec_sensor_platform, %struct.cros_ec_sensor_platform* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %122 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 4
  %125 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %126 = call i32 @cros_ec_motion_send_host_cmd(%struct.cros_ec_sensors_core_state* %125, i32 0)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %110
  %130 = load %struct.device*, %struct.device** %8, align 8
  %131 = call i32 @dev_warn(%struct.device* %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %4, align 4
  br label %222

133:                                              ; preds = %110
  %134 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %135 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %134, i32 0, i32 0
  %136 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %135, align 8
  %137 = getelementptr inbounds %struct.ec_response_motion_sense, %struct.ec_response_motion_sense* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %141 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 8
  %142 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %143 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %142, i32 0, i32 0
  %144 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %143, align 8
  %145 = getelementptr inbounds %struct.ec_response_motion_sense, %struct.ec_response_motion_sense* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %149 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %151 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @CROS_EC_SENSOR_MAX_AXIS, align 4
  %154 = call i32 @memset(i32 %152, i32 1, i32 %153)
  %155 = load i32, i32* @CROS_EC_SENSOR_X, align 4
  store i32 %155, i32* %14, align 4
  br label %156

156:                                              ; preds = %169, %133
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @CROS_EC_SENSOR_MAX_AXIS, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %156
  %161 = load i32, i32* @MOTION_SENSE_DEFAULT_SCALE, align 4
  %162 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %163 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %162, i32 0, i32 3
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  store i32 %161, i32* %168, align 4
  br label %169

169:                                              ; preds = %160
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %156

172:                                              ; preds = %156
  %173 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %174 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 0
  store i64 0, i64* %176, align 8
  %177 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %178 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %177, i32 0, i32 2
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %181, 3
  br i1 %182, label %183, label %199

183:                                              ; preds = %172
  %184 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %185 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %184, i32 0, i32 0
  %186 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %185, align 8
  %187 = getelementptr inbounds %struct.ec_response_motion_sense, %struct.ec_response_motion_sense* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %191 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %190, i32 0, i32 1
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 1
  %194 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %195 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %194, i32 0, i32 1
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 2
  %198 = call i32 @get_default_min_max_freq(i32 %189, i64* %193, i64* %197)
  br label %220

199:                                              ; preds = %172
  %200 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %201 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %200, i32 0, i32 0
  %202 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %201, align 8
  %203 = getelementptr inbounds %struct.ec_response_motion_sense, %struct.ec_response_motion_sense* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %207 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %206, i32 0, i32 1
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 1
  store i64 %205, i64* %209, align 8
  %210 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %211 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %210, i32 0, i32 0
  %212 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %211, align 8
  %213 = getelementptr inbounds %struct.ec_response_motion_sense, %struct.ec_response_motion_sense* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %9, align 8
  %217 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %216, i32 0, i32 1
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 2
  store i64 %215, i64* %219, align 8
  br label %220

220:                                              ; preds = %199, %183
  br label %221

221:                                              ; preds = %220, %77
  store i32 0, i32* %4, align 4
  br label %222

222:                                              ; preds = %221, %129, %75, %50
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local %struct.cros_ec_sensors_core_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.cros_ec_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.cros_ec_sensor_platform* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_15__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @cros_ec_get_host_cmd_version_mask(%struct.TYPE_16__*, i64, i64, i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @cros_ec_motion_send_host_cmd(%struct.cros_ec_sensors_core_state*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @get_default_min_max_freq(i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
