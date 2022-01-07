; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_free_sink_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm-perf.c_free_sink_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etm_event_data = type { i32, i32 }
%struct.coresight_device = type { i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etm_event_data*)* @free_sink_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_sink_buffer(%struct.etm_event_data* %0) #0 {
  %2 = alloca %struct.etm_event_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.coresight_device*, align 8
  store %struct.etm_event_data* %0, %struct.etm_event_data** %2, align 8
  %6 = load %struct.etm_event_data*, %struct.etm_event_data** %2, align 8
  %7 = getelementptr inbounds %struct.etm_event_data, %struct.etm_event_data* %6, i32 0, i32 1
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @cpumask_empty(i32* %8)
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.etm_event_data*, %struct.etm_event_data** %2, align 8
  %15 = getelementptr inbounds %struct.etm_event_data, %struct.etm_event_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %34

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @cpumask_first(i32* %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.etm_event_data*, %struct.etm_event_data** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @etm_event_cpu_path(%struct.etm_event_data* %22, i32 %23)
  %25 = call %struct.coresight_device* @coresight_get_sink(i32 %24)
  store %struct.coresight_device* %25, %struct.coresight_device** %5, align 8
  %26 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %27 = call %struct.TYPE_2__* @sink_ops(%struct.coresight_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.etm_event_data*, %struct.etm_event_data** %2, align 8
  %31 = getelementptr inbounds %struct.etm_event_data, %struct.etm_event_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %29(i32 %32)
  br label %34

34:                                               ; preds = %19, %18, %12
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cpumask_empty(i32*) #1

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local %struct.coresight_device* @coresight_get_sink(i32) #1

declare dso_local i32 @etm_event_cpu_path(%struct.etm_event_data*, i32) #1

declare dso_local %struct.TYPE_2__* @sink_ops(%struct.coresight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
