; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_disable_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_disable_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads1015_data = type { i64, i64, i32 }
%struct.iio_chan_spec = type { i64 }

@ADS1015_CFG_COMP_MODE_TRAD = common dso_local global i64 0, align 8
@ADS1015_CFG_COMP_MODE_WINDOW = common dso_local global i32 0, align 4
@ADS1015_CFG_REG = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_QUE_MASK = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_DISABLE = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_QUE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ads1015_data*, %struct.iio_chan_spec*, i32)* @ads1015_disable_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_disable_event_config(%struct.ads1015_data* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ads1015_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ads1015_data* %0, %struct.ads1015_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %10 = call i32 @ads1015_event_channel_enabled(%struct.ads1015_data* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

13:                                               ; preds = %3
  %14 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %15 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %55

22:                                               ; preds = %13
  %23 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %24 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ADS1015_CFG_COMP_MODE_TRAD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ADS1015_CFG_COMP_MODE_WINDOW, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %55

33:                                               ; preds = %28, %22
  %34 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %35 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ADS1015_CFG_REG, align 4
  %38 = load i32, i32* @ADS1015_CFG_COMP_QUE_MASK, align 4
  %39 = load i32, i32* @ADS1015_CFG_COMP_DISABLE, align 4
  %40 = load i32, i32* @ADS1015_CFG_COMP_QUE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %33
  %48 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @ads1015_event_channel_disable(%struct.ads1015_data* %48, i64 %51)
  %53 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %54 = call i32 @ads1015_set_power_state(%struct.ads1015_data* %53, i32 0)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %47, %45, %32, %21, %12
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ads1015_event_channel_enabled(%struct.ads1015_data*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ads1015_event_channel_disable(%struct.ads1015_data*, i64) #1

declare dso_local i32 @ads1015_set_power_state(%struct.ads1015_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
