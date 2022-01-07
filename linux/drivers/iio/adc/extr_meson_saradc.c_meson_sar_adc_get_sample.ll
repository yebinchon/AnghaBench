; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_get_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_get_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.meson_sar_adc_priv = type { i32 }

@IIO_TEMP = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to read sample for channel %lu: %d\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32*)* @meson_sar_adc_get_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_sar_adc_get_sample(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.meson_sar_adc_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %14)
  store %struct.meson_sar_adc_priv* %15, %struct.meson_sar_adc_priv** %12, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IIO_TEMP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %12, align 8
  %23 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %72

29:                                               ; preds = %21, %5
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = call i32 @meson_sar_adc_lock(%struct.iio_dev* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %72

36:                                               ; preds = %29
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = call i32 @meson_sar_adc_clear_fifo(%struct.iio_dev* %37)
  %39 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @meson_sar_adc_set_averaging(%struct.iio_dev* %39, %struct.iio_chan_spec* %40, i32 %41, i32 %42)
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %46 = call i32 @meson_sar_adc_enable_channel(%struct.iio_dev* %44, %struct.iio_chan_spec* %45)
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = call i32 @meson_sar_adc_start_sample_engine(%struct.iio_dev* %47)
  %49 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %50 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @meson_sar_adc_read_raw_sample(%struct.iio_dev* %49, %struct.iio_chan_spec* %50, i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = call i32 @meson_sar_adc_stop_sample_engine(%struct.iio_dev* %53)
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = call i32 @meson_sar_adc_unlock(%struct.iio_dev* %55)
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %36
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %65 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @dev_warn(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %72

70:                                               ; preds = %36
  %71 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %59, %34, %26
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @meson_sar_adc_lock(%struct.iio_dev*) #1

declare dso_local i32 @meson_sar_adc_clear_fifo(%struct.iio_dev*) #1

declare dso_local i32 @meson_sar_adc_set_averaging(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32) #1

declare dso_local i32 @meson_sar_adc_enable_channel(%struct.iio_dev*, %struct.iio_chan_spec*) #1

declare dso_local i32 @meson_sar_adc_start_sample_engine(%struct.iio_dev*) #1

declare dso_local i32 @meson_sar_adc_read_raw_sample(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @meson_sar_adc_stop_sample_engine(%struct.iio_dev*) #1

declare dso_local i32 @meson_sar_adc_unlock(%struct.iio_dev*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
