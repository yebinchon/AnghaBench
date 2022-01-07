; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7298.c_ad7298_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7298.c_ad7298_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ad7298_state = type { i32 }

@AD7298_CH_TEMP = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7298_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7298_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ad7298_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad7298_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7298_state* %15, %struct.ad7298_state** %13, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %95 [
    i64 131, label %17
    i64 130, label %65
    i64 132, label %88
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %98

24:                                               ; preds = %17
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AD7298_CH_TEMP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.ad7298_state*, %struct.ad7298_state** %13, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @ad7298_scan_temp(%struct.ad7298_state* %31, i32* %32)
  store i32 %33, i32* %12, align 4
  br label %40

34:                                               ; preds = %24
  %35 = load %struct.ad7298_state*, %struct.ad7298_state** %13, align 8
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ad7298_scan_direct(%struct.ad7298_state* %35, i32 %38)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %34, %30
  %41 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %42 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %41)
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %6, align 4
  br label %98

47:                                               ; preds = %40
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AD7298_CH_TEMP, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %56 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @GENMASK(i32 %59, i32 0)
  %61 = and i32 %54, %60
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %53, %47
  %64 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %64, i32* %6, align 4
  br label %98

65:                                               ; preds = %5
  %66 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %67 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %85 [
    i32 128, label %69
    i32 129, label %79
  ]

69:                                               ; preds = %65
  %70 = load %struct.ad7298_state*, %struct.ad7298_state** %13, align 8
  %71 = call i32 @ad7298_get_ref_voltage(%struct.ad7298_state* %70)
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %74 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %78, i32* %6, align 4
  br label %98

79:                                               ; preds = %65
  %80 = load %struct.ad7298_state*, %struct.ad7298_state** %13, align 8
  %81 = call i32 @ad7298_get_ref_voltage(%struct.ad7298_state* %80)
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %10, align 8
  store i32 10, i32* %83, align 4
  %84 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %84, i32* %6, align 4
  br label %98

85:                                               ; preds = %65
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %98

88:                                               ; preds = %5
  %89 = load %struct.ad7298_state*, %struct.ad7298_state** %13, align 8
  %90 = call i32 @ad7298_get_ref_voltage(%struct.ad7298_state* %89)
  %91 = sdiv i32 2732500, %90
  %92 = sub nsw i32 1093, %91
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %94, i32* %6, align 4
  br label %98

95:                                               ; preds = %5
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %88, %85, %79, %69, %63, %45, %22
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local %struct.ad7298_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ad7298_scan_temp(%struct.ad7298_state*, i32*) #1

declare dso_local i32 @ad7298_scan_direct(%struct.ad7298_state*, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @ad7298_get_ref_voltage(%struct.ad7298_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
