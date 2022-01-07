; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_signal_on_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_signal_on_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, %struct.hv_ring_buffer_info }
%struct.hv_ring_buffer_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.vmbus_channel*)* @hv_signal_on_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_signal_on_write(i64 %0, %struct.vmbus_channel* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca %struct.hv_ring_buffer_info*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %4, align 8
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %7 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %6, i32 0, i32 1
  store %struct.hv_ring_buffer_info* %7, %struct.hv_ring_buffer_info** %5, align 8
  %8 = call i32 (...) @virt_mb()
  %9 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %10 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @READ_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %34

17:                                               ; preds = %2
  %18 = call i32 (...) @virt_rmb()
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %21 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @READ_ONCE(i32 %24)
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %29 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %33 = call i32 @vmbus_setevent(%struct.vmbus_channel* %32)
  br label %34

34:                                               ; preds = %16, %27, %17
  ret void
}

declare dso_local i32 @virt_mb(...) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @virt_rmb(...) #1

declare dso_local i32 @vmbus_setevent(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
