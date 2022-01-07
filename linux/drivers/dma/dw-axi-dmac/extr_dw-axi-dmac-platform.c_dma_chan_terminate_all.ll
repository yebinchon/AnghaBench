; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.axi_dma_chan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"terminated: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @dma_chan_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_chan_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.axi_dma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan* %5)
  store %struct.axi_dma_chan* %6, %struct.axi_dma_chan** %3, align 8
  %7 = load i32, i32* @head, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %15 = call i32 @axi_chan_disable(%struct.axi_dma_chan* %14)
  %16 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %16, i32 0, i32 0
  %18 = call i32 @vchan_get_all_descriptors(%struct.TYPE_3__* %17, i32* @head)
  %19 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %20 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %19, i32 0, i32 0
  %21 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_3__* %20, i32* @head)
  %22 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %28 = call i32 @dchan2dev(%struct.dma_chan* %27)
  %29 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %30 = call i32 @axi_chan_name(%struct.axi_dma_chan* %29)
  %31 = call i32 @dev_vdbg(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %30)
  ret i32 0
}

declare dso_local %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @axi_chan_disable(%struct.axi_dma_chan*) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @dchan2dev(%struct.dma_chan*) #1

declare dso_local i32 @axi_chan_name(%struct.axi_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
