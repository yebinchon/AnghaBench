; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_seqno-fence.c_seqno_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_seqno-fence.c_seqno_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.seqno_fence = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dma_fence*, i32, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dma_fence*, i32, i64)* @seqno_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @seqno_wait(%struct.dma_fence* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.seqno_fence*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %9 = call %struct.seqno_fence* @to_seqno_fence(%struct.dma_fence* %8)
  store %struct.seqno_fence* %9, %struct.seqno_fence** %7, align 8
  %10 = load %struct.seqno_fence*, %struct.seqno_fence** %7, align 8
  %11 = getelementptr inbounds %struct.seqno_fence, %struct.seqno_fence* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64 (%struct.dma_fence*, i32, i64)*, i64 (%struct.dma_fence*, i32, i64)** %13, align 8
  %15 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i64 %14(%struct.dma_fence* %15, i32 %16, i64 %17)
  ret i64 %18
}

declare dso_local %struct.seqno_fence* @to_seqno_fence(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
