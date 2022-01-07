; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ad5755_state = type { i32 }

@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad5755_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5755_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5755_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call %struct.ad5755_state* @iio_priv(%struct.iio_dev* %19)
  store %struct.ad5755_state* %20, %struct.ad5755_state** %12, align 8
  %21 = load i64, i64* %11, align 8
  switch i64 %21, label %42 [
    i64 128, label %22
    i64 129, label %36
  ]

22:                                               ; preds = %5
  %23 = load %struct.ad5755_state*, %struct.ad5755_state** %12, align 8
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %25 = call i32 @ad5755_get_min_max(%struct.ad5755_state* %23, %struct.iio_chan_spec* %24, i32* %16, i32* %17)
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* %16, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %35, i32* %6, align 4
  br label %67

36:                                               ; preds = %5
  %37 = load %struct.ad5755_state*, %struct.ad5755_state** %12, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = call i32 @ad5755_get_offset(%struct.ad5755_state* %37, %struct.iio_chan_spec* %38)
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %41, i32* %6, align 4
  br label %67

42:                                               ; preds = %5
  %43 = load %struct.ad5755_state*, %struct.ad5755_state** %12, align 8
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @ad5755_chan_reg_info(%struct.ad5755_state* %43, %struct.iio_chan_spec* %44, i64 %45, i32 0, i32* %13, i32* %14, i32* %15)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %6, align 4
  br label %67

51:                                               ; preds = %42
  %52 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @ad5755_read(%struct.iio_dev* %52, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %18, align 4
  store i32 %58, i32* %6, align 4
  br label %67

59:                                               ; preds = %51
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %15, align 4
  %62 = sub i32 %60, %61
  %63 = load i32, i32* %14, align 4
  %64 = lshr i32 %62, %63
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %59, %57, %49, %36, %22
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.ad5755_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad5755_get_min_max(%struct.ad5755_state*, %struct.iio_chan_spec*, i32*, i32*) #1

declare dso_local i32 @ad5755_get_offset(%struct.ad5755_state*, %struct.iio_chan_spec*) #1

declare dso_local i32 @ad5755_chan_reg_info(%struct.ad5755_state*, %struct.iio_chan_spec*, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ad5755_read(%struct.iio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
