; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ams-iaq-core.c_ams_iaqcore_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ams-iaq-core.c_ams_iaqcore_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ams_iaqcore_data = type { i32, i64, %struct.i2c_client* }

@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ams_iaqcore_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ams_iaqcore_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ams_iaqcore_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_iaqcore_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ams_iaqcore_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %9, i32 24)
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call %struct.ams_iaqcore_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.ams_iaqcore_data* %18, %struct.ams_iaqcore_data** %7, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.iio_dev* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.ams_iaqcore_data*, %struct.ams_iaqcore_data** %7, align 8
  %24 = getelementptr inbounds %struct.ams_iaqcore_data, %struct.ams_iaqcore_data* %23, i32 0, i32 2
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* @HZ, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load %struct.ams_iaqcore_data*, %struct.ams_iaqcore_data** %7, align 8
  %29 = getelementptr inbounds %struct.ams_iaqcore_data, %struct.ams_iaqcore_data* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.ams_iaqcore_data*, %struct.ams_iaqcore_data** %7, align 8
  %31 = getelementptr inbounds %struct.ams_iaqcore_data, %struct.ams_iaqcore_data* %30, i32 0, i32 0
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32* %34, i32** %37, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 4
  store i32* @ams_iaqcore_info, i32** %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = call i32 @dev_name(i32* %41)
  %43 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @ams_iaqcore_channels, align 4
  %49 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ams_iaqcore_channels, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %58 = call i32 @devm_iio_device_register(i32* %56, %struct.iio_dev* %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %16, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ams_iaqcore_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
