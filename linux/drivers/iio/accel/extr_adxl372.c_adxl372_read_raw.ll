; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.adxl372_state = type { i64, i64 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@ADXL372_USCALE = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@adxl372_samp_freq_tbl = common dso_local global i32* null, align 8
@adxl372_bw_freq_tbl = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adxl372_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl372_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adxl372_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.adxl372_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.adxl372_state* %15, %struct.adxl372_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %74 [
    i64 130, label %17
    i64 128, label %51
    i64 129, label %56
    i64 131, label %65
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %77

24:                                               ; preds = %17
  %25 = load %struct.adxl372_state*, %struct.adxl372_state** %12, align 8
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @adxl372_read_axis(%struct.adxl372_state* %25, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %30)
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %77

36:                                               ; preds = %24
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %37, %41
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @sign_extend32(i32 %42, i32 %47)
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %50, i32* %6, align 4
  br label %77

51:                                               ; preds = %5
  %52 = load i32*, i32** %9, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* @ADXL372_USCALE, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %55, i32* %6, align 4
  br label %77

56:                                               ; preds = %5
  %57 = load i32*, i32** @adxl372_samp_freq_tbl, align 8
  %58 = load %struct.adxl372_state*, %struct.adxl372_state** %12, align 8
  %59 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %64, i32* %6, align 4
  br label %77

65:                                               ; preds = %5
  %66 = load i32*, i32** @adxl372_bw_freq_tbl, align 8
  %67 = load %struct.adxl372_state*, %struct.adxl372_state** %12, align 8
  %68 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %73, i32* %6, align 4
  br label %77

74:                                               ; preds = %5
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %65, %56, %51, %36, %34, %22
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.adxl372_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @adxl372_read_axis(%struct.adxl372_state*, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
