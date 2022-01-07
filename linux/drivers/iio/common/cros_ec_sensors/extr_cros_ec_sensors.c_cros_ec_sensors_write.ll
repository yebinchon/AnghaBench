; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors.c_cros_ec_sensors_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors.c_cros_ec_sensors_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.cros_ec_sensors_state = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, i8* }
%struct.TYPE_8__ = type { i32*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@MOTIONSENSE_CMD_SENSOR_OFFSET = common dso_local global i32 0, align 4
@MOTION_SENSE_SET_OFFSET = common dso_local global i8* null, align 8
@CROS_EC_SENSOR_X = common dso_local global i32 0, align 4
@CROS_EC_SENSOR_MAX_AXIS = common dso_local global i32 0, align 4
@EC_MOTION_SENSE_INVALID_CALIB_TEMP = common dso_local global i8* null, align 8
@MOTIONSENSE_CMD_SENSOR_SCALE = common dso_local global i32 0, align 4
@MOTIONSENSE_TYPE_MAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MOTIONSENSE_CMD_SENSOR_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @cros_ec_sensors_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_sensors_write(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.cros_ec_sensors_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.cros_ec_sensors_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.cros_ec_sensors_state* %16, %struct.cros_ec_sensors_state** %11, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %21 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i64, i64* %10, align 8
  switch i64 %24, label %171 [
    i64 130, label %25
    i64 129, label %83
    i64 128, label %141
  ]

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %28 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %26, i32* %34, align 4
  %35 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_OFFSET, align 4
  %36 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %37 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 8
  %40 = load i8*, i8** @MOTION_SENSE_SET_OFFSET, align 8
  %41 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %42 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i8* %40, i8** %45, align 8
  %46 = load i32, i32* @CROS_EC_SENSOR_X, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %70, %25
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @CROS_EC_SENSOR_MAX_AXIS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %53 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %62 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %60, i32* %69, align 4
  br label %70

70:                                               ; preds = %51
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %47

73:                                               ; preds = %47
  %74 = load i8*, i8** @EC_MOTION_SENSE_INVALID_CALIB_TEMP, align 8
  %75 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %76 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  store i8* %74, i8** %79, align 8
  %80 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %81 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %80, i32 0, i32 0
  %82 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_13__* %81, i32 0)
  store i32 %82, i32* %13, align 4
  br label %179

83:                                               ; preds = %5
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %86 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i32 %84, i32* %92, align 4
  %93 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_SCALE, align 4
  %94 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %95 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 8
  %98 = load i8*, i8** @MOTION_SENSE_SET_OFFSET, align 8
  %99 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %100 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i8* %98, i8** %103, align 8
  %104 = load i32, i32* @CROS_EC_SENSOR_X, align 4
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %128, %83
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @CROS_EC_SENSOR_MAX_AXIS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %111 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %120 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %118, i32* %127, align 4
  br label %128

128:                                              ; preds = %109
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %105

131:                                              ; preds = %105
  %132 = load i8*, i8** @EC_MOTION_SENSE_INVALID_CALIB_TEMP, align 8
  %133 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %134 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i8* %132, i8** %137, align 8
  %138 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %139 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %138, i32 0, i32 0
  %140 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_13__* %139, i32 0)
  store i32 %140, i32* %13, align 4
  br label %179

141:                                              ; preds = %5
  %142 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %143 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @MOTIONSENSE_TYPE_MAG, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %13, align 4
  br label %179

151:                                              ; preds = %141
  %152 = load i32, i32* @MOTIONSENSE_CMD_SENSOR_RANGE, align 4
  %153 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %154 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  store i32 %152, i32* %156, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %159 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  store i32 %157, i32* %162, align 8
  %163 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %164 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  %168 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %169 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %168, i32 0, i32 0
  %170 = call i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_13__* %169, i32 0)
  store i32 %170, i32* %13, align 4
  br label %179

171:                                              ; preds = %5
  %172 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %173 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %172, i32 0, i32 0
  %174 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @cros_ec_sensors_core_write(%struct.TYPE_13__* %173, %struct.iio_chan_spec* %174, i32 %175, i32 %176, i64 %177)
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %171, %151, %148, %131, %73
  %180 = load %struct.cros_ec_sensors_state*, %struct.cros_ec_sensors_state** %11, align 8
  %181 = getelementptr inbounds %struct.cros_ec_sensors_state, %struct.cros_ec_sensors_state* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = call i32 @mutex_unlock(i32* %182)
  %184 = load i32, i32* %13, align 4
  ret i32 %184
}

declare dso_local %struct.cros_ec_sensors_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cros_ec_motion_send_host_cmd(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @cros_ec_sensors_core_write(%struct.TYPE_13__*, %struct.iio_chan_spec*, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
