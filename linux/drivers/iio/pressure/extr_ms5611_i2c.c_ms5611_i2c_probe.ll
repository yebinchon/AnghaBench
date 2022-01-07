; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_i2c.c_ms5611_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_i2c.c_ms5611_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32, i32 }
%struct.ms5611_state = type { %struct.i2c_client*, i32, i32, i32 }
%struct.iio_dev = type { i32 }

@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ms5611_i2c_reset = common dso_local global i32 0, align 4
@ms5611_i2c_read_prom_word = common dso_local global i32 0, align 4
@ms5611_i2c_read_adc_temp_and_pressure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ms5611_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5611_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ms5611_state*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_check_functionality(i32 %10, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %23, i32 24)
  store %struct.iio_dev* %24, %struct.iio_dev** %7, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %26 = icmp ne %struct.iio_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %58

30:                                               ; preds = %21
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = call %struct.ms5611_state* @iio_priv(%struct.iio_dev* %31)
  store %struct.ms5611_state* %32, %struct.ms5611_state** %6, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = call i32 @i2c_set_clientdata(%struct.i2c_client* %33, %struct.iio_dev* %34)
  %36 = load i32, i32* @ms5611_i2c_reset, align 4
  %37 = load %struct.ms5611_state*, %struct.ms5611_state** %6, align 8
  %38 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @ms5611_i2c_read_prom_word, align 4
  %40 = load %struct.ms5611_state*, %struct.ms5611_state** %6, align 8
  %41 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ms5611_i2c_read_adc_temp_and_pressure, align 4
  %43 = load %struct.ms5611_state*, %struct.ms5611_state** %6, align 8
  %44 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load %struct.ms5611_state*, %struct.ms5611_state** %6, align 8
  %47 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %46, i32 0, i32 0
  store %struct.i2c_client* %45, %struct.i2c_client** %47, align 8
  %48 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %55 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ms5611_probe(%struct.iio_dev* %48, i32* %50, i32 %53, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %30, %27, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ms5611_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ms5611_probe(%struct.iio_dev*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
