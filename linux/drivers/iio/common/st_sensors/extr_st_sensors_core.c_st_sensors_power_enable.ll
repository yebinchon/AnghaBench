; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_power_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_power_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.st_sensor_data = type { i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to get Vdd supply\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to enable specified Vdd supply\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"unable to get Vdd_IO supply\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to enable specified Vdd_IO supply\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_sensors_power_enable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.st_sensor_data*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.st_sensor_data* %7, %struct.st_sensor_data** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @devm_regulator_get(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %14 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %16 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %22 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_3__* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %25 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @PTR_ERR(i8* %26)
  store i32 %27, i32* %2, align 4
  br label %79

28:                                               ; preds = %1
  %29 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %30 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @regulator_enable(i8* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(%struct.TYPE_3__* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %79

40:                                               ; preds = %28
  %41 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @devm_regulator_get(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %47 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %49 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @IS_ERR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %40
  %54 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_3__* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %58 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  store i32 %60, i32* %5, align 4
  br label %73

61:                                               ; preds = %40
  %62 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %63 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @regulator_enable(i8* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 0
  %71 = call i32 @dev_warn(%struct.TYPE_3__* %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %73

72:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %79

73:                                               ; preds = %68, %53
  %74 = load %struct.st_sensor_data*, %struct.st_sensor_data** %4, align 8
  %75 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @regulator_disable(i8* %76)
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %73, %72, %35, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i8* @devm_regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
