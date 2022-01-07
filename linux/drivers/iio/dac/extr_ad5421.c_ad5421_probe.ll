; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5421.c_ad5421_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5421.c_ad5421_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64 }
%struct.ad5421_platform_data = type { i64, i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ad5421_state = type { i32, i32, %struct.spi_device* }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ad5421\00", align 1
@ad5421_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad5421_channels = common dso_local global i32 0, align 4
@AD5421_CTRL_WATCHDOG_DISABLE = common dso_local global i32 0, align 4
@AD5421_CTRL_AUTO_FAULT_READBACK = common dso_local global i32 0, align 4
@AD5421_CTRL_PWR_DOWN_INT_VREF = common dso_local global i32 0, align 4
@AD5421_CURRENT_RANGE_4mA_20mA = common dso_local global i32 0, align 4
@ad5421_fault_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"ad5421 fault\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad5421_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5421_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad5421_platform_data*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad5421_state*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.ad5421_platform_data* @dev_get_platdata(i32* %9)
  store %struct.ad5421_platform_data* %10, %struct.ad5421_platform_data** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %12, i32 16)
  store %struct.iio_dev* %13, %struct.iio_dev** %5, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = icmp eq %struct.iio_dev* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %107

22:                                               ; preds = %1
  %23 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %24 = call %struct.ad5421_state* @iio_priv(%struct.iio_dev* %23)
  store %struct.ad5421_state* %24, %struct.ad5421_state** %6, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %27 = call i32 @spi_set_drvdata(%struct.spi_device* %25, %struct.iio_dev* %26)
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = load %struct.ad5421_state*, %struct.ad5421_state** %6, align 8
  %30 = getelementptr inbounds %struct.ad5421_state, %struct.ad5421_state* %29, i32 0, i32 2
  store %struct.spi_device* %28, %struct.spi_device** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 4
  store i32* @ad5421_info, i32** %39, align 8
  %40 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %41 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @ad5421_channels, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ad5421_channels, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @AD5421_CTRL_WATCHDOG_DISABLE, align 4
  %51 = load i32, i32* @AD5421_CTRL_AUTO_FAULT_READBACK, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.ad5421_state*, %struct.ad5421_state** %6, align 8
  %54 = getelementptr inbounds %struct.ad5421_state, %struct.ad5421_state* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ad5421_platform_data*, %struct.ad5421_platform_data** %4, align 8
  %56 = icmp ne %struct.ad5421_platform_data* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %22
  %58 = load %struct.ad5421_platform_data*, %struct.ad5421_platform_data** %4, align 8
  %59 = getelementptr inbounds %struct.ad5421_platform_data, %struct.ad5421_platform_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ad5421_state*, %struct.ad5421_state** %6, align 8
  %62 = getelementptr inbounds %struct.ad5421_state, %struct.ad5421_state* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ad5421_platform_data*, %struct.ad5421_platform_data** %4, align 8
  %64 = getelementptr inbounds %struct.ad5421_platform_data, %struct.ad5421_platform_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load i32, i32* @AD5421_CTRL_PWR_DOWN_INT_VREF, align 4
  %69 = load %struct.ad5421_state*, %struct.ad5421_state** %6, align 8
  %70 = getelementptr inbounds %struct.ad5421_state, %struct.ad5421_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %57
  br label %78

74:                                               ; preds = %22
  %75 = load i32, i32* @AD5421_CURRENT_RANGE_4mA_20mA, align 4
  %76 = load %struct.ad5421_state*, %struct.ad5421_state** %6, align 8
  %77 = getelementptr inbounds %struct.ad5421_state, %struct.ad5421_state* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %73
  %79 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %80 = call i32 @ad5421_update_ctrl(%struct.iio_dev* %79, i32 0, i32 0)
  %81 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %82 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %78
  %86 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %87 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %86, i32 0, i32 0
  %88 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %89 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @ad5421_fault_handler, align 4
  %92 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %93 = load i32, i32* @IRQF_ONESHOT, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %96 = call i32 @devm_request_threaded_irq(i32* %87, i64 %90, i32* null, i32 %91, i32 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.iio_dev* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %107

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101, %78
  %103 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %104 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %103, i32 0, i32 0
  %105 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %106 = call i32 @devm_iio_device_register(i32* %104, %struct.iio_dev* %105)
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %99, %16
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.ad5421_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ad5421_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ad5421_update_ctrl(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
