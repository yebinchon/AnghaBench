; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/resolver/extr_ad2s90.c_ad2s90_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/resolver/extr_ad2s90.c_ad2s90_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32 }
%struct.iio_dev = type { i32, %struct.TYPE_3__, i32, i32*, i32, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.ad2s90_state = type { %struct.spi_device*, i32 }
%struct.TYPE_4__ = type { i32 }

@AD2S90_MAX_SPI_FREQ_HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"SPI CLK, %d Hz exceeds %d Hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ad2s90_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad2s90_chan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad2s90_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s90_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ad2s90_state*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AD2S90_MAX_SPI_FREQ_HZ, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AD2S90_MAX_SPI_FREQ_HZ, align 8
  %18 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %68

21:                                               ; preds = %1
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %23, i32 16)
  store %struct.iio_dev* %24, %struct.iio_dev** %4, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %26 = icmp ne %struct.iio_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %68

30:                                               ; preds = %21
  %31 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %32 = call %struct.ad2s90_state* @iio_priv(%struct.iio_dev* %31)
  store %struct.ad2s90_state* %32, %struct.ad2s90_state** %5, align 8
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %35 = call i32 @spi_set_drvdata(%struct.spi_device* %33, %struct.iio_dev* %34)
  %36 = load %struct.ad2s90_state*, %struct.ad2s90_state** %5, align 8
  %37 = getelementptr inbounds %struct.ad2s90_state, %struct.ad2s90_state* %36, i32 0, i32 1
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = load %struct.ad2s90_state*, %struct.ad2s90_state** %5, align 8
  %41 = getelementptr inbounds %struct.ad2s90_state, %struct.ad2s90_state* %40, i32 0, i32 0
  store %struct.spi_device* %39, %struct.spi_device** %41, align 8
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 1
  %44 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 5
  store i32* @ad2s90_info, i32** %48, align 8
  %49 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %50 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 3
  store i32* @ad2s90_chan, i32** %53, align 8
  %54 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = call %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %67 = call i32 @devm_iio_device_register(i32* %65, %struct.iio_dev* %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %30, %27, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad2s90_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_4__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
