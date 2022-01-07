; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_ep93xx_dma_desc_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_ep93xx_dma_desc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i32, i32 }
%struct.ep93xx_dma_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_dma_chan*, %struct.ep93xx_dma_desc*)* @ep93xx_dma_desc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_dma_desc_put(%struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_desc* %1) #0 {
  %3 = alloca %struct.ep93xx_dma_chan*, align 8
  %4 = alloca %struct.ep93xx_dma_desc*, align 8
  %5 = alloca i64, align 8
  store %struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_chan** %3, align 8
  store %struct.ep93xx_dma_desc* %1, %struct.ep93xx_dma_desc** %4, align 8
  %6 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %4, align 8
  %7 = icmp ne %struct.ep93xx_dma_desc* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %4, align 8
  %14 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %13, i32 0, i32 1
  %15 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %15, i32 0, i32 1
  %17 = call i32 @list_splice_init(i32* %14, i32* %16)
  %18 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %4, align 8
  %19 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %18, i32 0, i32 0
  %20 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %20, i32 0, i32 1
  %22 = call i32 @list_add(i32* %19, i32* %21)
  %23 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %24 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %8, %2
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
