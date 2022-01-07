; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c_ad5761_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5761.c_ad5761_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ad5761_state = type { i32, i64 }

@AD5761_ADDR_DAC_READ = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@ad5761_range_params = common dso_local global %struct.TYPE_4__* null, align 8
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad5761_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5761_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5761_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %88 [
    i64 129, label %16
    i64 128, label %33
    i64 130, label %57
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = load i32, i32* @AD5761_ADDR_DAC_READ, align 4
  %19 = call i32 @ad5761_spi_read(%struct.iio_dev* %17, i32 %18, i32* %14)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %91

24:                                               ; preds = %16
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %25, %29
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %32, i32* %6, align 4
  br label %91

33:                                               ; preds = %5
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = call %struct.ad5761_state* @iio_priv(%struct.iio_dev* %34)
  store %struct.ad5761_state* %35, %struct.ad5761_state** %12, align 8
  %36 = load %struct.ad5761_state*, %struct.ad5761_state** %12, align 8
  %37 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ad5761_range_params, align 8
  %40 = load %struct.ad5761_state*, %struct.ad5761_state** %12, align 8
  %41 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %38, %45
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 10
  store i32 %50, i32* %48, align 4
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %56, i32* %6, align 4
  br label %91

57:                                               ; preds = %5
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = call %struct.ad5761_state* @iio_priv(%struct.iio_dev* %58)
  store %struct.ad5761_state* %59, %struct.ad5761_state** %12, align 8
  %60 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %61 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 1, %63
  %65 = sub nsw i32 0, %64
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ad5761_range_params, align 8
  %68 = load %struct.ad5761_state*, %struct.ad5761_state** %12, align 8
  %69 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, %73
  store i32 %76, i32* %74, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ad5761_range_params, align 8
  %78 = load %struct.ad5761_state*, %struct.ad5761_state** %12, align 8
  %79 = getelementptr inbounds %struct.ad5761_state, %struct.ad5761_state* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, %83
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %87, i32* %6, align 4
  br label %91

88:                                               ; preds = %5
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %88, %57, %33, %24, %22
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @ad5761_spi_read(%struct.iio_dev*, i32, i32*) #1

declare dso_local %struct.ad5761_state* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
