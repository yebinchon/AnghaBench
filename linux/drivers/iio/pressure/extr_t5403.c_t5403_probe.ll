; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.t5403_data = type { i64, %struct.i2c_client*, i32, i32 }
%struct.iio_dev = type { i32, i32, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32* }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@T5403_SLAVE_ADDR = common dso_local global i32 0, align 4
@T5403_I2C_MASK = common dso_local global i32 0, align 4
@T5403_I2C_ADDR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@t5403_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@t5403_channels = common dso_local global i32 0, align 4
@T5403_MODE_STANDARD = common dso_local global i32 0, align 4
@T5403_CALIB_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @t5403_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t5403_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.t5403_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @i2c_check_functionality(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %101

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* @T5403_SLAVE_ADDR, align 4
  %23 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %101

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @T5403_I2C_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @T5403_I2C_ADDR, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %101

37:                                               ; preds = %28
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %39, i32 24)
  store %struct.iio_dev* %40, %struct.iio_dev** %7, align 8
  %41 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %42 = icmp ne %struct.iio_dev* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %101

46:                                               ; preds = %37
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = call %struct.t5403_data* @iio_priv(%struct.iio_dev* %47)
  store %struct.t5403_data* %48, %struct.t5403_data** %6, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.t5403_data*, %struct.t5403_data** %6, align 8
  %51 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %50, i32 0, i32 1
  store %struct.i2c_client* %49, %struct.i2c_client** %51, align 8
  %52 = load %struct.t5403_data*, %struct.t5403_data** %6, align 8
  %53 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %52, i32 0, i32 3
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = call i32 @i2c_set_clientdata(%struct.i2c_client* %55, %struct.iio_dev* %56)
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 5
  store i32* @t5403_info, i32** %59, align 8
  %60 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %61 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32* %66, i32** %69, align 8
  %70 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %71 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @t5403_channels, align 4
  %74 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %75 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @t5403_channels, align 4
  %77 = call i32 @ARRAY_SIZE(i32 %76)
  %78 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %79 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @T5403_MODE_STANDARD, align 4
  %81 = load %struct.t5403_data*, %struct.t5403_data** %6, align 8
  %82 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.t5403_data*, %struct.t5403_data** %6, align 8
  %84 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %83, i32 0, i32 1
  %85 = load %struct.i2c_client*, %struct.i2c_client** %84, align 8
  %86 = load i32, i32* @T5403_CALIB_DATA, align 4
  %87 = load %struct.t5403_data*, %struct.t5403_data** %6, align 8
  %88 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %85, i32 %86, i32 8, i32* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %46
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %101

96:                                               ; preds = %46
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %100 = call i32 @devm_iio_device_register(i32* %98, %struct.iio_dev* %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %94, %43, %34, %26, %17
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.t5403_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
