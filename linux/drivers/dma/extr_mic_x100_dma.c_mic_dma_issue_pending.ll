; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mic_dma_chan = type { i64, i64, i32 }

@MIC_DMA_REG_DHPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mic_dma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_dma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mic_dma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %4 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %5 = call %struct.mic_dma_chan* @to_mic_dma_chan(%struct.dma_chan* %4)
  store %struct.mic_dma_chan* %5, %struct.mic_dma_chan** %3, align 8
  %6 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %6, i32 0, i32 2
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = call i32 (...) @wmb()
  %24 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %25 = load i32, i32* @MIC_DMA_REG_DHPR, align 4
  %26 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @mic_dma_write_reg(%struct.mic_dma_chan* %24, i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %17, %16
  %31 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %31, i32 0, i32 2
  %33 = call i32 @spin_unlock(i32* %32)
  ret void
}

declare dso_local %struct.mic_dma_chan* @to_mic_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mic_dma_write_reg(%struct.mic_dma_chan*, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
