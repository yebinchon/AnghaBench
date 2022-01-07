; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors.c_cros_ec_sensors_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors.c_cros_ec_sensors_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.cros_ec_sensors_state = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 (%struct.iio_dev*, i32, i32*)*, i32, i32, %struct.TYPE_18__*, %struct.TYPE_16__, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@MOTIONSENSE_CMD_SENSOR_OFFSET = common dso_local global i32 0, align 4
@CROS_EC_SENSOR_X = common dso_local global i32 0, align 4
@CROS_EC_SENSOR_MAX_AXIS = common dso_local global i32 0, align 4
@MOTIONSENSE_CMD_SENSOR_SCALE = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@MOTION_SENSE_DEFAULT_SCALE = common dso_local global i32 0, align 4
@MOTIONSENSE_CMD_SENSOR_RANGE = common dso_local global i32 0, align 4
@EC_MOTION_SENSE_NO_VALUE = common dso_local global i32 0, align 4
@CROS_EC_SENSOR_BITS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @cros_ec_sensors_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_sensors_read(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cros_ec_sensors_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call %struct.cros_ec_sensors_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.cros_ec_sensors_state* %18, %struct.cros_ec_sensors_state** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %23 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i64, i64* %10, align 8
  switch i64 %26, label %251 [
    i64 132, label %27
    i64 134, label %43
    i64 133, label %101
    i64 131, label %187
  ]

27:                                               ; preds = %5
  %28 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %29 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32 (%struct.iio_dev*, i32, i32*)*, i32 (%struct.iio_dev*, i32, i32*)** %30, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = load i32, i32* %16, align 4
  %34 = shl i32 1, %33
  %35 = call i32 %31(%struct.iio_dev* %32, i32 %34, i32* %12)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %259

39:                                               ; preds = %27
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %259

43:                                               ; preds = %5
  %44 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_OFFSET, align 4
  %45 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %46 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %50 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %55 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %54, i32 0, i32 0
  %56 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_19__* %55, i32 0)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  br label %259

60:                                               ; preds = %43
  %61 = load i32, i32* @CROS_EC_SENSOR_X, align 4
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %86, %60
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @CROS_EC_SENSOR_MAX_AXIS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %68 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %79 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  store i32 %77, i32* %85, align 4
  br label %86

86:                                               ; preds = %66
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %62

89:                                               ; preds = %62
  %90 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %90, i32* %15, align 4
  %91 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %92 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  br label %259

101:                                              ; preds = %5
  %102 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_SCALE, align 4
  %103 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %104 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  store i32 %102, i32* %106, align 4
  %107 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %108 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %113 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %112, i32 0, i32 0
  %114 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_19__* %113, i32 0)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @EPROTO, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %101
  %120 = load i32*, i32** %8, align 8
  store i32 1, i32* %120, align 4
  %121 = load i32*, i32** %9, align 8
  store i32 0, i32* %121, align 4
  %122 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %122, i32* %15, align 4
  br label %259

123:                                              ; preds = %101
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %259

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* @CROS_EC_SENSOR_X, align 4
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %154, %128
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @CROS_EC_SENSOR_MAX_AXIS, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %130
  %135 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %136 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %147 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 5
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  store i32 %145, i32* %153, align 4
  br label %154

154:                                              ; preds = %134
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %130

157:                                              ; preds = %130
  %158 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %159 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = ashr i32 %166, 15
  %168 = load i32*, i32** %8, align 8
  store i32 %167, i32* %168, align 4
  %169 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %170 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 32767
  %179 = sext i32 %178 to i64
  %180 = mul nsw i64 %179, 1000000
  %181 = load i32, i32* @MOTION_SENSE_DEFAULT_SCALE, align 4
  %182 = sext i32 %181 to i64
  %183 = sdiv i64 %180, %182
  %184 = trunc i64 %183 to i32
  %185 = load i32*, i32** %9, align 8
  store i32 %184, i32* %185, align 4
  %186 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %186, i32* %15, align 4
  br label %259

187:                                              ; preds = %5
  %188 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_RANGE, align 4
  %189 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %190 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  store i32 %188, i32* %192, align 4
  %193 = load i32, i32* @EC_MOTION_SENSE_NO_VALUE, align 4
  %194 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %195 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  store i32 %193, i32* %198, align 8
  %199 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %200 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %199, i32 0, i32 0
  %201 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_19__* %200, i32 0)
  store i32 %201, i32* %15, align 4
  %202 = load i32, i32* %15, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %187
  br label %259

205:                                              ; preds = %187
  %206 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %207 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* %13, align 4
  %213 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %214 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  switch i32 %216, label %247 [
    i32 130, label %217
    i32 129, label %227
    i32 128, label %239
  ]

217:                                              ; preds = %205
  %218 = load i32, i32* %13, align 4
  %219 = mul nsw i32 %218, 980665
  %220 = call i32 @div_s64(i32 %219, i32 10)
  %221 = load i32*, i32** %8, align 8
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* @CROS_EC_SENSOR_BITS, align 4
  %223 = sub nsw i32 %222, 1
  %224 = shl i32 10000, %223
  %225 = load i32*, i32** %9, align 8
  store i32 %224, i32* %225, align 4
  %226 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %226, i32* %15, align 4
  br label %250

227:                                              ; preds = %205
  %228 = load i32*, i32** %8, align 8
  store i32 0, i32* %228, align 4
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = mul i64 %230, 3141592653
  %232 = trunc i64 %231 to i32
  %233 = load i32, i32* @CROS_EC_SENSOR_BITS, align 4
  %234 = sub nsw i32 %233, 1
  %235 = shl i32 180, %234
  %236 = call i32 @div_s64(i32 %232, i32 %235)
  %237 = load i32*, i32** %9, align 8
  store i32 %236, i32* %237, align 4
  %238 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %238, i32* %15, align 4
  br label %250

239:                                              ; preds = %205
  %240 = load i32, i32* %13, align 4
  %241 = load i32*, i32** %8, align 8
  store i32 %240, i32* %241, align 4
  %242 = load i32, i32* @CROS_EC_SENSOR_BITS, align 4
  %243 = sub nsw i32 %242, 1
  %244 = shl i32 100, %243
  %245 = load i32*, i32** %9, align 8
  store i32 %244, i32* %245, align 4
  %246 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %246, i32* %15, align 4
  br label %250

247:                                              ; preds = %205
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %15, align 4
  br label %250

250:                                              ; preds = %247, %239, %227, %217
  br label %259

251:                                              ; preds = %5
  %252 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %253 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %252, i32 0, i32 0
  %254 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %255 = load i32*, i32** %8, align 8
  %256 = load i32*, i32** %9, align 8
  %257 = load i64, i64* %10, align 8
  %258 = call i32 @cros_ec_sensors_core_read(%struct.TYPE_19__* %253, %struct.iio_chan_spec* %254, i32* %255, i32* %256, i64 %257)
  store i32 %258, i32* %15, align 4
  br label %259

259:                                              ; preds = %251, %250, %204, %157, %126, %119, %89, %59, %39, %38
  %260 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %261 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 1
  %263 = call i32 @mutex_unlock(i32* %262)
  %264 = load i32, i32* %15, align 4
  ret i32 %264
}

declare dso_local %struct.cros_ec_sensors_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i32 @cros_ec_sensors_core_read(%struct.TYPE_19__*, %struct.iio_chan_spec*, i32*, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
