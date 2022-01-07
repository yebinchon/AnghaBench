; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_st_magn_core.c_st_magn_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_st_magn_core.c_st_magn_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32, i32, i32*, i32 }
%struct.st_sensor_data = type { i64, %struct.TYPE_8__*, i32, %struct.st_sensor_fullscale_avl*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.st_sensor_fullscale_avl = type { i32 }

@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@magn_info = common dso_local global i32 0, align 4
@ST_MAGN_NUMBER_DATA_CHANNELS = common dso_local global i32 0, align 4
@ST_SENSORS_NUMBER_ALL_CHANNELS = common dso_local global i32 0, align 4
@ST_MAGN_TRIGGER_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"registered magnetometer %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_magn_common_probe(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.st_sensor_data*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.st_sensor_data* %7, %struct.st_sensor_data** %4, align 8
  %8 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 4
  store i32* @magn_info, i32** %12, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = call i32 @st_sensors_power_enable(%struct.iio_dev* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %113

19:                                               ; preds = %1
  %20 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %21 = call i32 @st_sensors_verify_id(%struct.iio_dev* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %109

25:                                               ; preds = %19
  %26 = load i32, i32* @ST_MAGN_NUMBER_DATA_CHANNELS, align 4
  %27 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %28 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %30 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ST_SENSORS_NUMBER_ALL_CHANNELS, align 4
  %37 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %40 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = bitcast i32* %45 to %struct.st_sensor_fullscale_avl*
  %47 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %48 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %47, i32 0, i32 3
  store %struct.st_sensor_fullscale_avl* %46, %struct.st_sensor_fullscale_avl** %48, align 8
  %49 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %50 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %59 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %61 = call i32 @st_sensors_init_sensor(%struct.iio_dev* %60, i32* null)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %25
  br label %109

65:                                               ; preds = %25
  %66 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %67 = call i32 @st_magn_allocate_ring(%struct.iio_dev* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %109

71:                                               ; preds = %65
  %72 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %73 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %78 = load i32, i32* @ST_MAGN_TRIGGER_OPS, align 4
  %79 = call i32 @st_sensors_allocate_trigger(%struct.iio_dev* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %106

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %71
  %85 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %86 = call i32 @iio_device_register(%struct.iio_dev* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %97

90:                                               ; preds = %84
  %91 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 1
  %93 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %94 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_info(i32* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %95)
  store i32 0, i32* %2, align 4
  br label %113

97:                                               ; preds = %89
  %98 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %99 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %104 = call i32 @st_sensors_deallocate_trigger(%struct.iio_dev* %103)
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %105, %82
  %107 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %108 = call i32 @st_magn_deallocate_ring(%struct.iio_dev* %107)
  br label %109

109:                                              ; preds = %106, %70, %64, %24
  %110 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %111 = call i32 @st_sensors_power_disable(%struct.iio_dev* %110)
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %90, %17
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_power_enable(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_verify_id(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_init_sensor(%struct.iio_dev*, i32*) #1

declare dso_local i32 @st_magn_allocate_ring(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_allocate_trigger(%struct.iio_dev*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @st_sensors_deallocate_trigger(%struct.iio_dev*) #1

declare dso_local i32 @st_magn_deallocate_ring(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_power_disable(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
