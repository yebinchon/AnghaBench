; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ingenic-adc.c_ingenic_adc_read_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ingenic-adc.c_ingenic_adc_read_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ingenic_adc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32, i32* }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_AVAIL_RANGE = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@IIO_AVAIL_LIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32**, i32*, i32*, i64)* @ingenic_adc_read_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_adc_read_avail(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32** %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ingenic_adc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %16 = call %struct.ingenic_adc* @iio_priv(%struct.iio_dev* %15)
  store %struct.ingenic_adc* %16, %struct.ingenic_adc** %14, align 8
  %17 = load i64, i64* %13, align 8
  switch i64 %17, label %50 [
    i64 129, label %18
    i64 128, label %34
  ]

18:                                               ; preds = %6
  %19 = load i32, i32* @IIO_VAL_INT, align 4
  %20 = load i32*, i32** %11, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ingenic_adc*, %struct.ingenic_adc** %14, align 8
  %22 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %12, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ingenic_adc*, %struct.ingenic_adc** %14, align 8
  %28 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32**, i32*** %10, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i32, i32* @IIO_AVAIL_RANGE, align 4
  store i32 %33, i32* %7, align 4
  br label %53

34:                                               ; preds = %6
  %35 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.ingenic_adc*, %struct.ingenic_adc** %14, align 8
  %38 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %12, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ingenic_adc*, %struct.ingenic_adc** %14, align 8
  %44 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32**, i32*** %10, align 8
  store i32* %47, i32** %48, align 8
  %49 = load i32, i32* @IIO_AVAIL_LIST, align 4
  store i32 %49, i32* %7, align 4
  br label %53

50:                                               ; preds = %6
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %34, %18
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.ingenic_adc* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
