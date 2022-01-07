; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_ad5272.c_ad5272_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_ad5272.c_ad5272_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.iio_dev = type { i32, i32, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.ad5272_data = type { i32*, i32, %struct.i2c_client* }

@ENOMEM = common dso_local global i32 0, align 4
@ad5272_cfg = common dso_local global i32* null, align 8
@AD5272_CTL = common dso_local global i32 0, align 4
@AD5272_RDAC_WR_EN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ad5272_info = common dso_local global i32 0, align 4
@ad5272_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad5272_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5272_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.ad5272_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %12, i32 24)
  store %struct.iio_dev* %13, %struct.iio_dev** %7, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.iio_dev* %21)
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = call %struct.ad5272_data* @iio_priv(%struct.iio_dev* %23)
  store %struct.ad5272_data* %24, %struct.ad5272_data** %8, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.ad5272_data*, %struct.ad5272_data** %8, align 8
  %27 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %26, i32 0, i32 2
  store %struct.i2c_client* %25, %struct.i2c_client** %27, align 8
  %28 = load %struct.ad5272_data*, %struct.ad5272_data** %8, align 8
  %29 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %28, i32 0, i32 1
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load i32*, i32** @ad5272_cfg, align 8
  %32 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load %struct.ad5272_data*, %struct.ad5272_data** %8, align 8
  %37 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.ad5272_data*, %struct.ad5272_data** %8, align 8
  %39 = call i32 @ad5272_reset(%struct.ad5272_data* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %19
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %73

44:                                               ; preds = %19
  %45 = load %struct.ad5272_data*, %struct.ad5272_data** %8, align 8
  %46 = load i32, i32* @AD5272_CTL, align 4
  %47 = load i32, i32* @AD5272_RDAC_WR_EN, align 4
  %48 = call i32 @ad5272_write(%struct.ad5272_data* %45, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %73

54:                                               ; preds = %44
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.device* %55, %struct.device** %58, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 3
  store i32* @ad5272_info, i32** %60, align 8
  %61 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 2
  store i32* @ad5272_channel, i32** %62, align 8
  %63 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %72 = call i32 @devm_iio_device_register(%struct.device* %70, %struct.iio_dev* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %54, %51, %42, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local %struct.ad5272_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ad5272_reset(%struct.ad5272_data*) #1

declare dso_local i32 @ad5272_write(%struct.ad5272_data*, i32, i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
