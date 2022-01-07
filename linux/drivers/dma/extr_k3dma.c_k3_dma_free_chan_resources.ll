; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.k3_dma_chan = type { i64, i32, i32 }
%struct.k3_dma_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @k3_dma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k3_dma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.k3_dma_chan*, align 8
  %4 = alloca %struct.k3_dma_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.k3_dma_chan* @to_k3_chan(%struct.dma_chan* %6)
  store %struct.k3_dma_chan* %7, %struct.k3_dma_chan** %3, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %9 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.k3_dma_dev* @to_k3_dma(i32 %10)
  store %struct.k3_dma_dev* %11, %struct.k3_dma_dev** %4, align 8
  %12 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %13 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %16, i32 0, i32 2
  %18 = call i32 @list_del_init(i32* %17)
  %19 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %20 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %24 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %23, i32 0, i32 1
  %25 = call i32 @vchan_free_chan_resources(i32* %24)
  %26 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  ret void
}

declare dso_local %struct.k3_dma_chan* @to_k3_chan(%struct.dma_chan*) #1

declare dso_local %struct.k3_dma_dev* @to_k3_dma(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_free_chan_resources(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
