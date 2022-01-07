; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_mmc35240.c_mmc35240_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_mmc35240.c_mmc35240_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mmc35240_data = type { i32, i32, %struct.regmap*, %struct.i2c_client* }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@mmc35240_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"regmap initialization failed\0A\00", align 1
@MMC35240_16_BITS_SLOW = common dso_local global i32 0, align 4
@mmc35240_info = common dso_local global i32 0, align 4
@MMC35240_DRV_NAME = common dso_local global i32 0, align 4
@mmc35240_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"mmc35240 chip init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mmc35240_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc35240_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mmc35240_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 24)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %82

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %19, i32* @mmc35240_regmap_config)
  store %struct.regmap* %20, %struct.regmap** %8, align 8
  %21 = load %struct.regmap*, %struct.regmap** %8, align 8
  %22 = call i64 @IS_ERR(%struct.regmap* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.regmap*, %struct.regmap** %8, align 8
  %29 = call i32 @PTR_ERR(%struct.regmap* %28)
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %18
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = call %struct.mmc35240_data* @iio_priv(%struct.iio_dev* %31)
  store %struct.mmc35240_data* %32, %struct.mmc35240_data** %6, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = call i32 @i2c_set_clientdata(%struct.i2c_client* %33, %struct.iio_dev* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.mmc35240_data*, %struct.mmc35240_data** %6, align 8
  %38 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %37, i32 0, i32 3
  store %struct.i2c_client* %36, %struct.i2c_client** %38, align 8
  %39 = load %struct.regmap*, %struct.regmap** %8, align 8
  %40 = load %struct.mmc35240_data*, %struct.mmc35240_data** %6, align 8
  %41 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %40, i32 0, i32 2
  store %struct.regmap* %39, %struct.regmap** %41, align 8
  %42 = load i32, i32* @MMC35240_16_BITS_SLOW, align 4
  %43 = load %struct.mmc35240_data*, %struct.mmc35240_data** %6, align 8
  %44 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mmc35240_data*, %struct.mmc35240_data** %6, align 8
  %46 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %45, i32 0, i32 0
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32* %49, i32** %52, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 4
  store i32* @mmc35240_info, i32** %54, align 8
  %55 = load i32, i32* @MMC35240_DRV_NAME, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @mmc35240_channels, align 4
  %59 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @mmc35240_channels, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mmc35240_data*, %struct.mmc35240_data** %6, align 8
  %69 = call i32 @mmc35240_init(%struct.mmc35240_data* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %30
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %82

77:                                               ; preds = %30
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %81 = call i32 @devm_iio_device_register(i32* %79, %struct.iio_dev* %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %72, %24, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.mmc35240_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mmc35240_init(%struct.mmc35240_data*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
