; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_dma_pl330_rqcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_dma_pl330_rqcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pl330_desc = type { i32, %struct.dma_pl330_chan* }
%struct.dma_pl330_chan = type { i32, i32 }

@DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_pl330_desc*, i32)* @dma_pl330_rqcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_pl330_rqcb(%struct.dma_pl330_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_pl330_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_pl330_chan*, align 8
  %6 = alloca i64, align 8
  store %struct.dma_pl330_desc* %0, %struct.dma_pl330_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %3, align 8
  %8 = icmp ne %struct.dma_pl330_desc* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %3, align 8
  %12 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %11, i32 0, i32 1
  %13 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %12, align 8
  store %struct.dma_pl330_chan* %13, %struct.dma_pl330_chan** %5, align 8
  %14 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %5, align 8
  %15 = icmp ne %struct.dma_pl330_chan* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %32

17:                                               ; preds = %10
  %18 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %5, align 8
  %19 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %18, i32 0, i32 1
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* @DONE, align 4
  %23 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %3, align 8
  %24 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %5, align 8
  %26 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %25, i32 0, i32 1
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %5, align 8
  %30 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %29, i32 0, i32 0
  %31 = call i32 @tasklet_schedule(i32* %30)
  br label %32

32:                                               ; preds = %17, %16, %9
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
