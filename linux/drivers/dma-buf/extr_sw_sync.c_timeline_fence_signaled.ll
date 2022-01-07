; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sw_sync.c_timeline_fence_signaled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sw_sync.c_timeline_fence_signaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32, i32 }
%struct.sync_timeline = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_fence*)* @timeline_fence_signaled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timeline_fence_signaled(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.sync_timeline*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %2, align 8
  %4 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %5 = call %struct.sync_timeline* @dma_fence_parent(%struct.dma_fence* %4)
  store %struct.sync_timeline* %5, %struct.sync_timeline** %3, align 8
  %6 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %7 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.sync_timeline*, %struct.sync_timeline** %3, align 8
  %10 = getelementptr inbounds %struct.sync_timeline, %struct.sync_timeline* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %13 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__dma_fence_is_later(i32 %8, i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local %struct.sync_timeline* @dma_fence_parent(%struct.dma_fence*) #1

declare dso_local i32 @__dma_fence_is_later(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
