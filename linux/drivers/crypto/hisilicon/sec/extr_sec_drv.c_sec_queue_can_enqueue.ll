; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_can_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_can_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_queue = type { %struct.sec_queue_ring_cmd }
%struct.sec_queue_ring_cmd = type { i32 }

@SEC_QUEUE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sec_queue_can_enqueue(%struct.sec_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.sec_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sec_queue_ring_cmd*, align 8
  store %struct.sec_queue* %0, %struct.sec_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %7 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %6, i32 0, i32 0
  store %struct.sec_queue_ring_cmd* %7, %struct.sec_queue_ring_cmd** %5, align 8
  %8 = load i32, i32* @SEC_QUEUE_LEN, align 4
  %9 = load %struct.sec_queue_ring_cmd*, %struct.sec_queue_ring_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cmd* %9, i32 0, i32 0
  %11 = call i32 @atomic_read(i32* %10)
  %12 = sub nsw i32 %8, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %12, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
