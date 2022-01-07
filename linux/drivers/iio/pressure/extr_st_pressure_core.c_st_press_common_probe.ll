; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_st_pressure_core.c_st_press_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_st_pressure_core.c_st_press_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i64, i32, i32*, i32 }
%struct.st_sensor_data = type { i64, %struct.TYPE_16__*, i32, %struct.st_sensor_fullscale_avl*, i64, %struct.TYPE_9__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_12__, %struct.TYPE_10__, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.st_sensor_fullscale_avl = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.st_sensors_platform_data = type { i32 }

@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@press_info = common dso_local global i32 0, align 4
@default_press_pdata = common dso_local global i32 0, align 4
@ST_PRESS_TRIGGER_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"registered pressure sensor %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_press_common_probe(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.st_sensor_data*, align 8
  %5 = alloca %struct.st_sensors_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.st_sensor_data* %8, %struct.st_sensor_data** %4, align 8
  %9 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %10 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %9, i32 0, i32 5
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.st_sensors_platform_data*
  store %struct.st_sensors_platform_data* %14, %struct.st_sensors_platform_data** %5, align 8
  %15 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %16 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 4
  store i32* @press_info, i32** %19, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %21 = call i32 @st_sensors_power_enable(%struct.iio_dev* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %153

26:                                               ; preds = %1
  %27 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %28 = call i32 @st_sensors_verify_id(%struct.iio_dev* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %149

32:                                               ; preds = %26
  %33 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %34 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %40 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  %41 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %42 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %49 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %56 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = bitcast i32* %61 to %struct.st_sensor_fullscale_avl*
  %63 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %64 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %63, i32 0, i32 3
  store %struct.st_sensor_fullscale_avl* %62, %struct.st_sensor_fullscale_avl** %64, align 8
  %65 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %66 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %75 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %77 = icmp ne %struct.st_sensors_platform_data* %76, null
  br i1 %77, label %97, label %78

78:                                               ; preds = %32
  %79 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %80 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %78
  %88 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %89 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87, %78
  store %struct.st_sensors_platform_data* bitcast (i32* @default_press_pdata to %struct.st_sensors_platform_data*), %struct.st_sensors_platform_data** %5, align 8
  br label %97

97:                                               ; preds = %96, %87, %32
  %98 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %99 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %100 = call i32 @st_sensors_init_sensor(%struct.iio_dev* %98, %struct.st_sensors_platform_data* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %149

104:                                              ; preds = %97
  %105 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %106 = call i32 @st_press_allocate_ring(%struct.iio_dev* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %149

110:                                              ; preds = %104
  %111 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %112 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %117 = load i32, i32* @ST_PRESS_TRIGGER_OPS, align 4
  %118 = call i32 @st_sensors_allocate_trigger(%struct.iio_dev* %116, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %146

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %110
  %124 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %125 = call i32 @iio_device_register(%struct.iio_dev* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %137

129:                                              ; preds = %123
  %130 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %131 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %130, i32 0, i32 1
  %132 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %133 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dev_info(i32* %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %153

137:                                              ; preds = %128
  %138 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %139 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %144 = call i32 @st_sensors_deallocate_trigger(%struct.iio_dev* %143)
  br label %145

145:                                              ; preds = %142, %137
  br label %146

146:                                              ; preds = %145, %121
  %147 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %148 = call i32 @st_press_deallocate_ring(%struct.iio_dev* %147)
  br label %149

149:                                              ; preds = %146, %109, %103, %31
  %150 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %151 = call i32 @st_sensors_power_disable(%struct.iio_dev* %150)
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %149, %129, %24
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_power_enable(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_verify_id(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_init_sensor(%struct.iio_dev*, %struct.st_sensors_platform_data*) #1

declare dso_local i32 @st_press_allocate_ring(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_allocate_trigger(%struct.iio_dev*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @st_sensors_deallocate_trigger(%struct.iio_dev*) #1

declare dso_local i32 @st_press_deallocate_ring(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_power_disable(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
