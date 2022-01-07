; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl345_core.c_adxl345_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl345_core.c_adxl345_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.adxl345_data = type { i32, %struct.regmap*, i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }

@ADXL345_REG_DEVID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error reading device ID: %d\0A\00", align 1
@ADXL345_DEVID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid device ID: %x, expected %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADXL345_DATA_FORMAT_FULL_RES = common dso_local global i32 0, align 4
@ADXL345_REG_DATA_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to set data range: %d\0A\00", align 1
@adxl345_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adxl345_channels = common dso_local global i32 0, align 4
@ADXL345_REG_POWER_CTL = common dso_local global i32 0, align 4
@ADXL345_POWER_CTL_MEASURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to enable measurement mode: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"iio_device_register failed: %d\0A\00", align 1
@ADXL345_POWER_CTL_STANDBY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adxl345_core_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.adxl345_data*, align 8
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.regmap*, %struct.regmap** %7, align 8
  %15 = load i32, i32* @ADXL345_REG_DEVID, align 4
  %16 = call i32 @regmap_read(%struct.regmap* %14, i32 %15, i32* %12)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %123

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @ADXL345_DEVID, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @ADXL345_DEVID, align 4
  %32 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %123

35:                                               ; preds = %24
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %36, i32 24)
  store %struct.iio_dev* %37, %struct.iio_dev** %11, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %39 = icmp ne %struct.iio_dev* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %123

43:                                               ; preds = %35
  %44 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %45 = call %struct.adxl345_data* @iio_priv(%struct.iio_dev* %44)
  store %struct.adxl345_data* %45, %struct.adxl345_data** %10, align 8
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %48 = call i32 @dev_set_drvdata(%struct.device* %46, %struct.iio_dev* %47)
  %49 = load %struct.regmap*, %struct.regmap** %7, align 8
  %50 = load %struct.adxl345_data*, %struct.adxl345_data** %10, align 8
  %51 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %50, i32 0, i32 1
  store %struct.regmap* %49, %struct.regmap** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.adxl345_data*, %struct.adxl345_data** %10, align 8
  %54 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @ADXL345_DATA_FORMAT_FULL_RES, align 4
  %56 = load %struct.adxl345_data*, %struct.adxl345_data** %10, align 8
  %57 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.adxl345_data*, %struct.adxl345_data** %10, align 8
  %59 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %58, i32 0, i32 1
  %60 = load %struct.regmap*, %struct.regmap** %59, align 8
  %61 = load i32, i32* @ADXL345_REG_DATA_FORMAT, align 4
  %62 = load %struct.adxl345_data*, %struct.adxl345_data** %10, align 8
  %63 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @regmap_write(%struct.regmap* %60, i32 %61, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %43
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %5, align 4
  br label %123

73:                                               ; preds = %43
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store %struct.device* %74, %struct.device** %77, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %82 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %81, i32 0, i32 4
  store i32* @adxl345_info, i32** %82, align 8
  %83 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %84 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %85 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @adxl345_channels, align 4
  %87 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @adxl345_channels, align 4
  %90 = call i32 @ARRAY_SIZE(i32 %89)
  %91 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.adxl345_data*, %struct.adxl345_data** %10, align 8
  %94 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %93, i32 0, i32 1
  %95 = load %struct.regmap*, %struct.regmap** %94, align 8
  %96 = load i32, i32* @ADXL345_REG_POWER_CTL, align 4
  %97 = load i32, i32* @ADXL345_POWER_CTL_MEASURE, align 4
  %98 = call i32 @regmap_write(%struct.regmap* %95, i32 %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %73
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %5, align 4
  br label %123

106:                                              ; preds = %73
  %107 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %108 = call i32 @iio_device_register(%struct.iio_dev* %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load %struct.adxl345_data*, %struct.adxl345_data** %10, align 8
  %116 = getelementptr inbounds %struct.adxl345_data, %struct.adxl345_data* %115, i32 0, i32 1
  %117 = load %struct.regmap*, %struct.regmap** %116, align 8
  %118 = load i32, i32* @ADXL345_REG_POWER_CTL, align 4
  %119 = load i32, i32* @ADXL345_POWER_CTL_STANDBY, align 4
  %120 = call i32 @regmap_write(%struct.regmap* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %111, %106
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %101, %68, %40, %28, %19
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.adxl345_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
