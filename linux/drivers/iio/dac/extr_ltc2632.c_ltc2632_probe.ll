; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ltc2632.c_ltc2632_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ltc2632.c_ltc2632_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ltc2632_state = type { i32, i32*, %struct.spi_device* }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ltc2632_chip_info = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LTC2632_CMD_INTERNAL_REFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Set internal reference command failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Error getting voltage reference regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"enable reference regulator failed, %d\0A\00", align 1
@LTC2632_CMD_EXTERNAL_REFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Set external reference command failed, %d\0A\00", align 1
@ltc2632_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@LTC2632_DAC_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ltc2632_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2632_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ltc2632_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ltc2632_chip_info*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %9, i32 24)
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %150

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = call %struct.ltc2632_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ltc2632_state* %18, %struct.ltc2632_state** %4, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %21 = call i32 @spi_set_drvdata(%struct.spi_device* %19, %struct.iio_dev* %20)
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = load %struct.ltc2632_state*, %struct.ltc2632_state** %4, align 8
  %24 = getelementptr inbounds %struct.ltc2632_state, %struct.ltc2632_state* %23, i32 0, i32 2
  store %struct.spi_device* %22, %struct.spi_device** %24, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = call %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ltc2632_chip_info*
  store %struct.ltc2632_chip_info* %29, %struct.ltc2632_chip_info** %6, align 8
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 0
  %32 = call i32* @devm_regulator_get_optional(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ltc2632_state*, %struct.ltc2632_state** %4, align 8
  %34 = getelementptr inbounds %struct.ltc2632_state, %struct.ltc2632_state* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.ltc2632_state*, %struct.ltc2632_state** %4, align 8
  %36 = getelementptr inbounds %struct.ltc2632_state, %struct.ltc2632_state* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @PTR_ERR(i32* %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %16
  %43 = load %struct.ltc2632_state*, %struct.ltc2632_state** %4, align 8
  %44 = getelementptr inbounds %struct.ltc2632_state, %struct.ltc2632_state* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.ltc2632_chip_info*, %struct.ltc2632_chip_info** %6, align 8
  %46 = getelementptr inbounds %struct.ltc2632_chip_info, %struct.ltc2632_chip_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ltc2632_state*, %struct.ltc2632_state** %4, align 8
  %49 = getelementptr inbounds %struct.ltc2632_state, %struct.ltc2632_state* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = load i32, i32* @LTC2632_CMD_INTERNAL_REFER, align 4
  %52 = call i32 @ltc2632_spi_write(%struct.spi_device* %50, i32 %51, i32 0, i32 0, i32 0)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %42
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %150

61:                                               ; preds = %42
  br label %110

62:                                               ; preds = %16
  %63 = load %struct.ltc2632_state*, %struct.ltc2632_state** %4, align 8
  %64 = getelementptr inbounds %struct.ltc2632_state, %struct.ltc2632_state* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @IS_ERR(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 0
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.ltc2632_state*, %struct.ltc2632_state** %4, align 8
  %73 = getelementptr inbounds %struct.ltc2632_state, %struct.ltc2632_state* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @PTR_ERR(i32* %74)
  store i32 %75, i32* %2, align 4
  br label %150

76:                                               ; preds = %62
  %77 = load %struct.ltc2632_state*, %struct.ltc2632_state** %4, align 8
  %78 = getelementptr inbounds %struct.ltc2632_state, %struct.ltc2632_state* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @regulator_enable(i32* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 0
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %150

89:                                               ; preds = %76
  %90 = load %struct.ltc2632_state*, %struct.ltc2632_state** %4, align 8
  %91 = getelementptr inbounds %struct.ltc2632_state, %struct.ltc2632_state* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @regulator_get_voltage(i32* %92)
  %94 = sdiv i32 %93, 1000
  %95 = load %struct.ltc2632_state*, %struct.ltc2632_state** %4, align 8
  %96 = getelementptr inbounds %struct.ltc2632_state, %struct.ltc2632_state* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %98 = load i32, i32* @LTC2632_CMD_EXTERNAL_REFER, align 4
  %99 = call i32 @ltc2632_spi_write(%struct.spi_device* %97, i32 %98, i32 0, i32 0, i32 0)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %89
  %103 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %104 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %103, i32 0, i32 0
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (i32*, i8*, ...) @dev_err(i32* %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %150

108:                                              ; preds = %89
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %61
  %111 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %112 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %111, i32 0, i32 0
  %113 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %114 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32* %112, i32** %115, align 8
  %116 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %117 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %116, i32 0, i32 0
  %118 = call %struct.TYPE_6__* @dev_of_node(i32* %117)
  %119 = icmp ne %struct.TYPE_6__* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %110
  %121 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %122 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %121, i32 0, i32 0
  %123 = call %struct.TYPE_6__* @dev_of_node(i32* %122)
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  br label %131

126:                                              ; preds = %110
  %127 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %128 = call %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device* %127)
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  br label %131

131:                                              ; preds = %126, %120
  %132 = phi i32 [ %125, %120 ], [ %130, %126 ]
  %133 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %134 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %136 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %135, i32 0, i32 3
  store i32* @ltc2632_info, i32** %136, align 8
  %137 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %138 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %139 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ltc2632_chip_info*, %struct.ltc2632_chip_info** %6, align 8
  %141 = getelementptr inbounds %struct.ltc2632_chip_info, %struct.ltc2632_chip_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %144 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @LTC2632_DAC_CHANNELS, align 4
  %146 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %147 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %149 = call i32 @iio_device_register(%struct.iio_dev* %148)
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %131, %102, %83, %68, %55, %13
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ltc2632_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32* @devm_regulator_get_optional(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ltc2632_spi_write(%struct.spi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @regulator_get_voltage(i32*) #1

declare dso_local %struct.TYPE_6__* @dev_of_node(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
