; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp20x_adc.c_axp20x_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp20x_adc.c_axp20x_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.axp20x_adc_iio = type { i32 }

@IIO_CHAN_INFO_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AXP20X_GPIO10_IN_RANGE_GPIO0 = common dso_local global i32 0, align 4
@AXP20X_GPIO10_IN_RANGE_GPIO1 = common dso_local global i32 0, align 4
@AXP20X_GPIO10_IN_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @axp20x_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.axp20x_adc_iio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.axp20x_adc_iio* @iio_priv(%struct.iio_dev* %15)
  store %struct.axp20x_adc_iio* %16, %struct.axp20x_adc_iio** %12, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @IIO_CHAN_INFO_OFFSET, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %59

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 700000
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %59

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  store i32 %36, i32* %9, align 4
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %48 [
    i32 129, label %40
    i32 128, label %44
  ]

40:                                               ; preds = %32
  %41 = load i32, i32* @AXP20X_GPIO10_IN_RANGE_GPIO0, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @AXP20X_GPIO10_IN_RANGE_GPIO0_VAL(i32 %42)
  store i32 %43, i32* %14, align 4
  br label %51

44:                                               ; preds = %32
  %45 = load i32, i32* @AXP20X_GPIO10_IN_RANGE_GPIO1, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @AXP20X_GPIO10_IN_RANGE_GPIO1_VAL(i32 %46)
  store i32 %47, i32* %14, align 4
  br label %51

48:                                               ; preds = %32
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %59

51:                                               ; preds = %44, %40
  %52 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %12, align 8
  %53 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AXP20X_GPIO10_IN_RANGE, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %51, %48, %29, %20
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.axp20x_adc_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @AXP20X_GPIO10_IN_RANGE_GPIO0_VAL(i32) #1

declare dso_local i32 @AXP20X_GPIO10_IN_RANGE_GPIO1_VAL(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
