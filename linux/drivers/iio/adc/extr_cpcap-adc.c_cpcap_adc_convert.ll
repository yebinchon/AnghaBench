; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_adc_request = type { i32, i32, %struct.cpcap_adc_conversion_tbl* }
%struct.cpcap_adc_conversion_tbl = type { i64, i64, i32, i32 }

@CPCAP_ADC_BATTP = common dso_local global i32 0, align 4
@CPCAP_ADC_BATTI = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_RAW = common dso_local global i64 0, align 8
@CPCAP_ADC_AD0 = common dso_local global i32 0, align 4
@CPCAP_ADC_AD3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpcap_adc_request*)* @cpcap_adc_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpcap_adc_convert(%struct.cpcap_adc_request* %0) #0 {
  %2 = alloca %struct.cpcap_adc_request*, align 8
  %3 = alloca %struct.cpcap_adc_conversion_tbl*, align 8
  %4 = alloca i32, align 4
  store %struct.cpcap_adc_request* %0, %struct.cpcap_adc_request** %2, align 8
  %5 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %6 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %5, i32 0, i32 2
  %7 = load %struct.cpcap_adc_conversion_tbl*, %struct.cpcap_adc_conversion_tbl** %6, align 8
  store %struct.cpcap_adc_conversion_tbl* %7, %struct.cpcap_adc_conversion_tbl** %3, align 8
  %8 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %9 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %12 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %18 [
    i32 128, label %14
    i32 129, label %16
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @CPCAP_ADC_BATTP, align 4
  store i32 %15, i32* %4, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @CPCAP_ADC_BATTI, align 4
  store i32 %17, i32* %4, align 4
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %16, %14
  %20 = load %struct.cpcap_adc_conversion_tbl*, %struct.cpcap_adc_conversion_tbl** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %20, i64 %22
  %24 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IIO_CHAN_INFO_RAW, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %90

29:                                               ; preds = %19
  %30 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %31 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CPCAP_ADC_AD0, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %37 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CPCAP_ADC_AD3, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35, %29
  %42 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %43 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cpcap_adc_table_to_millicelcius(i32 %44)
  %46 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %47 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %90

48:                                               ; preds = %35
  %49 = load %struct.cpcap_adc_conversion_tbl*, %struct.cpcap_adc_conversion_tbl** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %49, i64 %51
  %53 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %56 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.cpcap_adc_conversion_tbl*, %struct.cpcap_adc_conversion_tbl** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %59, i64 %61
  %63 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %48
  br label %90

67:                                               ; preds = %48
  %68 = load %struct.cpcap_adc_conversion_tbl*, %struct.cpcap_adc_conversion_tbl** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %68, i64 %70
  %72 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %75 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.cpcap_adc_conversion_tbl*, %struct.cpcap_adc_conversion_tbl** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %78, i64 %80
  %82 = getelementptr inbounds %struct.cpcap_adc_conversion_tbl, %struct.cpcap_adc_conversion_tbl* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %2, align 8
  %85 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %83
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  br label %90

90:                                               ; preds = %67, %66, %41, %28
  ret void
}

declare dso_local i32 @cpcap_adc_table_to_millicelcius(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
