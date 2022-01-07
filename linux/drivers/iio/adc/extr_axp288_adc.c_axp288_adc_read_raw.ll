; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp288_adc.c_axp288_adc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp288_adc.c_axp288_adc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.iio_chan_spec = type { i32 }
%struct.axp288_adc_info = type { i32 }

@AXP288_ADC_TS_CURRENT_ON_ONDEMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"GPADC mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AXP288_ADC_TS_CURRENT_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"TS pin restore\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @axp288_adc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_adc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.axp288_adc_info*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.axp288_adc_info* @iio_priv(%struct.iio_dev* %13)
  store %struct.axp288_adc_info* %14, %struct.axp288_adc_info** %12, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* %10, align 8
  switch i64 %18, label %54 [
    i64 128, label %19
  ]

19:                                               ; preds = %5
  %20 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %12, align 8
  %21 = load i32, i32* @AXP288_ADC_TS_CURRENT_ON_ONDEMAND, align 4
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @axp288_adc_set_ts(%struct.axp288_adc_info* %20, i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 1
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %57

33:                                               ; preds = %19
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %12, align 8
  %39 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @axp288_adc_read_channel(i32* %34, i32 %37, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %12, align 8
  %43 = load i32, i32* @AXP288_ADC_TS_CURRENT_ON, align 4
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @axp288_adc_set_ts(%struct.axp288_adc_info* %42, i32 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %33
  %50 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 1
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %33
  br label %57

54:                                               ; preds = %5
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %54, %53, %27
  %58 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local %struct.axp288_adc_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @axp288_adc_set_ts(%struct.axp288_adc_info*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @axp288_adc_read_channel(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
