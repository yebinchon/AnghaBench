; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ad5758_state = type { i64, %struct.spi_device*, i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ad5758_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD5758_DCDC_MODE_DPC_VOLTAGE = common dso_local global i64 0, align 8
@ad5758_voltage_ch = common dso_local global i32 0, align 4
@ad5758_current_ch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"AD5758 init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad5758_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad5758_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 24)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call %struct.ad5758_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad5758_state* %17, %struct.ad5758_state** %4, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call i32 @spi_set_drvdata(%struct.spi_device* %18, %struct.iio_dev* %19)
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %23 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %22, i32 0, i32 1
  store %struct.spi_device* %21, %struct.spi_device** %23, align 8
  %24 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %25 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %24, i32 0, i32 2
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 3
  store i32* @ad5758_info, i32** %39, align 8
  %40 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %41 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %46 = call i32 @ad5758_parse_dt(%struct.ad5758_state* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %15
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %82

51:                                               ; preds = %15
  %52 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %53 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AD5758_DCDC_MODE_DPC_VOLTAGE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @ad5758_voltage_ch, align 4
  %59 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load i32, i32* @ad5758_current_ch, align 4
  %63 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %67 = call i32 @ad5758_init(%struct.ad5758_state* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %82

75:                                               ; preds = %65
  %76 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %77 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %76, i32 0, i32 1
  %78 = load %struct.spi_device*, %struct.spi_device** %77, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 0
  %80 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %81 = call i32 @devm_iio_device_register(i32* %79, %struct.iio_dev* %80)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %75, %70, %49, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad5758_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ad5758_parse_dt(%struct.ad5758_state*) #1

declare dso_local i32 @ad5758_init(%struct.ad5758_state*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
