; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp20x_adc.c_axp22x_adc_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp20x_adc.c_axp22x_adc_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i64, i32 }
%struct.axp20x_adc_iio = type { i32 }

@IIO_CURRENT = common dso_local global i64 0, align 8
@AXP22X_BATT_DISCHRG_I = common dso_local global i64 0, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @axp22x_adc_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp22x_adc_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.axp20x_adc_iio*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.axp20x_adc_iio* @iio_priv(%struct.iio_dev* %10)
  store %struct.axp20x_adc_iio* %11, %struct.axp20x_adc_iio** %8, align 8
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IIO_CURRENT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AXP22X_BATT_DISCHRG_I, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 13, i32* %9, align 4
  br label %25

24:                                               ; preds = %17, %3
  store i32 12, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %8, align 8
  %27 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @axp20x_read_variable_width(i32 %28, i32 %31, i32 %32)
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.axp20x_adc_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @axp20x_read_variable_width(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
