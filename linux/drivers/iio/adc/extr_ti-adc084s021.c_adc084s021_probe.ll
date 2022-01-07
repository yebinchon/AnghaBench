; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc084s021.c_adc084s021_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc084s021.c_adc084s021_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__* }
%struct.adc084s021 = type { i32, i32, %struct.TYPE_10__, i32, i32, i32, %struct.spi_device* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate IIO device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adc084s021_info = common dso_local global i32 0, align 4
@adc084s021_channels = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@adc084s021_buffer_trigger_handler = common dso_local global i32 0, align 4
@adc084s021_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to setup triggered buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adc084s021_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc084s021_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.adc084s021*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_12__* %8, i32 40)
  store %struct.iio_dev* %9, %struct.iio_dev** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(%struct.TYPE_12__* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %113

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %20 = call %struct.adc084s021* @iio_priv(%struct.iio_dev* %19)
  store %struct.adc084s021* %20, %struct.adc084s021** %5, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %23 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %22, i32 0, i32 6
  store %struct.spi_device* %21, %struct.spi_device** %23, align 8
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %26 = call i32 @spi_set_drvdata(%struct.spi_device* %24, %struct.iio_dev* %25)
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %31, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = call %struct.TYPE_11__* @spi_get_device_id(%struct.spi_device* %39)
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 2
  store i32* @adc084s021_info, i32** %49, align 8
  %50 = load i32, i32* @adc084s021_channels, align 4
  %51 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @adc084s021_channels, align 4
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %58 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %61 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %64 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %67 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %70 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 4, i32* %71, align 8
  %72 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %73 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %72, i32 0, i32 3
  %74 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %75 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %74, i32 0, i32 2
  %76 = call i32 @spi_message_init_with_transfers(i32* %73, %struct.TYPE_10__* %75, i32 1)
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 0
  %79 = call i32 @devm_regulator_get(%struct.TYPE_12__* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %81 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %83 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %18
  %88 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %89 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %113

92:                                               ; preds = %18
  %93 = load %struct.adc084s021*, %struct.adc084s021** %5, align 8
  %94 = getelementptr inbounds %struct.adc084s021, %struct.adc084s021* %93, i32 0, i32 0
  %95 = call i32 @mutex_init(i32* %94)
  %96 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %97 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %96, i32 0, i32 0
  %98 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %99 = load i32, i32* @adc084s021_buffer_trigger_handler, align 4
  %100 = call i32 @devm_iio_triggered_buffer_setup(%struct.TYPE_12__* %97, %struct.iio_dev* %98, i32* null, i32 %99, i32* @adc084s021_buffer_setup_ops)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_12__* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %113

108:                                              ; preds = %92
  %109 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %110 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %109, i32 0, i32 0
  %111 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %112 = call i32 @devm_iio_device_register(%struct.TYPE_12__* %110, %struct.iio_dev* %111)
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %108, %103, %87, %12
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.adc084s021* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_11__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @spi_message_init_with_transfers(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(%struct.TYPE_12__*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_12__*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
