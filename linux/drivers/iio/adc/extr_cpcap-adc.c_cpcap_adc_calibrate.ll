; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_adc = type { i32 }

@CPCAP_ADC_CHG_ISENSE = common dso_local global i32 0, align 4
@CPCAP_REG_ADCAL1 = common dso_local global i32 0, align 4
@ST_ADC_CAL_CHRGI_LOW_THRESHOLD = common dso_local global i32 0, align 4
@ST_ADC_CAL_CHRGI_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@CPCAP_ADC_BATTI = common dso_local global i32 0, align 4
@CPCAP_REG_ADCAL2 = common dso_local global i32 0, align 4
@ST_ADC_CAL_BATTI_LOW_THRESHOLD = common dso_local global i32 0, align 4
@ST_ADC_CAL_BATTI_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_adc*)* @cpcap_adc_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_adc_calibrate(%struct.cpcap_adc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpcap_adc*, align 8
  %4 = alloca i32, align 4
  store %struct.cpcap_adc* %0, %struct.cpcap_adc** %3, align 8
  %5 = load %struct.cpcap_adc*, %struct.cpcap_adc** %3, align 8
  %6 = load i32, i32* @CPCAP_ADC_CHG_ISENSE, align 4
  %7 = load i32, i32* @CPCAP_REG_ADCAL1, align 4
  %8 = load i32, i32* @ST_ADC_CAL_CHRGI_LOW_THRESHOLD, align 4
  %9 = load i32, i32* @ST_ADC_CAL_CHRGI_HIGH_THRESHOLD, align 4
  %10 = call i32 @cpcap_adc_calibrate_one(%struct.cpcap_adc* %5, i32 %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.cpcap_adc*, %struct.cpcap_adc** %3, align 8
  %17 = load i32, i32* @CPCAP_ADC_BATTI, align 4
  %18 = load i32, i32* @CPCAP_REG_ADCAL2, align 4
  %19 = load i32, i32* @ST_ADC_CAL_BATTI_LOW_THRESHOLD, align 4
  %20 = load i32, i32* @ST_ADC_CAL_BATTI_HIGH_THRESHOLD, align 4
  %21 = call i32 @cpcap_adc_calibrate_one(%struct.cpcap_adc* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %24, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @cpcap_adc_calibrate_one(%struct.cpcap_adc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
