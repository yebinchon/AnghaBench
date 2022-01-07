; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_set_fullscale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_set_fullscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.st_sensor_data = type { %struct.TYPE_6__*, %struct.st_sensor_fullscale_avl* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.st_sensor_fullscale_avl = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to set new fullscale.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @st_sensors_set_fullscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_sensors_set_fullscale(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_sensor_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.st_sensor_data* %10, %struct.st_sensor_data** %8, align 8
  %11 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %12 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

19:                                               ; preds = %2
  %20 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %21 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @st_sensors_match_fs(%struct.TYPE_6__* %22, i32 %23, i32* %7)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %71

28:                                               ; preds = %19
  %29 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %30 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %31 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %37 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %43 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @st_sensors_write_data_with_mask(%struct.iio_dev* %29, i64 %35, i32 %41, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %28
  br label %71

57:                                               ; preds = %28
  %58 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %59 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = bitcast %struct.TYPE_4__* %66 to %struct.st_sensor_fullscale_avl*
  %68 = load %struct.st_sensor_data*, %struct.st_sensor_data** %8, align 8
  %69 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %68, i32 0, i32 1
  store %struct.st_sensor_fullscale_avl* %67, %struct.st_sensor_fullscale_avl** %69, align 8
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %76

71:                                               ; preds = %56, %27
  %72 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %57, %18
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_match_fs(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @st_sensors_write_data_with_mask(%struct.iio_dev*, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
