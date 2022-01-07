; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1118.c_max1118_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1118.c_max1118_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.max1118 = type { i32, i32, %struct.spi_device* }
%struct.spi_device_id = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@max1118 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get vref regulator\0A\00", align 1
@max1118_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@max1118_channels = common dso_local global i32 0, align 4
@max1118_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max1118_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1118_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.max1118*, align 8
  %6 = alloca %struct.spi_device_id*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %6, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 16)
  store %struct.iio_dev* %12, %struct.iio_dev** %4, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %119

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %20 = call %struct.max1118* @iio_priv(%struct.iio_dev* %19)
  store %struct.max1118* %20, %struct.max1118** %5, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load %struct.max1118*, %struct.max1118** %5, align 8
  %23 = getelementptr inbounds %struct.max1118, %struct.max1118* %22, i32 0, i32 2
  store %struct.spi_device* %21, %struct.spi_device** %23, align 8
  %24 = load %struct.max1118*, %struct.max1118** %5, align 8
  %25 = getelementptr inbounds %struct.max1118, %struct.max1118* %24, i32 0, i32 1
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %28 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @max1118, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %18
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = call i32 @devm_regulator_get(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.max1118*, %struct.max1118** %5, align 8
  %37 = getelementptr inbounds %struct.max1118, %struct.max1118* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.max1118*, %struct.max1118** %5, align 8
  %39 = getelementptr inbounds %struct.max1118, %struct.max1118* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %32
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.max1118*, %struct.max1118** %5, align 8
  %48 = getelementptr inbounds %struct.max1118, %struct.max1118* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %119

51:                                               ; preds = %32
  %52 = load %struct.max1118*, %struct.max1118** %5, align 8
  %53 = getelementptr inbounds %struct.max1118, %struct.max1118* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @regulator_enable(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %119

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %18
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %64 = call i32 @spi_set_drvdata(%struct.spi_device* %62, %struct.iio_dev* %63)
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %65)
  %67 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 0
  %73 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32* %72, i32** %75, align 8
  %76 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 3
  store i32* @max1118_info, i32** %77, align 8
  %78 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %79 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @max1118_channels, align 4
  %82 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @max1118_channels, align 4
  %85 = call i32 @ARRAY_SIZE(i32 %84)
  %86 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %89 = call i32 @max1118_read(%struct.spi_device* %88, i32 0)
  %90 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %91 = load i32, i32* @max1118_trigger_handler, align 4
  %92 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %90, i32* null, i32 %91, i32* null)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %61
  br label %106

96:                                               ; preds = %61
  %97 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %98 = call i32 @iio_device_register(%struct.iio_dev* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %103

102:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %119

103:                                              ; preds = %101
  %104 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %105 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %104)
  br label %106

106:                                              ; preds = %103, %95
  %107 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %108 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @max1118, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.max1118*, %struct.max1118** %5, align 8
  %114 = getelementptr inbounds %struct.max1118, %struct.max1118* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @regulator_disable(i32 %115)
  br label %117

117:                                              ; preds = %112, %106
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %102, %58, %43, %15
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.max1118* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @max1118_read(%struct.spi_device*, i32) #1

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
