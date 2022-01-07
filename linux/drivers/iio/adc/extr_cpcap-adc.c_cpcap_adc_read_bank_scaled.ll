; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_read_bank_scaled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_read_bank_scaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16 }
%struct.cpcap_adc = type { i64, i32 }
%struct.cpcap_adc_request = type { i32, i32 }

@CPCAP_VENDOR_TI = common dso_local global i64 0, align 8
@CPCAP_REG_ADCAL1 = common dso_local global i32 0, align 4
@bank_conversion = common dso_local global %struct.TYPE_2__* null, align 8
@CPCAP_ADC_CHG_ISENSE = common dso_local global i64 0, align 8
@CPCAP_REG_ADCAL2 = common dso_local global i32 0, align 4
@CPCAP_ADC_BATTI = common dso_local global i64 0, align 8
@CPCAP_REG_ADCD0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_adc*, %struct.cpcap_adc_request*)* @cpcap_adc_read_bank_scaled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_adc_read_bank_scaled(%struct.cpcap_adc* %0, %struct.cpcap_adc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpcap_adc*, align 8
  %5 = alloca %struct.cpcap_adc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cpcap_adc* %0, %struct.cpcap_adc** %4, align 8
  store %struct.cpcap_adc_request* %1, %struct.cpcap_adc_request** %5, align 8
  %9 = load %struct.cpcap_adc*, %struct.cpcap_adc** %4, align 8
  %10 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CPCAP_VENDOR_TI, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %2
  %15 = load %struct.cpcap_adc*, %struct.cpcap_adc** %4, align 8
  %16 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CPCAP_REG_ADCAL1, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %82

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = trunc i32 %25 to i16
  %27 = sext i16 %26 to i32
  %28 = mul nsw i32 %27, -1
  %29 = add nsw i32 %28, 512
  %30 = trunc i32 %29 to i16
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bank_conversion, align 8
  %32 = load i64, i64* @CPCAP_ADC_CHG_ISENSE, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i16 %30, i16* %34, align 2
  %35 = load %struct.cpcap_adc*, %struct.cpcap_adc** %4, align 8
  %36 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CPCAP_REG_ADCAL2, align 4
  %39 = call i32 @regmap_read(i32 %37, i32 %38, i32* %6)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %82

44:                                               ; preds = %24
  %45 = load i32, i32* %6, align 4
  %46 = trunc i32 %45 to i16
  %47 = sext i16 %46 to i32
  %48 = mul nsw i32 %47, -1
  %49 = add nsw i32 %48, 512
  %50 = trunc i32 %49 to i16
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bank_conversion, align 8
  %52 = load i64, i64* @CPCAP_ADC_BATTI, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i16 %50, i16* %54, align 2
  br label %55

55:                                               ; preds = %44, %2
  %56 = load i32, i32* @CPCAP_REG_ADCD0, align 4
  %57 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %5, align 8
  %58 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 4
  %61 = add nsw i32 %56, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.cpcap_adc*, %struct.cpcap_adc** %4, align 8
  %63 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %5, align 8
  %67 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %66, i32 0, i32 1
  %68 = call i32 @regmap_read(i32 %64, i32 %65, i32* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %82

73:                                               ; preds = %55
  %74 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %5, align 8
  %75 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 1023
  store i32 %77, i32* %75, align 4
  %78 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %5, align 8
  %79 = call i32 @cpcap_adc_phase(%struct.cpcap_adc_request* %78)
  %80 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %5, align 8
  %81 = call i32 @cpcap_adc_convert(%struct.cpcap_adc_request* %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %73, %71, %42, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @cpcap_adc_phase(%struct.cpcap_adc_request*) #1

declare dso_local i32 @cpcap_adc_convert(%struct.cpcap_adc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
