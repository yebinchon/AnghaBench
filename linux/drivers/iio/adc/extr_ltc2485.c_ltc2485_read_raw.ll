; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2485.c_ltc2485_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2485.c_ltc2485_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ltc2485_data = type { i32 }

@IIO_CHAN_INFO_RAW = common dso_local global i64 0, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_SCALE = common dso_local global i64 0, align 8
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ltc2485_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2485_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ltc2485_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ltc2485_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.ltc2485_data* %15, %struct.ltc2485_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @IIO_CHAN_INFO_RAW, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = load %struct.ltc2485_data*, %struct.ltc2485_data** %12, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @ltc2485_read(%struct.ltc2485_data* %20, i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %40

27:                                               ; preds = %19
  %28 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %28, i32* %6, align 4
  br label %40

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @IIO_CHAN_INFO_SCALE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32*, i32** %9, align 8
  store i32 5000, i32* %34, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 25, i32* %35, align 4
  %36 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %36, i32* %6, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %33, %27, %25
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.ltc2485_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ltc2485_read(%struct.ltc2485_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
