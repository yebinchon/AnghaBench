; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_cqdma_vchan = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mtk_cqdma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_cqdma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mtk_cqdma_vchan*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.mtk_cqdma_vchan* @to_cqdma_vchan(%struct.dma_chan* %6)
  store %struct.mtk_cqdma_vchan* %7, %struct.mtk_cqdma_vchan** %3, align 8
  %8 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %19, i32 0, i32 1
  %21 = call i64 @vchan_issue_pending(%struct.TYPE_4__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %25 = call i32 @mtk_cqdma_issue_vchan_pending(%struct.mtk_cqdma_vchan* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local %struct.mtk_cqdma_vchan* @to_cqdma_vchan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_4__*) #1

declare dso_local i32 @mtk_cqdma_issue_vchan_pending(%struct.mtk_cqdma_vchan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
