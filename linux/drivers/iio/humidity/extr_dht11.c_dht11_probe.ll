; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_dht11.c_dht11_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_dht11.c_dht11_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.dht11 = type { i64, i32, i32, i32, i64, i32, %struct.device* }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device* }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate IIO device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"GPIO %d has no interrupt\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DHT11_DATA_VALID_TIME = common dso_local global i64 0, align 8
@dht11_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@dht11_chan_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dht11_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dht11_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dht11*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %9, i32 48)
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %102

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %20 = call %struct.dht11* @iio_priv(%struct.iio_dev* %19)
  store %struct.dht11* %20, %struct.dht11** %5, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.dht11*, %struct.dht11** %5, align 8
  %23 = getelementptr inbounds %struct.dht11, %struct.dht11* %22, i32 0, i32 6
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GPIOD_IN, align 4
  %26 = call i32 @devm_gpiod_get(%struct.device* %24, i32* null, i32 %25)
  %27 = load %struct.dht11*, %struct.dht11** %5, align 8
  %28 = getelementptr inbounds %struct.dht11, %struct.dht11* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.dht11*, %struct.dht11** %5, align 8
  %30 = getelementptr inbounds %struct.dht11, %struct.dht11* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load %struct.dht11*, %struct.dht11** %5, align 8
  %36 = getelementptr inbounds %struct.dht11, %struct.dht11* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %102

39:                                               ; preds = %18
  %40 = load %struct.dht11*, %struct.dht11** %5, align 8
  %41 = getelementptr inbounds %struct.dht11, %struct.dht11* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @gpiod_to_irq(i32 %42)
  %44 = load %struct.dht11*, %struct.dht11** %5, align 8
  %45 = getelementptr inbounds %struct.dht11, %struct.dht11* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.dht11*, %struct.dht11** %5, align 8
  %47 = getelementptr inbounds %struct.dht11, %struct.dht11* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.dht11*, %struct.dht11** %5, align 8
  %53 = getelementptr inbounds %struct.dht11, %struct.dht11* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @desc_to_gpio(i32 %54)
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %102

59:                                               ; preds = %39
  %60 = call i64 (...) @ktime_get_boottime_ns()
  %61 = load i64, i64* @DHT11_DATA_VALID_TIME, align 8
  %62 = sub nsw i64 %60, %61
  %63 = sub nsw i64 %62, 1
  %64 = load %struct.dht11*, %struct.dht11** %5, align 8
  %65 = getelementptr inbounds %struct.dht11, %struct.dht11* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  %66 = load %struct.dht11*, %struct.dht11** %5, align 8
  %67 = getelementptr inbounds %struct.dht11, %struct.dht11* %66, i32 0, i32 1
  store i32 -1, i32* %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %70 = call i32 @platform_set_drvdata(%struct.platform_device* %68, %struct.iio_dev* %69)
  %71 = load %struct.dht11*, %struct.dht11** %5, align 8
  %72 = getelementptr inbounds %struct.dht11, %struct.dht11* %71, i32 0, i32 3
  %73 = call i32 @init_completion(i32* %72)
  %74 = load %struct.dht11*, %struct.dht11** %5, align 8
  %75 = getelementptr inbounds %struct.dht11, %struct.dht11* %74, i32 0, i32 2
  %76 = call i32 @mutex_init(i32* %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %85 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store %struct.device* %83, %struct.device** %86, align 8
  %87 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 3
  store i32* @dht11_iio_info, i32** %88, align 8
  %89 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %90 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @dht11_chan_spec, align 4
  %93 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %94 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @dht11_chan_spec, align 4
  %96 = call i32 @ARRAY_SIZE(i32 %95)
  %97 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %98 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %101 = call i32 @devm_iio_device_register(%struct.device* %99, %struct.iio_dev* %100)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %59, %50, %34, %13
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.dht11* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @gpiod_to_irq(i32) #1

declare dso_local i32 @desc_to_gpio(i32) #1

declare dso_local i64 @ktime_get_boottime_ns(...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
