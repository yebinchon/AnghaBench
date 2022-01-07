; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp20x_adc.c_axp22x_adc_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp20x_adc.c_axp22x_adc_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i32, i32 }

@AXP22X_BATT_V = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_chan_spec*, i32*, i32*)* @axp22x_adc_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp22x_adc_scale(%struct.iio_chan_spec* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %9 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %31 [
    i32 128, label %11
    i32 130, label %24
    i32 129, label %28
  ]

11:                                               ; preds = %3
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AXP22X_BATT_V, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %34

20:                                               ; preds = %11
  %21 = load i32*, i32** %6, align 8
  store i32 1, i32* %21, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 100000, i32* %22, align 4
  %23 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 500000, i32* %26, align 4
  %27 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %27, i32* %4, align 4
  br label %34

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  store i32 100, i32* %29, align 4
  %30 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %30, i32* %4, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %28, %24, %20, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
