; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_debugfs_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_debugfs_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.st_sensor_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_sensors_debugfs_reg_access(%struct.iio_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.st_sensor_data*, align 8
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %12)
  store %struct.st_sensor_data* %13, %struct.st_sensor_data** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load %struct.st_sensor_data*, %struct.st_sensor_data** %10, align 8
  %18 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @regmap_write(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %35

23:                                               ; preds = %4
  %24 = load %struct.st_sensor_data*, %struct.st_sensor_data** %10, align 8
  %25 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @regmap_read(i32 %26, i32 %27, i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %35

34:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %32, %16
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
