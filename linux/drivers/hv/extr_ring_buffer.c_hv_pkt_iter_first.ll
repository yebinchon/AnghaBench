; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_pkt_iter_first.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_pkt_iter_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmpacket_descriptor = type { i32 }
%struct.vmbus_channel = type { %struct.hv_ring_buffer_info }
%struct.hv_ring_buffer_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmpacket_descriptor* @hv_pkt_iter_first(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmpacket_descriptor*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.hv_ring_buffer_info*, align 8
  %5 = alloca %struct.vmpacket_descriptor*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %7 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %6, i32 0, i32 0
  store %struct.hv_ring_buffer_info* %7, %struct.hv_ring_buffer_info** %4, align 8
  %8 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %9 = call i32 @hv_pkt_iter_avail(%struct.hv_ring_buffer_info* %8)
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.vmpacket_descriptor* null, %struct.vmpacket_descriptor** %2, align 8
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %15 = call %struct.vmpacket_descriptor* @hv_get_ring_buffer(%struct.hv_ring_buffer_info* %14)
  %16 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %17 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %15, i64 %19
  store %struct.vmpacket_descriptor* %20, %struct.vmpacket_descriptor** %5, align 8
  %21 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %5, align 8
  %22 = icmp ne %struct.vmpacket_descriptor* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %13
  %24 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %5, align 8
  %25 = bitcast %struct.vmpacket_descriptor* %24 to i8*
  %26 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  %32 = call i32 @prefetch(i8* %31)
  br label %33

33:                                               ; preds = %23, %13
  %34 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %5, align 8
  store %struct.vmpacket_descriptor* %34, %struct.vmpacket_descriptor** %2, align 8
  br label %35

35:                                               ; preds = %33, %12
  %36 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %2, align 8
  ret %struct.vmpacket_descriptor* %36
}

declare dso_local i32 @hv_pkt_iter_avail(%struct.hv_ring_buffer_info*) #1

declare dso_local %struct.vmpacket_descriptor* @hv_get_ring_buffer(%struct.hv_ring_buffer_info*) #1

declare dso_local i32 @prefetch(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
