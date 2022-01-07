; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c_vmbus_setevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c_vmbus_setevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.hv_monitor_page** }
%struct.hv_monitor_page = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.vmbus_channel = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@vmbus_connection = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_setevent(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca %struct.hv_monitor_page*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %4 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %5 = call i32 @trace_vmbus_setevent(%struct.vmbus_channel* %4)
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %7 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %13 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %11
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @vmbus_send_interrupt(i32 %20)
  %22 = load %struct.hv_monitor_page**, %struct.hv_monitor_page*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.hv_monitor_page*, %struct.hv_monitor_page** %22, i64 1
  %24 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %23, align 8
  store %struct.hv_monitor_page* %24, %struct.hv_monitor_page** %3, align 8
  %25 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %26 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %3, align 8
  %29 = getelementptr inbounds %struct.hv_monitor_page, %struct.hv_monitor_page* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %32 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to i64*
  %37 = call i32 @sync_set_bit(i32 %27, i64* %36)
  br label %41

38:                                               ; preds = %11, %1
  %39 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %40 = call i32 @vmbus_set_event(%struct.vmbus_channel* %39)
  br label %41

41:                                               ; preds = %38, %16
  ret void
}

declare dso_local i32 @trace_vmbus_setevent(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_send_interrupt(i32) #1

declare dso_local i32 @sync_set_bit(i32, i64*) #1

declare dso_local i32 @vmbus_set_event(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
