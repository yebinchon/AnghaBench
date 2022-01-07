; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i8*, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.bme680_data = type { i32, i32, i32, i32, i32, i32, %struct.regmap* }

@BME680_REG_SOFT_RESET = common dso_local global i32 0, align 4
@BME680_CMD_SOFTRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to reset chip\0A\00", align 1
@BME680_REG_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Error reading chip ID\0A\00", align 1
@BME680_CHIP_ID_VAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Wrong chip ID, got %x expected %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bme680_channels = common dso_local global i32 0, align 4
@bme680_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to set chip_config data\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to set gas config data\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"failed to read calibration coefficients at probe\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bme680_core_probe(%struct.device* %0, %struct.regmap* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.bme680_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.regmap* %1, %struct.regmap** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.regmap*, %struct.regmap** %6, align 8
  %13 = load i32, i32* @BME680_REG_SOFT_RESET, align 4
  %14 = load i32, i32* @BME680_CMD_SOFTRESET, align 4
  %15 = call i32 @regmap_write(%struct.regmap* %12, i32 %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %131

22:                                               ; preds = %3
  %23 = load %struct.regmap*, %struct.regmap** %6, align 8
  %24 = load i32, i32* @BME680_REG_CHIP_ID, align 4
  %25 = call i32 @regmap_read(%struct.regmap* %23, i32 %24, i32* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %131

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @BME680_CHIP_ID_VAL, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @BME680_CHIP_ID_VAL, align 4
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %131

43:                                               ; preds = %32
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %44, i32 32)
  store %struct.iio_dev* %45, %struct.iio_dev** %8, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %47 = icmp ne %struct.iio_dev* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %131

51:                                               ; preds = %43
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i64 @ACPI_HANDLE(%struct.device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i8* @bme680_match_acpi_device(%struct.device* %59)
  store i8* %60, i8** %7, align 8
  br label %61

61:                                               ; preds = %58, %54, %51
  %62 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %63 = call %struct.bme680_data* @iio_priv(%struct.iio_dev* %62)
  store %struct.bme680_data* %63, %struct.bme680_data** %9, align 8
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %66 = call i32 @dev_set_drvdata(%struct.device* %64, %struct.iio_dev* %65)
  %67 = load %struct.regmap*, %struct.regmap** %6, align 8
  %68 = load %struct.bme680_data*, %struct.bme680_data** %9, align 8
  %69 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %68, i32 0, i32 6
  store %struct.regmap* %67, %struct.regmap** %69, align 8
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store %struct.device* %70, %struct.device** %73, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @bme680_channels, align 4
  %78 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %79 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @bme680_channels, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %85 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %84, i32 0, i32 2
  store i32* @bme680_info, i32** %85, align 8
  %86 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %87 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.bme680_data*, %struct.bme680_data** %9, align 8
  %90 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %89, i32 0, i32 0
  store i32 2, i32* %90, align 8
  %91 = load %struct.bme680_data*, %struct.bme680_data** %9, align 8
  %92 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %91, i32 0, i32 1
  store i32 4, i32* %92, align 4
  %93 = load %struct.bme680_data*, %struct.bme680_data** %9, align 8
  %94 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %93, i32 0, i32 2
  store i32 8, i32* %94, align 8
  %95 = load %struct.bme680_data*, %struct.bme680_data** %9, align 8
  %96 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %95, i32 0, i32 3
  store i32 320, i32* %96, align 4
  %97 = load %struct.bme680_data*, %struct.bme680_data** %9, align 8
  %98 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %97, i32 0, i32 4
  store i32 150, i32* %98, align 8
  %99 = load %struct.bme680_data*, %struct.bme680_data** %9, align 8
  %100 = call i32 @bme680_chip_config(%struct.bme680_data* %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %61
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %4, align 4
  br label %131

107:                                              ; preds = %61
  %108 = load %struct.bme680_data*, %struct.bme680_data** %9, align 8
  %109 = call i32 @bme680_gas_config(%struct.bme680_data* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %4, align 4
  br label %131

116:                                              ; preds = %107
  %117 = load %struct.bme680_data*, %struct.bme680_data** %9, align 8
  %118 = load %struct.bme680_data*, %struct.bme680_data** %9, align 8
  %119 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %118, i32 0, i32 5
  %120 = call i32 @bme680_read_calib(%struct.bme680_data* %117, i32* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %4, align 4
  br label %131

127:                                              ; preds = %116
  %128 = load %struct.device*, %struct.device** %5, align 8
  %129 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %130 = call i32 @devm_iio_device_register(%struct.device* %128, %struct.iio_dev* %129)
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %127, %123, %112, %103, %48, %36, %28, %18
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i64 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i8* @bme680_match_acpi_device(%struct.device*) #1

declare dso_local %struct.bme680_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @bme680_chip_config(%struct.bme680_data*) #1

declare dso_local i32 @bme680_gas_config(%struct.bme680_data*) #1

declare dso_local i32 @bme680_read_calib(%struct.bme680_data*, i32*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
