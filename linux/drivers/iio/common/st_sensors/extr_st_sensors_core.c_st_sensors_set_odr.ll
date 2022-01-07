; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_set_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_set_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.st_sensor_odr_avl = type { i32, i32, i32, i32 }
%struct.st_sensor_data = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_sensors_set_odr(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_sensor_odr_avl, align 4
  %8 = alloca %struct.st_sensor_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.st_sensor_odr_avl* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.st_sensor_data* %11, %struct.st_sensor_data** %8, align 8
  %12 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %13 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

20:                                               ; preds = %2
  %21 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %22 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @st_sensors_match_odr(%struct.TYPE_6__* %23, i32 %24, %struct.st_sensor_odr_avl* %7)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %107

29:                                               ; preds = %20
  %30 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %31 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %37 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %35, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %29
  %44 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %45 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %51 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %49, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %43
  %58 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %59 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %64 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %65 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %71 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.st_sensor_odr_avl, %struct.st_sensor_odr_avl* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @st_sensors_write_data_with_mask(%struct.iio_dev* %63, i64 %69, i64 %75, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %80

79:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %62
  br label %98

81:                                               ; preds = %43, %29
  %82 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %83 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %84 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %83, i32 0, i32 2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %90 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.st_sensor_odr_avl, %struct.st_sensor_odr_avl* %7, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @st_sensors_write_data_with_mask(%struct.iio_dev* %82, i64 %88, i64 %94, i32 %96)
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %81, %80
  %99 = load i32, i32* %6, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.st_sensor_odr_avl, %struct.st_sensor_odr_avl* %7, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %105 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %98
  br label %107

107:                                              ; preds = %106, %28
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %19
  %110 = load i32, i32* %3, align 4
  ret i32 %110
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
