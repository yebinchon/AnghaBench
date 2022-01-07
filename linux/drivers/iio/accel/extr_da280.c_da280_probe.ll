; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_da280.c_da280_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_da280.c_da280_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.da280_data = type { %struct.i2c_client* }

@DA280_REG_CHIP_ID = common dso_local global i32 0, align 4
@DA280_CHIP_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da280_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@da280_channels = common dso_local global i32 0, align 4
@da226 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"da226\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"da280\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"device_register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da280_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da280_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.da280_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = load i32, i32* @DA280_REG_CHIP_ID, align 4
  %12 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DA280_CHIP_ID, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  br label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  store i32 %25, i32* %3, align 4
  br label %103

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %28, i32 8)
  store %struct.iio_dev* %29, %struct.iio_dev** %7, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = icmp ne %struct.iio_dev* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %103

35:                                               ; preds = %26
  %36 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %37 = call %struct.da280_data* @iio_priv(%struct.iio_dev* %36)
  store %struct.da280_data* %37, %struct.da280_data** %8, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.da280_data*, %struct.da280_data** %8, align 8
  %40 = getelementptr inbounds %struct.da280_data, %struct.da280_data* %39, i32 0, i32 0
  store %struct.i2c_client* %38, %struct.i2c_client** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %43 = call i32 @i2c_set_clientdata(%struct.i2c_client* %41, %struct.iio_dev* %42)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32* %45, i32** %48, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 4
  store i32* @da280_info, i32** %50, align 8
  %51 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @da280_channels, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i64 @ACPI_HANDLE(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %35
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @da280_match_acpi_device(i32* %63)
  store i32 %64, i32* %9, align 4
  br label %69

65:                                               ; preds = %35
  %66 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %67 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @da226, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %75 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %75, align 8
  %76 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 1
  store i32 2, i32* %77, align 8
  br label %83

78:                                               ; preds = %69
  %79 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %80, align 8
  %81 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %82 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %81, i32 0, i32 1
  store i32 3, i32* %82, align 8
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = call i32 @da280_enable(%struct.i2c_client* %84, i32 1)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %103

90:                                               ; preds = %83
  %91 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %92 = call i32 @iio_device_register(%struct.iio_dev* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = call i32 @da280_enable(%struct.i2c_client* %99, i32 0)
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %88, %32, %24
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.da280_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i64 @ACPI_HANDLE(i32*) #1

declare dso_local i32 @da280_match_acpi_device(i32*) #1

declare dso_local i32 @da280_enable(%struct.i2c_client*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
