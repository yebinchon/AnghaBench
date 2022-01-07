; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_st_accel_core.c_st_accel_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_st_accel_core.c_st_accel_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32, %struct.iio_chan_spec*, i32*, i32 }
%struct.iio_chan_spec = type { i32 }
%struct.st_sensor_data = type { i64, %struct.TYPE_10__*, i32, %struct.st_sensor_fullscale_avl*, i32, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.st_sensor_fullscale_avl = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.st_sensors_platform_data = type { i32 }

@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@accel_info = common dso_local global i32 0, align 4
@ST_ACCEL_NUMBER_DATA_CHANNELS = common dso_local global i32 0, align 4
@ST_SENSORS_NUMBER_ALL_CHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to apply ACPI orientation data: %d\0A\00", align 1
@default_accel_pdata = common dso_local global i32 0, align 4
@ST_ACCEL_TRIGGER_OPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"registered accelerometer %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_accel_common_probe(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.st_sensor_data*, align 8
  %5 = alloca %struct.st_sensors_platform_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.st_sensor_data* %10, %struct.st_sensor_data** %4, align 8
  %11 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %12 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %11, i32 0, i32 5
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.st_sensors_platform_data*
  store %struct.st_sensors_platform_data* %16, %struct.st_sensors_platform_data** %5, align 8
  %17 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 4
  store i32* @accel_info, i32** %21, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %23 = call i32 @st_sensors_power_enable(%struct.iio_dev* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %154

28:                                               ; preds = %1
  %29 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %30 = call i32 @st_sensors_verify_id(%struct.iio_dev* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %150

34:                                               ; preds = %28
  %35 = load i32, i32* @ST_ACCEL_NUMBER_DATA_CHANNELS, align 4
  %36 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %37 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @ST_SENSORS_NUMBER_ALL_CHANNELS, align 4
  %39 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  store i64 %45, i64* %7, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 2
  %48 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %49 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.iio_chan_spec* @devm_kmemdup(i32* %47, i32 %52, i64 %53, i32 %54)
  store %struct.iio_chan_spec* %55, %struct.iio_chan_spec** %6, align 8
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %57 = icmp ne %struct.iio_chan_spec* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %34
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %150

61:                                               ; preds = %34
  %62 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %64 = call i64 @apply_acpi_orientation(%struct.iio_dev* %62, %struct.iio_chan_spec* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @dev_warn(i32* %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 3
  store %struct.iio_chan_spec* %72, %struct.iio_chan_spec** %74, align 8
  %75 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %76 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = bitcast i32* %81 to %struct.st_sensor_fullscale_avl*
  %83 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %84 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %83, i32 0, i32 3
  store %struct.st_sensor_fullscale_avl* %82, %struct.st_sensor_fullscale_avl** %84, align 8
  %85 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %86 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %95 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %97 = icmp ne %struct.st_sensors_platform_data* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %71
  store %struct.st_sensors_platform_data* bitcast (i32* @default_accel_pdata to %struct.st_sensors_platform_data*), %struct.st_sensors_platform_data** %5, align 8
  br label %99

99:                                               ; preds = %98, %71
  %100 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %101 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %102 = call i32 @st_sensors_init_sensor(%struct.iio_dev* %100, %struct.st_sensors_platform_data* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %150

106:                                              ; preds = %99
  %107 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %108 = call i32 @st_accel_allocate_ring(%struct.iio_dev* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %150

112:                                              ; preds = %106
  %113 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %114 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %119 = load i32, i32* @ST_ACCEL_TRIGGER_OPS, align 4
  %120 = call i32 @st_sensors_allocate_trigger(%struct.iio_dev* %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %147

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %112
  %126 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %127 = call i32 @iio_device_register(%struct.iio_dev* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %138

131:                                              ; preds = %125
  %132 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %133 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %132, i32 0, i32 2
  %134 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %135 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dev_info(i32* %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  store i32 0, i32* %2, align 4
  br label %154

138:                                              ; preds = %130
  %139 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %140 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %145 = call i32 @st_sensors_deallocate_trigger(%struct.iio_dev* %144)
  br label %146

146:                                              ; preds = %143, %138
  br label %147

147:                                              ; preds = %146, %123
  %148 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %149 = call i32 @st_accel_deallocate_ring(%struct.iio_dev* %148)
  br label %150

150:                                              ; preds = %147, %111, %105, %58, %33
  %151 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %152 = call i32 @st_sensors_power_disable(%struct.iio_dev* %151)
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %150, %131, %26
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_power_enable(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_verify_id(%struct.iio_dev*) #1

declare dso_local %struct.iio_chan_spec* @devm_kmemdup(i32*, i32, i64, i32) #1

declare dso_local i64 @apply_acpi_orientation(%struct.iio_dev*, %struct.iio_chan_spec*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @st_sensors_init_sensor(%struct.iio_dev*, %struct.st_sensors_platform_data*) #1

declare dso_local i32 @st_accel_allocate_ring(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_allocate_trigger(%struct.iio_dev*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @st_sensors_deallocate_trigger(%struct.iio_dev*) #1

declare dso_local i32 @st_accel_deallocate_ring(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_power_disable(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
