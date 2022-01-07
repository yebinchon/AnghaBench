; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cc10001_adc.c_cc10001_adc_poll_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cc10001_adc.c_cc10001_adc_poll_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.cc10001_adc_device = type { i32 }

@CC10001_ADC_EOC = common dso_local global i32 0, align 4
@CC10001_ADC_EOC_SET = common dso_local global i32 0, align 4
@CC10001_MAX_POLL_COUNT = common dso_local global i32 0, align 4
@CC10001_INVALID_SAMPLED = common dso_local global i32 0, align 4
@CC10001_ADC_CHSEL_SAMPLED = common dso_local global i32 0, align 4
@CC10001_ADC_CH_MASK = common dso_local global i32 0, align 4
@CC10001_ADC_DDATA_OUT = common dso_local global i32 0, align 4
@CC10001_ADC_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @cc10001_adc_poll_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc10001_adc_poll_done(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cc10001_adc_device*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.cc10001_adc_device* @iio_priv(%struct.iio_dev* %10)
  store %struct.cc10001_adc_device* %11, %struct.cc10001_adc_device** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %29, %3
  %13 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %8, align 8
  %14 = load i32, i32* @CC10001_ADC_EOC, align 4
  %15 = call i32 @cc10001_adc_read_reg(%struct.cc10001_adc_device* %13, i32 %14)
  %16 = load i32, i32* @CC10001_ADC_EOC_SET, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ndelay(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @CC10001_MAX_POLL_COUNT, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @CC10001_INVALID_SAMPLED, align 4
  store i32 %28, i32* %4, align 4
  br label %55

29:                                               ; preds = %20
  br label %12

30:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %8, align 8
  %33 = load i32, i32* @CC10001_ADC_CHSEL_SAMPLED, align 4
  %34 = call i32 @cc10001_adc_read_reg(%struct.cc10001_adc_device* %32, i32 %33)
  %35 = load i32, i32* @CC10001_ADC_CH_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ndelay(i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @CC10001_MAX_POLL_COUNT, align 4
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @CC10001_INVALID_SAMPLED, align 4
  store i32 %47, i32* %4, align 4
  br label %55

48:                                               ; preds = %39
  br label %31

49:                                               ; preds = %31
  %50 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %8, align 8
  %51 = load i32, i32* @CC10001_ADC_DDATA_OUT, align 4
  %52 = call i32 @cc10001_adc_read_reg(%struct.cc10001_adc_device* %50, i32 %51)
  %53 = load i32, i32* @CC10001_ADC_DATA_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %46, %27
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.cc10001_adc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @cc10001_adc_read_reg(%struct.cc10001_adc_device*, i32) #1

declare dso_local i32 @ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
