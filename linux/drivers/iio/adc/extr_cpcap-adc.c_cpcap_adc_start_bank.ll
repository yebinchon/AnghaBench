; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_start_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_start_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_adc = type { i32, i32 }
%struct.cpcap_adc_request = type { i32 }

@CPCAP_ADC_TIMING_IMM = common dso_local global i32 0, align 4
@CPCAP_ADC_MAX_RETRIES = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_adc*, %struct.cpcap_adc_request*)* @cpcap_adc_start_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_adc_start_bank(%struct.cpcap_adc* %0, %struct.cpcap_adc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpcap_adc*, align 8
  %5 = alloca %struct.cpcap_adc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpcap_adc* %0, %struct.cpcap_adc** %4, align 8
  store %struct.cpcap_adc_request* %1, %struct.cpcap_adc_request** %5, align 8
  %8 = load i32, i32* @CPCAP_ADC_TIMING_IMM, align 4
  %9 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %5, align 8
  %10 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.cpcap_adc*, %struct.cpcap_adc** %4, align 8
  %12 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %44, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @CPCAP_ADC_MAX_RETRIES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load %struct.cpcap_adc*, %struct.cpcap_adc** %4, align 8
  %19 = load %struct.cpcap_adc_request*, %struct.cpcap_adc_request** %5, align 8
  %20 = call i32 @cpcap_adc_setup_bank(%struct.cpcap_adc* %18, %struct.cpcap_adc_request* %19)
  %21 = load %struct.cpcap_adc*, %struct.cpcap_adc** %4, align 8
  %22 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cpcap_adc*, %struct.cpcap_adc** %4, align 8
  %25 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @msecs_to_jiffies(i32 50)
  %28 = call i32 @wait_event_interruptible_timeout(i32 %23, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %49

32:                                               ; preds = %17
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %44

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %13

47:                                               ; preds = %13
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %41, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @cpcap_adc_setup_bank(%struct.cpcap_adc*, %struct.cpcap_adc_request*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
