; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_pcap_ts.c_pcap_ts_event_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_pcap_ts.c_pcap_ts_event_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_ts = type { i64, i32 }

@PCAP_ADC_TS_M_STANDBY = common dso_local global i64 0, align 8
@PCAP_ADC_TS_M_PRESSURE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcap_ts_event_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_ts_event_touch(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcap_ts*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.pcap_ts*
  store %struct.pcap_ts* %7, %struct.pcap_ts** %5, align 8
  %8 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %9 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCAP_ADC_TS_M_STANDBY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i64, i64* @PCAP_ADC_TS_M_PRESSURE, align 8
  %15 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %16 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.pcap_ts*, %struct.pcap_ts** %5, align 8
  %18 = getelementptr inbounds %struct.pcap_ts, %struct.pcap_ts* %17, i32 0, i32 1
  %19 = call i32 @schedule_delayed_work(i32* %18, i32 0)
  br label %20

20:                                               ; preds = %13, %2
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %21
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
