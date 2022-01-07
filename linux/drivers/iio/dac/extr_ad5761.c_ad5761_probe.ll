; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c_ad5761_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c_ad5761_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5761_chip_info = type { i32 }
%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ad5761_state = type { i32, %struct.spi_device* }
%struct.ad5761_platform_data = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@ad5761_chip_infos = common dso_local global %struct.ad5761_chip_info* null, align 8
@AD5761_VOLTAGE_RANGE_0V_5V = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ad5761_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad5761_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5761_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ad5761_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad5761_chip_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ad5761_platform_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load %struct.ad5761_chip_info*, %struct.ad5761_chip_info** @ad5761_chip_infos, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ad5761_chip_info, %struct.ad5761_chip_info* %10, i64 %14
  store %struct.ad5761_chip_info* %15, %struct.ad5761_chip_info** %7, align 8
  %16 = load i32, i32* @AD5761_VOLTAGE_RANGE_0V_5V, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = call %struct.ad5761_platform_data* @dev_get_platdata(i32* %18)
  store %struct.ad5761_platform_data* %19, %struct.ad5761_platform_data** %9, align 8
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %21, i32 16)
  store %struct.iio_dev* %22, %struct.iio_dev** %4, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %24 = icmp ne %struct.iio_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %102

28:                                               ; preds = %1
  %29 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %30 = call %struct.ad5761_state* @iio_priv(%struct.iio_dev* %29)
  store %struct.ad5761_state* %30, %struct.ad5761_state** %5, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = load %struct.ad5761_state*, %struct.ad5761_state** %5, align 8
  %33 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %32, i32 0, i32 1
  store %struct.spi_device* %31, %struct.spi_device** %33, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %36 = call i32 @spi_set_drvdata(%struct.spi_device* %34, %struct.iio_dev* %35)
  %37 = load %struct.ad5761_state*, %struct.ad5761_state** %5, align 8
  %38 = load %struct.ad5761_chip_info*, %struct.ad5761_chip_info** %7, align 8
  %39 = call i32 @ad5761_get_vref(%struct.ad5761_state* %37, %struct.ad5761_chip_info* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %102

44:                                               ; preds = %28
  %45 = load %struct.ad5761_platform_data*, %struct.ad5761_platform_data** %9, align 8
  %46 = icmp ne %struct.ad5761_platform_data* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.ad5761_platform_data*, %struct.ad5761_platform_data** %9, align 8
  %49 = getelementptr inbounds %struct.ad5761_platform_data, %struct.ad5761_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.ad5761_state*, %struct.ad5761_state** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ad5761_spi_set_range(%struct.ad5761_state* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %89

58:                                               ; preds = %51
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 0
  %61 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32* %60, i32** %63, align 8
  %64 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 4
  store i32* @ad5761_info, i32** %65, align 8
  %66 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %67 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ad5761_chip_info*, %struct.ad5761_chip_info** %7, align 8
  %70 = getelementptr inbounds %struct.ad5761_chip_info, %struct.ad5761_chip_info* %69, i32 0, i32 0
  %71 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.ad5761_state*, %struct.ad5761_state** %5, align 8
  %76 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %75, i32 0, i32 1
  %77 = load %struct.spi_device*, %struct.spi_device** %76, align 8
  %78 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %82 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %84 = call i32 @iio_device_register(%struct.iio_dev* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %58
  br label %89

88:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %102

89:                                               ; preds = %87, %57
  %90 = load %struct.ad5761_state*, %struct.ad5761_state** %5, align 8
  %91 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @IS_ERR_OR_NULL(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load %struct.ad5761_state*, %struct.ad5761_state** %5, align 8
  %97 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @regulator_disable(i32 %98)
  br label %100

100:                                              ; preds = %95, %89
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %88, %42, %25
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.ad5761_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad5761_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ad5761_get_vref(%struct.ad5761_state*, %struct.ad5761_chip_info*) #1

declare dso_local i32 @ad5761_spi_set_range(%struct.ad5761_state*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
