; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mxc6255.c_mxc6255_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mxc6255.c_mxc6255_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mxc6255_data = type { %struct.regmap*, %struct.i2c_client* }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@mxc6255_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error initializing regmap\0A\00", align 1
@MXC6255_DRV_NAME = common dso_local global i32 0, align 4
@mxc6255_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mxc6255_info = common dso_local global i32 0, align 4
@MXC6255_REG_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error reading chip id %d\0A\00", align 1
@MXC6255_CHIP_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid chip id %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Chip id %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not register IIO device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mxc6255_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc6255_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mxc6255_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %12, i32 16)
  store %struct.iio_dev* %13, %struct.iio_dev** %7, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %105

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %20, i32* @mxc6255_regmap_config)
  store %struct.regmap* %21, %struct.regmap** %8, align 8
  %22 = load %struct.regmap*, %struct.regmap** %8, align 8
  %23 = call i64 @IS_ERR(%struct.regmap* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.regmap*, %struct.regmap** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.regmap* %29)
  store i32 %30, i32* %3, align 4
  br label %105

31:                                               ; preds = %19
  %32 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %33 = call %struct.mxc6255_data* @iio_priv(%struct.iio_dev* %32)
  store %struct.mxc6255_data* %33, %struct.mxc6255_data** %6, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.iio_dev* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.mxc6255_data*, %struct.mxc6255_data** %6, align 8
  %39 = getelementptr inbounds %struct.mxc6255_data, %struct.mxc6255_data* %38, i32 0, i32 1
  store %struct.i2c_client* %37, %struct.i2c_client** %39, align 8
  %40 = load %struct.regmap*, %struct.regmap** %8, align 8
  %41 = load %struct.mxc6255_data*, %struct.mxc6255_data** %6, align 8
  %42 = getelementptr inbounds %struct.mxc6255_data, %struct.mxc6255_data* %41, i32 0, i32 0
  store %struct.regmap* %40, %struct.regmap** %42, align 8
  %43 = load i32, i32* @MXC6255_DRV_NAME, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* %47, i32** %50, align 8
  %51 = load i32, i32* @mxc6255_channels, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @mxc6255_channels, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %59 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 0
  store i32* @mxc6255_info, i32** %62, align 8
  %63 = load %struct.mxc6255_data*, %struct.mxc6255_data** %6, align 8
  %64 = getelementptr inbounds %struct.mxc6255_data, %struct.mxc6255_data* %63, i32 0, i32 0
  %65 = load %struct.regmap*, %struct.regmap** %64, align 8
  %66 = load i32, i32* @MXC6255_REG_CHIP_ID, align 4
  %67 = call i32 @regmap_read(%struct.regmap* %65, i32 %66, i32* %9)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %31
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* %10, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %105

76:                                               ; preds = %31
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 31
  %79 = load i32, i32* @MXC6255_CHIP_ID, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %105

88:                                               ; preds = %76
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @dev_dbg(i32* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %96 = call i32 @devm_iio_device_register(i32* %94, %struct.iio_dev* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = call i32 (i32*, i8*, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %99, %81, %70, %25, %16
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.mxc6255_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
