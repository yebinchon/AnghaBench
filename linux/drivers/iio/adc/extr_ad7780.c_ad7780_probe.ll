; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7780.c_ad7780_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7780.c_ad7780_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.ad7780_state = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.iio_dev = type { i32, i32*, i32*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ad7780_sigma_delta_info = common dso_local global i32 0, align 4
@ad7780_chip_info_tbl = common dso_local global %struct.TYPE_6__* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7780_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to enable specified AVdd supply\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7780_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7780_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7780_state*, align 8
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
  br label %117

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call %struct.ad7780_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad7780_state* %17, %struct.ad7780_state** %4, align 8
  %18 = load %struct.ad7780_state*, %struct.ad7780_state** %4, align 8
  %19 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.ad7780_state*, %struct.ad7780_state** %4, align 8
  %21 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %20, i32 0, i32 3
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = call i32 @ad_sd_init(i32* %21, %struct.iio_dev* %22, %struct.spi_device* %23, i32* @ad7780_sigma_delta_info)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ad7780_chip_info_tbl, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = call %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %29
  %31 = load %struct.ad7780_state*, %struct.ad7780_state** %4, align 8
  %32 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %31, i32 0, i32 2
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %35 = call i32 @spi_set_drvdata(%struct.spi_device* %33, %struct.iio_dev* %34)
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 0
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* %37, i32** %40, align 8
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = call %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ad7780_state*, %struct.ad7780_state** %4, align 8
  %51 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 1
  store i32* @ad7780_info, i32** %59, align 8
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  %62 = load %struct.ad7780_state*, %struct.ad7780_state** %4, align 8
  %63 = call i32 @ad7780_init_gpios(i32* %61, %struct.ad7780_state* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %15
  br label %108

67:                                               ; preds = %15
  %68 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %69 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %68, i32 0, i32 0
  %70 = call i32 @devm_regulator_get(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.ad7780_state*, %struct.ad7780_state** %4, align 8
  %72 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ad7780_state*, %struct.ad7780_state** %4, align 8
  %74 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.ad7780_state*, %struct.ad7780_state** %4, align 8
  %80 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %2, align 4
  br label %117

83:                                               ; preds = %67
  %84 = load %struct.ad7780_state*, %struct.ad7780_state** %4, align 8
  %85 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @regulator_enable(i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %92 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %91, i32 0, i32 0
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %117

95:                                               ; preds = %83
  %96 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %97 = call i32 @ad_sd_setup_buffer_and_trigger(%struct.iio_dev* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %111

101:                                              ; preds = %95
  %102 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %103 = call i32 @iio_device_register(%struct.iio_dev* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %108

107:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %117

108:                                              ; preds = %106, %66
  %109 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %110 = call i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev* %109)
  br label %111

111:                                              ; preds = %108, %100
  %112 = load %struct.ad7780_state*, %struct.ad7780_state** %4, align 8
  %113 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @regulator_disable(i32 %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %107, %90, %78, %12
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad7780_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad_sd_init(i32*, %struct.iio_dev*, %struct.spi_device*, i32*) #1

declare dso_local %struct.TYPE_5__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ad7780_init_gpios(i32*, %struct.ad7780_state*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ad_sd_setup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
