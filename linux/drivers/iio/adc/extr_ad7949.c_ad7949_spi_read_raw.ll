; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7949.c_ad7949_spi_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7949.c_ad7949_spi_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad7949_adc_chip = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7949_spi_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7949_spi_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7949_adc_chip*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad7949_adc_chip* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7949_adc_chip* %15, %struct.ad7949_adc_chip** %12, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %59

21:                                               ; preds = %5
  %22 = load i64, i64* %11, align 8
  switch i64 %22, label %56 [
    i64 129, label %23
    i64 128, label %42
  ]

23:                                               ; preds = %21
  %24 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %12, align 8
  %25 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %12, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ad7949_spi_read_channel(%struct.ad7949_adc_chip* %27, i32* %28, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %12, align 8
  %34 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %59

40:                                               ; preds = %23
  %41 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %41, i32* %6, align 4
  br label %59

42:                                               ; preds = %21
  %43 = load %struct.ad7949_adc_chip*, %struct.ad7949_adc_chip** %12, align 8
  %44 = getelementptr inbounds %struct.ad7949_adc_chip, %struct.ad7949_adc_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regulator_get_voltage(i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %59

51:                                               ; preds = %42
  %52 = load i32, i32* %13, align 4
  %53 = sdiv i32 %52, 5000
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %55, i32* %6, align 4
  br label %59

56:                                               ; preds = %21
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %51, %49, %40, %38, %18
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.ad7949_adc_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7949_spi_read_channel(%struct.ad7949_adc_chip*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
