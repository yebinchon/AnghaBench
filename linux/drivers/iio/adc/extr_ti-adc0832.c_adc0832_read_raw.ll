; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc0832.c_adc0832_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc0832.c_adc0832_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.adc0832 = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adc0832_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc0832_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adc0832*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.adc0832* @iio_priv(%struct.iio_dev* %13)
  store %struct.adc0832* %14, %struct.adc0832** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %58 [
    i64 129, label %16
    i64 128, label %40
  ]

16:                                               ; preds = %5
  %17 = load %struct.adc0832*, %struct.adc0832** %12, align 8
  %18 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.adc0832*, %struct.adc0832** %12, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @adc0832_adc_conversion(%struct.adc0832* %20, i32 %23, i32 %26)
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.adc0832*, %struct.adc0832** %12, align 8
  %30 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %16
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %61

38:                                               ; preds = %16
  %39 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %39, i32* %6, align 4
  br label %61

40:                                               ; preds = %5
  %41 = load %struct.adc0832*, %struct.adc0832** %12, align 8
  %42 = getelementptr inbounds %struct.adc0832, %struct.adc0832* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regulator_get_voltage(i32 %43)
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  br label %61

52:                                               ; preds = %40
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 1000
  store i32 %55, i32* %53, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 8, i32* %56, align 4
  %57 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %57, i32* %6, align 4
  br label %61

58:                                               ; preds = %5
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %52, %49, %38, %35
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.adc0832* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adc0832_adc_conversion(%struct.adc0832*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
