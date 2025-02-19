; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard10.c_dmard10_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard10.c_dmard10_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.dmard10_data = type { %struct.i2c_client* }

@DMARD10_REG_STADR = common dso_local global i32 0, align 4
@DMARD10_VALUE_STADR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DMARD10_REG_STAINT = common dso_local global i32 0, align 4
@DMARD10_VALUE_STAINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"iio allocation failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@dmard10_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"dmard10\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@dmard10_channels = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"device_register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dmard10_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmard10_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.dmard10_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @DMARD10_REG_STADR, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DMARD10_VALUE_STADR, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  br label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %19, %18 ], [ %22, %20 ]
  store i32 %24, i32* %3, align 4
  br label %101

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* @DMARD10_REG_STAINT, align 4
  %28 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DMARD10_VALUE_STAINT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  br label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %37 ]
  store i32 %41, i32* %3, align 4
  br label %101

42:                                               ; preds = %25
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %44, i32 8)
  store %struct.iio_dev* %45, %struct.iio_dev** %7, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %47 = icmp ne %struct.iio_dev* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %101

54:                                               ; preds = %42
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = call %struct.dmard10_data* @iio_priv(%struct.iio_dev* %55)
  store %struct.dmard10_data* %56, %struct.dmard10_data** %8, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load %struct.dmard10_data*, %struct.dmard10_data** %8, align 8
  %59 = getelementptr inbounds %struct.dmard10_data, %struct.dmard10_data* %58, i32 0, i32 0
  store %struct.i2c_client* %57, %struct.i2c_client** %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %62 = call i32 @i2c_set_clientdata(%struct.i2c_client* %60, %struct.iio_dev* %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32* %64, i32** %67, align 8
  %68 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 4
  store i32* @dmard10_info, i32** %69, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %71, align 8
  %72 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %73 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @dmard10_channels, align 4
  %76 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @dmard10_channels, align 4
  %79 = call i32 @ARRAY_SIZE(i32 %78)
  %80 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = call i32 @dmard10_reset(%struct.i2c_client* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %54
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %101

88:                                               ; preds = %54
  %89 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %90 = call i32 @iio_device_register(%struct.iio_dev* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = call i32 @dmard10_shutdown(%struct.i2c_client* %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %86, %48, %40, %23
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.dmard10_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dmard10_reset(%struct.i2c_client*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dmard10_shutdown(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
