; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_abp060mg.c_abp060mg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_abp060mg.c_abp060mg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i64 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.abp_state = type { i32, i32, %struct.i2c_client* }

@ENOMEM = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_QUICK = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@abp060mg_info = common dso_local global i32 0, align 4
@abp060mg_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @abp060mg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abp060mg_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.abp_state*, align 8
  %8 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %10 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %13, i32 16)
  store %struct.iio_dev* %14, %struct.iio_dev** %6, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = icmp ne %struct.iio_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %22 = call %struct.abp_state* @iio_priv(%struct.iio_dev* %21)
  store %struct.abp_state* %22, %struct.abp_state** %7, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.abp_state*, %struct.abp_state** %7, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.i2c_client* %23, %struct.abp_state* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.abp_state*, %struct.abp_state** %7, align 8
  %28 = getelementptr inbounds %struct.abp_state, %struct.abp_state* %27, i32 0, i32 2
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I2C_FUNC_SMBUS_QUICK, align 4
  %33 = call i32 @i2c_check_functionality(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %20
  %36 = load %struct.abp_state*, %struct.abp_state** %7, align 8
  %37 = getelementptr inbounds %struct.abp_state, %struct.abp_state* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %20
  %39 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @abp060mg_init_device(%struct.iio_dev* %39, i64 %40)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @dev_name(i32* %48)
  %50 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32* @abp060mg_info, i32** %56, align 8
  %57 = load i32, i32* @abp060mg_channels, align 4
  %58 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @abp060mg_channels, align 4
  %61 = call i32 @ARRAY_SIZE(i32 %60)
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.abp_state*, %struct.abp_state** %7, align 8
  %65 = getelementptr inbounds %struct.abp_state, %struct.abp_state* %64, i32 0, i32 1
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %70 = call i32 @devm_iio_device_register(i32* %68, %struct.iio_dev* %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %38, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.abp_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.abp_state*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @abp060mg_init_device(%struct.iio_dev*, i64) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
