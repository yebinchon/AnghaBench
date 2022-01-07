; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ad7768_state = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7768_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7768_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7768_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad7768_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad7768_state* %16, %struct.ad7768_state** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %68 [
    i64 130, label %18
    i64 128, label %42
    i64 129, label %62
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %71

25:                                               ; preds = %18
  %26 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %27 = call i32 @ad7768_scan_direct(%struct.iio_dev* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %14, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %34)
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %6, align 4
  br label %71

40:                                               ; preds = %33
  %41 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %41, i32* %6, align 4
  br label %71

42:                                               ; preds = %5
  %43 = load %struct.ad7768_state*, %struct.ad7768_state** %12, align 8
  %44 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regulator_get_voltage(i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %71

51:                                               ; preds = %42
  %52 = load i32, i32* %13, align 4
  %53 = mul nsw i32 %52, 2
  %54 = sdiv i32 %53, 1000
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %61, i32* %6, align 4
  br label %71

62:                                               ; preds = %5
  %63 = load %struct.ad7768_state*, %struct.ad7768_state** %12, align 8
  %64 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %67, i32* %6, align 4
  br label %71

68:                                               ; preds = %5
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %62, %51, %49, %40, %38, %23
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.ad7768_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ad7768_scan_direct(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
