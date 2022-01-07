; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp006.c_tmp006_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp006.c_tmp006_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.tmp006_data = type { i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no TMP006 sensor\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@tmp006_info = common dso_local global i32 0, align 4
@tmp006_channels = common dso_local global i32 0, align 4
@TMP006_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tmp006_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp006_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.tmp006_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %13 = call i32 @i2c_check_functionality(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 @tmp006_check_identification(%struct.i2c_client* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %83

28:                                               ; preds = %18
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %30, i32 16)
  store %struct.iio_dev* %31, %struct.iio_dev** %6, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = icmp ne %struct.iio_dev* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %83

37:                                               ; preds = %28
  %38 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %39 = call %struct.tmp006_data* @iio_priv(%struct.iio_dev* %38)
  store %struct.tmp006_data* %39, %struct.tmp006_data** %7, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %42 = call i32 @i2c_set_clientdata(%struct.i2c_client* %40, %struct.iio_dev* %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load %struct.tmp006_data*, %struct.tmp006_data** %7, align 8
  %45 = getelementptr inbounds %struct.tmp006_data, %struct.tmp006_data* %44, i32 0, i32 1
  store %struct.i2c_client* %43, %struct.i2c_client** %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* %47, i32** %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = call i32 @dev_name(i32* %52)
  %54 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 2
  store i32* @tmp006_info, i32** %60, align 8
  %61 = load i32, i32* @tmp006_channels, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @tmp006_channels, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.tmp006_data*, %struct.tmp006_data** %7, align 8
  %69 = getelementptr inbounds %struct.tmp006_data, %struct.tmp006_data* %68, i32 0, i32 1
  %70 = load %struct.i2c_client*, %struct.i2c_client** %69, align 8
  %71 = load i32, i32* @TMP006_CONFIG, align 4
  %72 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %37
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %83

77:                                               ; preds = %37
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.tmp006_data*, %struct.tmp006_data** %7, align 8
  %80 = getelementptr inbounds %struct.tmp006_data, %struct.tmp006_data* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %82 = call i32 @iio_device_register(%struct.iio_dev* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %75, %34, %22, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @tmp006_check_identification(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.tmp006_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
