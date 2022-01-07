; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc128s052.c_adc128_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc128s052.c_adc128_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.spi_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.adc128 = type { i32, i32, %struct.spi_device* }
%struct.TYPE_9__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adc128_info = common dso_local global i32 0, align 4
@adc128_config = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adc128_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc128_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adc128*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call i64 @dev_fwnode(%struct.TYPE_10__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call i64 @device_get_match_data(%struct.TYPE_10__* %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = call %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__* %24, i32 16)
  store %struct.iio_dev* %25, %struct.iio_dev** %4, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %27 = icmp ne %struct.iio_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %110

31:                                               ; preds = %22
  %32 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %33 = call %struct.adc128* @iio_priv(%struct.iio_dev* %32)
  store %struct.adc128* %33, %struct.adc128** %6, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = load %struct.adc128*, %struct.adc128** %6, align 8
  %36 = getelementptr inbounds %struct.adc128, %struct.adc128* %35, i32 0, i32 2
  store %struct.spi_device* %34, %struct.spi_device** %36, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %39 = call i32 @spi_set_drvdata(%struct.spi_device* %37, %struct.iio_dev* %38)
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %44, align 8
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %53 = call %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device* %52)
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %59 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 2
  store i32* @adc128_info, i32** %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @adc128_config, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** @adc128_config, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 0
  %81 = call i32 @devm_regulator_get(%struct.TYPE_10__* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.adc128*, %struct.adc128** %6, align 8
  %83 = getelementptr inbounds %struct.adc128, %struct.adc128* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.adc128*, %struct.adc128** %6, align 8
  %85 = getelementptr inbounds %struct.adc128, %struct.adc128* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %31
  %90 = load %struct.adc128*, %struct.adc128** %6, align 8
  %91 = getelementptr inbounds %struct.adc128, %struct.adc128* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %110

94:                                               ; preds = %31
  %95 = load %struct.adc128*, %struct.adc128** %6, align 8
  %96 = getelementptr inbounds %struct.adc128, %struct.adc128* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @regulator_enable(i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %110

103:                                              ; preds = %94
  %104 = load %struct.adc128*, %struct.adc128** %6, align 8
  %105 = getelementptr inbounds %struct.adc128, %struct.adc128* %104, i32 0, i32 0
  %106 = call i32 @mutex_init(i32* %105)
  %107 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %108 = call i32 @iio_device_register(%struct.iio_dev* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %103, %101, %89, %28
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @dev_fwnode(%struct.TYPE_10__*) #1

declare dso_local i64 @device_get_match_data(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.adc128* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
