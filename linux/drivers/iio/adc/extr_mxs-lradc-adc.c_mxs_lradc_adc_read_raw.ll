; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mxs_lradc_adc = type { i32*, i32 }

@IIO_TEMP = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mxs_lradc_adc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_adc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mxs_lradc_adc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev* %13)
  store %struct.mxs_lradc_adc* %14, %struct.mxs_lradc_adc** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %79 [
    i64 129, label %16
    i64 128, label %33
    i64 130, label %66
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IIO_TEMP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @mxs_lradc_adc_read_temp(%struct.iio_dev* %23, i32* %24)
  store i32 %25, i32* %6, align 4
  br label %83

26:                                               ; preds = %16
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @mxs_lradc_adc_read_single(%struct.iio_dev* %27, i64 %30, i32* %31)
  store i32 %32, i32* %6, align 4
  br label %83

33:                                               ; preds = %5
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IIO_TEMP, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32*, i32** %9, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 253000, i32* %41, align 4
  %42 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %42, i32* %6, align 4
  br label %83

43:                                               ; preds = %33
  %44 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %12, align 8
  %45 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %48 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %54 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %58 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %12, align 8
  %61 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %60, i32 0, i32 1
  %62 = call i32 @test_bit(i64 %59, i32* %61)
  %63 = sub nsw i32 %56, %62
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %65, i32* %6, align 4
  br label %83

66:                                               ; preds = %5
  %67 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %68 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IIO_TEMP, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32*, i32** %9, align 8
  store i32 -1079, i32* %73, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 644268, i32* %74, align 4
  %75 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %75, i32* %6, align 4
  br label %83

76:                                               ; preds = %66
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %83

79:                                               ; preds = %5
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %76, %72, %43, %39, %26, %22
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mxs_lradc_adc_read_temp(%struct.iio_dev*, i32*) #1

declare dso_local i32 @mxs_lradc_adc_read_single(%struct.iio_dev*, i64, i32*) #1

declare dso_local i32 @test_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
