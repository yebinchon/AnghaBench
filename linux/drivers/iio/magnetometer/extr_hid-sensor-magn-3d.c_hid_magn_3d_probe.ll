; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hid-sensor-magn-3d.c_hid_magn_3d_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hid-sensor-magn-3d.c_hid_magn_3d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.hid_sensor_hub_device* }
%struct.hid_sensor_hub_device = type { i32 }
%struct.iio_dev = type { i32, i8*, i32, i32*, %struct.TYPE_8__, %struct.iio_chan_spec* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.iio_chan_spec = type { i32 }
%struct.magn_3d_state = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.platform_device*, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.platform_device*, %struct.hid_sensor_hub_device* }

@hid_magn_3d_probe.name = internal global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [8 x i8] c"magn_3d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HID_USAGE_SENSOR_COMPASS_3D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to setup common attributes\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to parse report\0A\00", align 1
@magn_3d_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to initialize trigger buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"trigger setup failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"device register failed\0A\00", align 1
@magn_3d_proc_event = common dso_local global i32 0, align 4
@magn_3d_capture_sample = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"callback reg failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hid_magn_3d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_magn_3d_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.magn_3d_state*, align 8
  %7 = alloca %struct.hid_sensor_hub_device*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %12, align 8
  store %struct.hid_sensor_hub_device* %13, %struct.hid_sensor_hub_device** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__* %15, i32 64)
  store %struct.iio_dev* %16, %struct.iio_dev** %5, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = icmp eq %struct.iio_dev* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %158

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.iio_dev* %24)
  %26 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %27 = call %struct.magn_3d_state* @iio_priv(%struct.iio_dev* %26)
  store %struct.magn_3d_state* %27, %struct.magn_3d_state** %6, align 8
  %28 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %7, align 8
  %29 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %30 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  store %struct.hid_sensor_hub_device* %28, %struct.hid_sensor_hub_device** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %34 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  store %struct.platform_device* %32, %struct.platform_device** %35, align 8
  %36 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %7, align 8
  %37 = load i32, i32* @HID_USAGE_SENSOR_COMPASS_3D, align 4
  %38 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %39 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %38, i32 0, i32 0
  %40 = call i32 @hid_sensor_parse_common_attributes(%struct.hid_sensor_hub_device* %36, i32 %37, %struct.TYPE_10__* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %22
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(%struct.TYPE_11__* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %158

48:                                               ; preds = %22
  %49 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %50 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %49, i32 0, i32 2
  %51 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %52 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %51, i32 0, i32 0
  %53 = bitcast %struct.TYPE_10__* %50 to i8*
  %54 = bitcast %struct.TYPE_10__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 24, i1 false)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %7, align 8
  %57 = load i32, i32* @HID_USAGE_SENSOR_COMPASS_3D, align 4
  %58 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %59 = call i32 @magn_3d_parse_report(%struct.platform_device* %55, %struct.hid_sensor_hub_device* %56, %struct.iio_chan_spec** %8, i32* %9, i32 %57, %struct.magn_3d_state* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %48
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(%struct.TYPE_11__* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %158

67:                                               ; preds = %48
  %68 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 5
  store %struct.iio_chan_spec* %68, %struct.iio_chan_spec** %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %78, align 8
  %79 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 3
  store i32* @magn_3d_info, i32** %80, align 8
  %81 = load i8*, i8** @hid_magn_3d_probe.name, align 8
  %82 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %85 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %86 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %88 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %87, i32* @iio_pollfunc_store_time, i32* null, i32* null)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %67
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_err(%struct.TYPE_11__* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %158

96:                                               ; preds = %67
  %97 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %98 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = call i32 @atomic_set(i32* %99, i32 0)
  %101 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %102 = load i8*, i8** @hid_magn_3d_probe.name, align 8
  %103 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %104 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %103, i32 0, i32 0
  %105 = call i32 @hid_sensor_setup_trigger(%struct.iio_dev* %101, i8* %102, %struct.TYPE_10__* %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %96
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @dev_err(%struct.TYPE_11__* %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %154

112:                                              ; preds = %96
  %113 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %114 = call i32 @iio_device_register(%struct.iio_dev* %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 @dev_err(%struct.TYPE_11__* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %150

121:                                              ; preds = %112
  %122 = load i32, i32* @magn_3d_proc_event, align 4
  %123 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %124 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* @magn_3d_capture_sample, align 4
  %127 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %128 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %132 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  store %struct.platform_device* %130, %struct.platform_device** %133, align 8
  %134 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %7, align 8
  %135 = load i32, i32* @HID_USAGE_SENSOR_COMPASS_3D, align 4
  %136 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %137 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %136, i32 0, i32 1
  %138 = call i32 @sensor_hub_register_callback(%struct.hid_sensor_hub_device* %134, i32 %135, %struct.TYPE_9__* %137)
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %121
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @dev_err(%struct.TYPE_11__* %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %147

145:                                              ; preds = %121
  %146 = load i32, i32* %4, align 4
  store i32 %146, i32* %2, align 4
  br label %158

147:                                              ; preds = %141
  %148 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %149 = call i32 @iio_device_unregister(%struct.iio_dev* %148)
  br label %150

150:                                              ; preds = %147, %117
  %151 = load %struct.magn_3d_state*, %struct.magn_3d_state** %6, align 8
  %152 = getelementptr inbounds %struct.magn_3d_state, %struct.magn_3d_state* %151, i32 0, i32 0
  %153 = call i32 @hid_sensor_remove_trigger(%struct.TYPE_10__* %152)
  br label %154

154:                                              ; preds = %150, %108
  %155 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %156 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %155)
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %145, %91, %62, %43, %19
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local %struct.magn_3d_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hid_sensor_parse_common_attributes(%struct.hid_sensor_hub_device*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @magn_3d_parse_report(%struct.platform_device*, %struct.hid_sensor_hub_device*, %struct.iio_chan_spec**, i32*, i32, %struct.magn_3d_state*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hid_sensor_setup_trigger(%struct.iio_dev*, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @sensor_hub_register_callback(%struct.hid_sensor_hub_device*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @hid_sensor_remove_trigger(%struct.TYPE_10__*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
