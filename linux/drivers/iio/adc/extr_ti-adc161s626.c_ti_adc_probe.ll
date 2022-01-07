; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc161s626.c_ti_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc161s626.c_ti_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.iio_dev = type { i8*, i8*, i32, i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__* }
%struct.ti_adc_data = type { i32, i32, i32, %struct.spi_device* }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ti_adc_info = common dso_local global i32 0, align 4
@TI_ADC_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ti_adc141s626_channels = common dso_local global i8* null, align 8
@ti_adc161s626_channels = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@ti_adc_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ti_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adc_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ti_adc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__* %8, i32 24)
  store %struct.iio_dev* %9, %struct.iio_dev** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %116

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 5
  store i32* @ti_adc_info, i32** %17, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %22, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @TI_ADC_DRV_NAME, align 4
  %31 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %34 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %38 = call i32 @spi_set_drvdata(%struct.spi_device* %36, %struct.iio_dev* %37)
  %39 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %40 = call %struct.ti_adc_data* @iio_priv(%struct.iio_dev* %39)
  store %struct.ti_adc_data* %40, %struct.ti_adc_data** %5, align 8
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %43 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %42, i32 0, i32 3
  store %struct.spi_device* %41, %struct.spi_device** %43, align 8
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = call %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %72 [
    i32 129, label %48
    i32 128, label %60
  ]

48:                                               ; preds = %15
  %49 = load i8*, i8** @ti_adc141s626_channels, align 8
  %50 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @ti_adc141s626_channels, align 8
  %53 = call i8* @ARRAY_SIZE(i8* %52)
  %54 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %57 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %59 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %58, i32 0, i32 1
  store i32 2, i32* %59, align 4
  br label %72

60:                                               ; preds = %15
  %61 = load i8*, i8** @ti_adc161s626_channels, align 8
  %62 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @ti_adc161s626_channels, align 8
  %65 = call i8* @ARRAY_SIZE(i8* %64)
  %66 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %69 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %68, i32 0, i32 0
  store i32 6, i32* %69, align 8
  %70 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %71 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %70, i32 0, i32 1
  store i32 3, i32* %71, align 4
  br label %72

72:                                               ; preds = %15, %60, %48
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = call i32 @devm_regulator_get(%struct.TYPE_7__* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %77 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %79 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @IS_ERR(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %72
  %84 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %85 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @regulator_enable(i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %116

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %72
  %94 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %95 = load i32, i32* @ti_adc_trigger_handler, align 4
  %96 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %94, i32* null, i32 %95, i32* null)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %110

100:                                              ; preds = %93
  %101 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %102 = call i32 @iio_device_register(%struct.iio_dev* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %107

106:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %116

107:                                              ; preds = %105
  %108 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %109 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %108)
  br label %110

110:                                              ; preds = %107, %99
  %111 = load %struct.ti_adc_data*, %struct.ti_adc_data** %5, align 8
  %112 = getelementptr inbounds %struct.ti_adc_data, %struct.ti_adc_data* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @regulator_disable(i32 %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %106, %90, %12
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.ti_adc_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_6__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
