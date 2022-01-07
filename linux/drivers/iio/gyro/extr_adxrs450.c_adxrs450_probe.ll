; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adxrs450.c_adxrs450_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.adxrs450_state = type { i32, %struct.spi_device* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@adxrs450_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adxrs450_channels = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adxrs450_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxrs450_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adxrs450_state*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %8, i32 16)
  store %struct.iio_dev* %9, %struct.iio_dev** %6, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %74

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = call %struct.adxrs450_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.adxrs450_state* %17, %struct.adxrs450_state** %5, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.adxrs450_state*, %struct.adxrs450_state** %5, align 8
  %20 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %19, i32 0, i32 1
  store %struct.spi_device* %18, %struct.spi_device** %20, align 8
  %21 = load %struct.adxrs450_state*, %struct.adxrs450_state** %5, align 8
  %22 = getelementptr inbounds %struct.adxrs450_state, %struct.adxrs450_state* %21, i32 0, i32 0
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %26 = call i32 @spi_set_drvdata(%struct.spi_device* %24, %struct.iio_dev* %25)
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %31, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 4
  store i32* @adxrs450_info, i32** %33, align 8
  %34 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** @adxrs450_channels, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32*, i32** @adxrs450_channels, align 8
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 0
  %60 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %61 = call i32 @devm_iio_device_register(%struct.TYPE_9__* %59, %struct.iio_dev* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %15
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %74

66:                                               ; preds = %15
  %67 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %68 = call i32 @adxrs450_initial_setup(%struct.iio_dev* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %71, %64, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.adxrs450_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_9__*, %struct.iio_dev*) #1

declare dso_local i32 @adxrs450_initial_setup(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
