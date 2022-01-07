; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_aspeed_adc.c_aspeed_adc_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_aspeed_adc.c_aspeed_adc_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.aspeed_adc_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.aspeed_adc_model_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ASPEED_CLOCKS_PER_SAMPLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @aspeed_adc_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_adc_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.aspeed_adc_data*, align 8
  %13 = alloca %struct.aspeed_adc_model_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.aspeed_adc_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.aspeed_adc_data* %15, %struct.aspeed_adc_data** %12, align 8
  %16 = load %struct.aspeed_adc_data*, %struct.aspeed_adc_data** %12, align 8
  %17 = getelementptr inbounds %struct.aspeed_adc_data, %struct.aspeed_adc_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.aspeed_adc_model_data* @of_device_get_match_data(i32 %18)
  store %struct.aspeed_adc_model_data* %19, %struct.aspeed_adc_model_data** %13, align 8
  %20 = load i64, i64* %11, align 8
  switch i64 %20, label %49 [
    i64 129, label %21
    i64 128, label %46
    i64 130, label %46
  ]

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.aspeed_adc_model_data*, %struct.aspeed_adc_model_data** %13, align 8
  %24 = getelementptr inbounds %struct.aspeed_adc_model_data, %struct.aspeed_adc_model_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.aspeed_adc_model_data*, %struct.aspeed_adc_model_data** %13, align 8
  %30 = getelementptr inbounds %struct.aspeed_adc_model_data, %struct.aspeed_adc_model_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %52

36:                                               ; preds = %27
  %37 = load %struct.aspeed_adc_data*, %struct.aspeed_adc_data** %12, align 8
  %38 = getelementptr inbounds %struct.aspeed_adc_data, %struct.aspeed_adc_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ASPEED_CLOCKS_PER_SAMPLE, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i32 @clk_set_rate(i32 %41, i32 %44)
  store i32 0, i32* %6, align 4
  br label %52

46:                                               ; preds = %5, %5
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %52

49:                                               ; preds = %5
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %46, %36, %33
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.aspeed_adc_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.aspeed_adc_model_data* @of_device_get_match_data(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
