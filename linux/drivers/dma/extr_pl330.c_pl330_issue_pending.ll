; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_pl330_chan = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @pl330_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl330_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.dma_pl330_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan* %5)
  store %struct.dma_pl330_chan* %6, %struct.dma_pl330_chan** %3, align 8
  %7 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %8 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %12 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %11, i32 0, i32 2
  %13 = call i64 @list_empty(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %17 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %16, i32 0, i32 3
  %18 = call i64 @list_empty(i32* %17)
  %19 = call i32 @WARN_ON(i64 %18)
  %20 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %21 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %23 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pm_runtime_get_sync(i32 %27)
  br label %29

29:                                               ; preds = %15, %1
  %30 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %31 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %30, i32 0, i32 3
  %32 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %33 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %32, i32 0, i32 2
  %34 = call i32 @list_splice_tail_init(i32* %31, i32* %33)
  %35 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %36 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %35, i32 0, i32 1
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %40 = ptrtoint %struct.dma_pl330_chan* %39 to i64
  %41 = call i32 @pl330_tasklet(i64 %40)
  ret void
}

declare dso_local %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pl330_tasklet(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
