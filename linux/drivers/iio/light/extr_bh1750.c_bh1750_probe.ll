; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1750.c_bh1750_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1750.c_bh1750_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i64, i32 }
%struct.bh1750_data = type { i32, %struct.TYPE_4__*, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bh1750_chip_info_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@bh1750_info = common dso_local global i32 0, align 4
@bh1750_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bh1750_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1750_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bh1750_data*, align 8
  %9 = alloca %struct.iio_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_FUNC_I2C, align 4
  %14 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_check_functionality(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %92

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %23, i32 24)
  store %struct.iio_dev* %24, %struct.iio_dev** %9, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %26 = icmp ne %struct.iio_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %92

30:                                               ; preds = %21
  %31 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %32 = call %struct.bh1750_data* @iio_priv(%struct.iio_dev* %31)
  store %struct.bh1750_data* %32, %struct.bh1750_data** %8, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %35 = call i32 @i2c_set_clientdata(%struct.i2c_client* %33, %struct.iio_dev* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.bh1750_data*, %struct.bh1750_data** %8, align 8
  %38 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %37, i32 0, i32 2
  store %struct.i2c_client* %36, %struct.i2c_client** %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bh1750_chip_info_tbl, align 8
  %40 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %42
  %44 = load %struct.bh1750_data*, %struct.bh1750_data** %8, align 8
  %45 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %44, i32 0, i32 1
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  %46 = load %struct.bh1750_data*, %struct.bh1750_data** %8, align 8
  %47 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bh1750_data*, %struct.bh1750_data** %8, align 8
  %52 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %50, %55
  store i32 %56, i32* %7, align 4
  %57 = load %struct.bh1750_data*, %struct.bh1750_data** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @bh1750_change_int_time(%struct.bh1750_data* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %30
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %92

64:                                               ; preds = %30
  %65 = load %struct.bh1750_data*, %struct.bh1750_data** %8, align 8
  %66 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %65, i32 0, i32 0
  %67 = call i32 @mutex_init(i32* %66)
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32* %69, i32** %72, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 4
  store i32* @bh1750_info, i32** %74, align 8
  %75 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %76 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %79 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @bh1750_channels, align 4
  %81 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %82 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @bh1750_channels, align 4
  %84 = call i32 @ARRAY_SIZE(i32 %83)
  %85 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %86 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %88 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %89 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %91 = call i32 @iio_device_register(%struct.iio_dev* %90)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %64, %62, %27, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.bh1750_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @bh1750_change_int_time(%struct.bh1750_data*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
