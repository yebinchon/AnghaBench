; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_etm_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_etm_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }

@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @etm_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  store %struct.hw_perf_event* %8, %struct.hw_perf_event** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PERF_EF_START, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = call i32 @etm_event_start(%struct.perf_event* %14, i32 0)
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PERF_HES_STOPPED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %13
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @PERF_HES_STOPPED, align 4
  %28 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %29 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %25
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @etm_event_start(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
