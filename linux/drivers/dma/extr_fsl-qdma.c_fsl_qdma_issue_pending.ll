; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.fsl_qdma_chan = type { %struct.TYPE_2__, %struct.fsl_qdma_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.fsl_qdma_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @fsl_qdma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_qdma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fsl_qdma_chan*, align 8
  %5 = alloca %struct.fsl_qdma_queue*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.fsl_qdma_chan* @to_fsl_qdma_chan(%struct.dma_chan* %6)
  store %struct.fsl_qdma_chan* %7, %struct.fsl_qdma_chan** %4, align 8
  %8 = load %struct.fsl_qdma_chan*, %struct.fsl_qdma_chan** %4, align 8
  %9 = getelementptr inbounds %struct.fsl_qdma_chan, %struct.fsl_qdma_chan* %8, i32 0, i32 1
  %10 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %9, align 8
  store %struct.fsl_qdma_queue* %10, %struct.fsl_qdma_queue** %5, align 8
  %11 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %5, align 8
  %12 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.fsl_qdma_chan*, %struct.fsl_qdma_chan** %4, align 8
  %16 = getelementptr inbounds %struct.fsl_qdma_chan, %struct.fsl_qdma_chan* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.fsl_qdma_chan*, %struct.fsl_qdma_chan** %4, align 8
  %20 = getelementptr inbounds %struct.fsl_qdma_chan, %struct.fsl_qdma_chan* %19, i32 0, i32 0
  %21 = call i64 @vchan_issue_pending(%struct.TYPE_2__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.fsl_qdma_chan*, %struct.fsl_qdma_chan** %4, align 8
  %25 = call i32 @fsl_qdma_enqueue_desc(%struct.fsl_qdma_chan* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.fsl_qdma_chan*, %struct.fsl_qdma_chan** %4, align 8
  %28 = getelementptr inbounds %struct.fsl_qdma_chan, %struct.fsl_qdma_chan* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %5, align 8
  %32 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local %struct.fsl_qdma_chan* @to_fsl_qdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_2__*) #1

declare dso_local i32 @fsl_qdma_enqueue_desc(%struct.fsl_qdma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
