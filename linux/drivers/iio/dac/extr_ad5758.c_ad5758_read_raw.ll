; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad5758_state = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AD5758_DAC_INPUT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad5758_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5758_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ad5758_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad5758_state* %17, %struct.ad5758_state** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %71 [
    i64 129, label %19
    i64 128, label %37
    i64 130, label %53
  ]

19:                                               ; preds = %5
  %20 = load %struct.ad5758_state*, %struct.ad5758_state** %12, align 8
  %21 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ad5758_state*, %struct.ad5758_state** %12, align 8
  %24 = load i32, i32* @AD5758_DAC_INPUT, align 4
  %25 = call i32 @ad5758_spi_reg_read(%struct.ad5758_state* %23, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.ad5758_state*, %struct.ad5758_state** %12, align 8
  %27 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %6, align 4
  br label %74

33:                                               ; preds = %19
  %34 = load i32, i32* %15, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %36, i32* %6, align 4
  br label %74

37:                                               ; preds = %5
  %38 = load %struct.ad5758_state*, %struct.ad5758_state** %12, align 8
  %39 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load %struct.ad5758_state*, %struct.ad5758_state** %12, align 8
  %43 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sdiv i32 %48, 1000
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 16, i32* %51, align 4
  %52 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %52, i32* %6, align 4
  br label %74

53:                                               ; preds = %5
  %54 = load %struct.ad5758_state*, %struct.ad5758_state** %12, align 8
  %55 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load %struct.ad5758_state*, %struct.ad5758_state** %12, align 8
  %59 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = mul nsw i32 %62, 65536
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sdiv i32 %63, %66
  %68 = sdiv i32 %67, 1000
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %70, i32* %6, align 4
  br label %74

71:                                               ; preds = %5
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %53, %37, %33, %31
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.ad5758_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad5758_spi_reg_read(%struct.ad5758_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
