; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_queue = type { %struct.sec_queue_ring_cmd }
%struct.sec_queue_ring_cmd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sec_queue_empty(%struct.sec_queue* %0) #0 {
  %2 = alloca %struct.sec_queue*, align 8
  %3 = alloca %struct.sec_queue_ring_cmd*, align 8
  store %struct.sec_queue* %0, %struct.sec_queue** %2, align 8
  %4 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %5 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %4, i32 0, i32 0
  store %struct.sec_queue_ring_cmd* %5, %struct.sec_queue_ring_cmd** %3, align 8
  %6 = load %struct.sec_queue_ring_cmd*, %struct.sec_queue_ring_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cmd* %6, i32 0, i32 0
  %8 = call i32 @atomic_read(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  ret i32 %11
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
