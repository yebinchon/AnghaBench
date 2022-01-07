; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_max5432.c_max5432_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_max5432.c_max5432_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.max5432_data = type { i64, %struct.i2c_client* }

@ENOMEM = common dso_local global i32 0, align 4
@max5432_info = common dso_local global i32 0, align 4
@max5432_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max5432_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max5432_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.max5432_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 16)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.iio_dev* %20)
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = call %struct.max5432_data* @iio_priv(%struct.iio_dev* %22)
  store %struct.max5432_data* %23, %struct.max5432_data** %8, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.max5432_data*, %struct.max5432_data** %8, align 8
  %26 = getelementptr inbounds %struct.max5432_data, %struct.max5432_data* %25, i32 0, i32 1
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i64 @of_device_get_match_data(%struct.device* %27)
  %29 = load %struct.max5432_data*, %struct.max5432_data** %8, align 8
  %30 = getelementptr inbounds %struct.max5432_data, %struct.max5432_data* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.device* %31, %struct.device** %34, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 3
  store i32* @max5432_info, i32** %36, align 8
  %37 = load i32, i32* @max5432_channels, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @max5432_channels, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %51 = call i32 @devm_iio_device_register(%struct.device* %49, %struct.iio_dev* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %18, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local %struct.max5432_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
