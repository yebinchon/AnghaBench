; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_init_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_init_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.st_sensors_platform_data = type { i32 }
%struct.st_sensor_data = type { i32, %struct.TYPE_15__*, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Full-scale not possible\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"set interrupt line to open drain mode on pin %d\0A\00", align 1
@ST_SENSORS_ENABLE_ALL_AXIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_sensors_init_sensor(%struct.iio_dev* %0, %struct.st_sensors_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.st_sensors_platform_data*, align 8
  %6 = alloca %struct.st_sensor_data*, align 8
  %7 = alloca %struct.st_sensors_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.st_sensors_platform_data* %1, %struct.st_sensors_platform_data** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.st_sensor_data* %12, %struct.st_sensor_data** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %18 = call %struct.st_sensors_platform_data* @st_sensors_of_probe(i32 %16, %struct.st_sensors_platform_data* %17)
  store %struct.st_sensors_platform_data* %18, %struct.st_sensors_platform_data** %7, align 8
  %19 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %7, align 8
  %20 = icmp ne %struct.st_sensors_platform_data* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %7, align 8
  store %struct.st_sensors_platform_data* %22, %struct.st_sensors_platform_data** %5, align 8
  br label %23

23:                                               ; preds = %21, %2
  %24 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %25 = icmp ne %struct.st_sensors_platform_data* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %28 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %29 = call i32 @st_sensors_set_drdy_int_pin(%struct.iio_dev* %27, %struct.st_sensors_platform_data* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %198

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %37 = call i32 @st_sensors_set_enable(%struct.iio_dev* %36, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %198

42:                                               ; preds = %35
  %43 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %44 = call i32 @st_sensors_set_dataready_irq(%struct.iio_dev* %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %198

49:                                               ; preds = %42
  %50 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %51 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %50, i32 0, i32 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = icmp ne %struct.TYPE_9__* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %56 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %57 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %56, i32 0, i32 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @st_sensors_set_fullscale(%struct.iio_dev* %55, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %198

66:                                               ; preds = %54
  br label %71

67:                                               ; preds = %49
  %68 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 0
  %70 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_info(%struct.TYPE_16__* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %66
  %72 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %73 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %74 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @st_sensors_set_odr(%struct.iio_dev* %72, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %198

81:                                               ; preds = %71
  %82 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %83 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %82, i32 0, i32 1
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %81
  %90 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %91 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %92 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %98 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %97, i32 0, i32 1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @st_sensors_write_data_with_mask(%struct.iio_dev* %90, i64 %96, i64 %102, i32 1)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %89
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %198

108:                                              ; preds = %89
  br label %109

109:                                              ; preds = %108, %81
  %110 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %111 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %110, i32 0, i32 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %109
  %118 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %119 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %120 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %126 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %125, i32 0, i32 1
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @st_sensors_write_data_with_mask(%struct.iio_dev* %118, i64 %124, i64 %130, i32 1)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %117
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %198

136:                                              ; preds = %117
  br label %137

137:                                              ; preds = %136, %109
  %138 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %139 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %193

142:                                              ; preds = %137
  %143 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %144 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %162

147:                                              ; preds = %142
  %148 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %149 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %148, i32 0, i32 1
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %9, align 8
  %155 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %156 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %155, i32 0, i32 1
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %10, align 8
  br label %177

162:                                              ; preds = %142
  %163 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %164 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %163, i32 0, i32 1
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %9, align 8
  %170 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %171 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %170, i32 0, i32 1
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %10, align 8
  br label %177

177:                                              ; preds = %162, %147
  %178 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %179 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %178, i32 0, i32 0
  %180 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %181 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_info(%struct.TYPE_16__* %179, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  %184 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* %10, align 8
  %187 = call i32 @st_sensors_write_data_with_mask(%struct.iio_dev* %184, i64 %185, i64 %186, i32 1)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %177
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %3, align 4
  br label %198

192:                                              ; preds = %177
  br label %193

193:                                              ; preds = %192, %137
  %194 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %195 = load i32, i32* @ST_SENSORS_ENABLE_ALL_AXIS, align 4
  %196 = call i32 @st_sensors_set_axis_enable(%struct.iio_dev* %194, i32 %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %193, %190, %134, %106, %79, %64, %47, %40, %32
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.st_sensors_platform_data* @st_sensors_of_probe(i32, %struct.st_sensors_platform_data*) #1

declare dso_local i32 @st_sensors_set_drdy_int_pin(%struct.iio_dev*, %struct.st_sensors_platform_data*) #1

declare dso_local i32 @st_sensors_set_enable(%struct.iio_dev*, i32) #1

declare dso_local i32 @st_sensors_set_dataready_irq(%struct.iio_dev*, i32) #1

declare dso_local i32 @st_sensors_set_fullscale(%struct.iio_dev*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @st_sensors_set_odr(%struct.iio_dev*, i32) #1

declare dso_local i32 @st_sensors_write_data_with_mask(%struct.iio_dev*, i64, i64, i32) #1

declare dso_local i32 @st_sensors_set_axis_enable(%struct.iio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
