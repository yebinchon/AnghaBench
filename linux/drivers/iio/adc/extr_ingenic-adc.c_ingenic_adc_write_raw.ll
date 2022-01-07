; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ingenic-adc.c_ingenic_adc_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ingenic-adc.c_ingenic_adc_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ingenic_adc = type { i32 }

@JZ_ADC_BATTERY_LOW_VREF = common dso_local global i32 0, align 4
@JZ_ADC_REG_CFG_BAT_MD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ingenic_adc_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_adc_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ingenic_adc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.ingenic_adc* @iio_priv(%struct.iio_dev* %13)
  store %struct.ingenic_adc* %14, %struct.ingenic_adc** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %41 [
    i64 129, label %16
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %38 [
    i32 128, label %20
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @JZ_ADC_BATTERY_LOW_VREF, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %26 = load i32, i32* @JZ_ADC_REG_CFG_BAT_MD, align 4
  %27 = call i32 @ingenic_adc_set_config(%struct.ingenic_adc* %25, i32 %26, i32 0)
  %28 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %29 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %37

30:                                               ; preds = %20
  %31 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %32 = load i32, i32* @JZ_ADC_REG_CFG_BAT_MD, align 4
  %33 = load i32, i32* @JZ_ADC_REG_CFG_BAT_MD, align 4
  %34 = call i32 @ingenic_adc_set_config(%struct.ingenic_adc* %31, i32 %32, i32 %33)
  %35 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %36 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %24
  store i32 0, i32* %6, align 4
  br label %44

38:                                               ; preds = %16
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %44

41:                                               ; preds = %5
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %38, %37
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.ingenic_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ingenic_adc_set_config(%struct.ingenic_adc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
