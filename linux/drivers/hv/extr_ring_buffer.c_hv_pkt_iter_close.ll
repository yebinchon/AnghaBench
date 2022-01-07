; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_pkt_iter_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_pkt_iter_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, %struct.hv_ring_buffer_info }
%struct.hv_ring_buffer_info = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_pkt_iter_close(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca %struct.hv_ring_buffer_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %9 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 1
  store %struct.hv_ring_buffer_info* %9, %struct.hv_ring_buffer_info** %3, align 8
  %10 = call i32 (...) @virt_rmb()
  %11 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %12 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %17 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %20 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 %18, i64* %22, align 8
  %23 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %24 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %67

31:                                               ; preds = %1
  %32 = call i32 (...) @virt_mb()
  %33 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %34 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @READ_ONCE(i32 %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %67

42:                                               ; preds = %31
  %43 = call i32 (...) @virt_rmb()
  %44 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %45 = call i64 @hv_get_bytes_to_write(%struct.hv_ring_buffer_info* %44)
  store i64 %45, i64* %4, align 8
  %46 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @hv_pkt_iter_bytes_read(%struct.hv_ring_buffer_info* %46, i64 %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %6, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load i64, i64* %5, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %67

55:                                               ; preds = %42
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %67

60:                                               ; preds = %55
  %61 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %62 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %66 = call i32 @vmbus_setevent(%struct.vmbus_channel* %65)
  br label %67

67:                                               ; preds = %60, %59, %54, %41, %30
  ret void
}

declare dso_local i32 @virt_rmb(...) #1

declare dso_local i32 @virt_mb(...) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @hv_get_bytes_to_write(%struct.hv_ring_buffer_info*) #1

declare dso_local i64 @hv_pkt_iter_bytes_read(%struct.hv_ring_buffer_info*, i64) #1

declare dso_local i32 @vmbus_setevent(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
