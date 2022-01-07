; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c___hv_pkt_iter_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c___hv_pkt_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { %struct.hv_ring_buffer_info }
%struct.hv_ring_buffer_info = type { i64, i64 }
%struct.vmpacket_descriptor = type { i32 }

@VMBUS_PKT_TRAILER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmpacket_descriptor* @__hv_pkt_iter_next(%struct.vmbus_channel* %0, %struct.vmpacket_descriptor* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.vmpacket_descriptor*, align 8
  %5 = alloca %struct.hv_ring_buffer_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store %struct.vmpacket_descriptor* %1, %struct.vmpacket_descriptor** %4, align 8
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %9 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 0
  store %struct.hv_ring_buffer_info* %9, %struct.hv_ring_buffer_info** %5, align 8
  %10 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %11 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 3
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %16 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @VMBUS_PKT_TRAILER, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %22 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %26 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %33 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %30, %2
  %37 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %38 = call %struct.vmpacket_descriptor* @hv_pkt_iter_first(%struct.vmbus_channel* %37)
  ret %struct.vmpacket_descriptor* %38
}

declare dso_local %struct.vmpacket_descriptor* @hv_pkt_iter_first(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
