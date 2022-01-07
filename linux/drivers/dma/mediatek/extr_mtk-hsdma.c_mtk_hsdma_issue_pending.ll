; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_hsdma_device = type { i32 }
%struct.mtk_hsdma_vchan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mtk_hsdma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mtk_hsdma_device*, align 8
  %4 = alloca %struct.mtk_hsdma_vchan*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.mtk_hsdma_device* @to_hsdma_dev(%struct.dma_chan* %6)
  store %struct.mtk_hsdma_device* %7, %struct.mtk_hsdma_device** %3, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %9 = call %struct.mtk_hsdma_vchan* @to_hsdma_vchan(%struct.dma_chan* %8)
  store %struct.mtk_hsdma_vchan* %9, %struct.mtk_hsdma_vchan** %4, align 8
  %10 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %15, i32 0, i32 0
  %17 = call i64 @vchan_issue_pending(%struct.TYPE_2__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %21 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %4, align 8
  %22 = call i32 @mtk_hsdma_issue_vchan_pending(%struct.mtk_hsdma_device* %20, %struct.mtk_hsdma_vchan* %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret void
}

declare dso_local %struct.mtk_hsdma_device* @to_hsdma_dev(%struct.dma_chan*) #1

declare dso_local %struct.mtk_hsdma_vchan* @to_hsdma_vchan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_2__*) #1

declare dso_local i32 @mtk_hsdma_issue_vchan_pending(%struct.mtk_hsdma_device*, %struct.mtk_hsdma_vchan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
