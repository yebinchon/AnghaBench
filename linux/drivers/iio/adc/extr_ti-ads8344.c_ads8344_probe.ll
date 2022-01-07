; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8344.c_ads8344_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8344.c_ads8344_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.ads8344 = type { i32, i32, %struct.spi_device* }

@ENOMEM = common dso_local global i32 0, align 4
@ads8344_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ads8344_channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ads8344_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads8344_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ads8344*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__* %8, i32 16)
  store %struct.iio_dev* %9, %struct.iio_dev** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %92

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %17 = call %struct.ads8344* @iio_priv(%struct.iio_dev* %16)
  store %struct.ads8344* %17, %struct.ads8344** %5, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.ads8344*, %struct.ads8344** %5, align 8
  %20 = getelementptr inbounds %struct.ads8344, %struct.ads8344* %19, i32 0, i32 2
  store %struct.spi_device* %18, %struct.spi_device** %20, align 8
  %21 = load %struct.ads8344*, %struct.ads8344** %5, align 8
  %22 = getelementptr inbounds %struct.ads8344, %struct.ads8344* %21, i32 0, i32 1
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = call i32 @dev_name(%struct.TYPE_6__* %25)
  %27 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %33, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 3
  store i32* @ads8344_info, i32** %42, align 8
  %43 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @ads8344_channels, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ads8344_channels, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = call i32 @devm_regulator_get(%struct.TYPE_6__* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.ads8344*, %struct.ads8344** %5, align 8
  %57 = getelementptr inbounds %struct.ads8344, %struct.ads8344* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ads8344*, %struct.ads8344** %5, align 8
  %59 = getelementptr inbounds %struct.ads8344, %struct.ads8344* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %15
  %64 = load %struct.ads8344*, %struct.ads8344** %5, align 8
  %65 = getelementptr inbounds %struct.ads8344, %struct.ads8344* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %92

68:                                               ; preds = %15
  %69 = load %struct.ads8344*, %struct.ads8344** %5, align 8
  %70 = getelementptr inbounds %struct.ads8344, %struct.ads8344* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @regulator_enable(i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %92

77:                                               ; preds = %68
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %80 = call i32 @spi_set_drvdata(%struct.spi_device* %78, %struct.iio_dev* %79)
  %81 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %82 = call i32 @iio_device_register(%struct.iio_dev* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.ads8344*, %struct.ads8344** %5, align 8
  %87 = getelementptr inbounds %struct.ads8344, %struct.ads8344* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @regulator_disable(i32 %88)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %85, %75, %63, %12
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.ads8344* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
