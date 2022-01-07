; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_set_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.st_sensor_odr_avl = type { i32, i32, i32, i32 }
%struct.st_sensor_data = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_sensors_set_enable(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_sensor_odr_avl, align 4
  %9 = alloca %struct.st_sensor_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = bitcast %struct.st_sensor_odr_avl* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.st_sensor_data* %14, %struct.st_sensor_data** %9, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %95

17:                                               ; preds = %2
  %18 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %19 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %25 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %31 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %29, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %17
  %38 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %39 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %45 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %43, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %37
  %52 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %53 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %56 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @st_sensors_match_odr(%struct.TYPE_6__* %54, i32 %57, %struct.st_sensor_odr_avl* %8)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %123

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.st_sensor_odr_avl, %struct.st_sensor_odr_avl* %8, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %37, %17
  %66 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %67 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %68 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %74 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @st_sensors_write_data_with_mask(%struct.iio_dev* %66, i64 %72, i64 %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  br label %123

84:                                               ; preds = %65
  %85 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %86 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.st_sensor_odr_avl, %struct.st_sensor_odr_avl* %8, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %93 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %89, %84
  br label %122

95:                                               ; preds = %2
  %96 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %97 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %98 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %104 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %110 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @st_sensors_write_data_with_mask(%struct.iio_dev* %96, i64 %102, i64 %108, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %95
  br label %123

119:                                              ; preds = %95
  %120 = load %struct.st_sensor_data*, %struct.st_sensor_data** %9, align 8
  %121 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %94
  br label %123

123:                                              ; preds = %122, %118, %83, %61
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #2

declare dso_local i32 @st_sensors_match_odr(%struct.TYPE_6__*, i32, %struct.st_sensor_odr_avl*) #2

declare dso_local i32 @st_sensors_write_data_with_mask(%struct.iio_dev*, i64, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
