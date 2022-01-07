; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_seqno-fence.c_seqno_signaled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_seqno-fence.c_seqno_signaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.seqno_fence = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dma_fence*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_fence*)* @seqno_signaled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seqno_signaled(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.seqno_fence*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %2, align 8
  %4 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %5 = call %struct.seqno_fence* @to_seqno_fence(%struct.dma_fence* %4)
  store %struct.seqno_fence* %5, %struct.seqno_fence** %3, align 8
  %6 = load %struct.seqno_fence*, %struct.seqno_fence** %3, align 8
  %7 = getelementptr inbounds %struct.seqno_fence, %struct.seqno_fence* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64 (%struct.dma_fence*)*, i64 (%struct.dma_fence*)** %9, align 8
  %11 = icmp ne i64 (%struct.dma_fence*)* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.seqno_fence*, %struct.seqno_fence** %3, align 8
  %14 = getelementptr inbounds %struct.seqno_fence, %struct.seqno_fence* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (%struct.dma_fence*)*, i64 (%struct.dma_fence*)** %16, align 8
  %18 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %19 = call i64 %17(%struct.dma_fence* %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %12, %1
  %22 = phi i1 [ false, %1 ], [ %20, %12 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local %struct.seqno_fence* @to_seqno_fence(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
