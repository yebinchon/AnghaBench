; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_seqno-fence.c_seqno_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_seqno-fence.c_seqno_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.seqno_fence = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.dma_fence*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_fence*)* @seqno_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seqno_release(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.seqno_fence*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %2, align 8
  %4 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %5 = call %struct.seqno_fence* @to_seqno_fence(%struct.dma_fence* %4)
  store %struct.seqno_fence* %5, %struct.seqno_fence** %3, align 8
  %6 = load %struct.seqno_fence*, %struct.seqno_fence** %3, align 8
  %7 = getelementptr inbounds %struct.seqno_fence, %struct.seqno_fence* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dma_buf_put(i32 %8)
  %10 = load %struct.seqno_fence*, %struct.seqno_fence** %3, align 8
  %11 = getelementptr inbounds %struct.seqno_fence, %struct.seqno_fence* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.dma_fence*)*, i32 (%struct.dma_fence*)** %13, align 8
  %15 = icmp ne i32 (%struct.dma_fence*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.seqno_fence*, %struct.seqno_fence** %3, align 8
  %18 = getelementptr inbounds %struct.seqno_fence, %struct.seqno_fence* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dma_fence*)*, i32 (%struct.dma_fence*)** %20, align 8
  %22 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %23 = call i32 %21(%struct.dma_fence* %22)
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.seqno_fence*, %struct.seqno_fence** %3, align 8
  %26 = getelementptr inbounds %struct.seqno_fence, %struct.seqno_fence* %25, i32 0, i32 0
  %27 = call i32 @dma_fence_free(i32* %26)
  br label %28

28:                                               ; preds = %24, %16
  ret void
}

declare dso_local %struct.seqno_fence* @to_seqno_fence(%struct.dma_fence*) #1

declare dso_local i32 @dma_buf_put(i32) #1

declare dso_local i32 @dma_fence_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
