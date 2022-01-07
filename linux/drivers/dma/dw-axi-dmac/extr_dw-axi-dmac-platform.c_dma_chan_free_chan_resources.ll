; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.axi_dma_chan = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s is non-idle!\0A\00", align 1
@DWAXIDMAC_IRQ_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: free resources, descriptor still allocated: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @dma_chan_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_chan_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.axi_dma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %4 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %5 = call %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan* %4)
  store %struct.axi_dma_chan* %5, %struct.axi_dma_chan** %3, align 8
  %6 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %7 = call i64 @axi_chan_is_hw_enable(%struct.axi_dma_chan* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %11 = call i32 @dchan2dev(%struct.dma_chan* %10)
  %12 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %13 = call i32 @axi_chan_name(%struct.axi_dma_chan* %12)
  %14 = call i32 @dev_err(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %17 = call i32 @axi_chan_disable(%struct.axi_dma_chan* %16)
  %18 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %19 = load i32, i32* @DWAXIDMAC_IRQ_ALL, align 4
  %20 = call i32 @axi_chan_irq_disable(%struct.axi_dma_chan* %18, i32 %19)
  %21 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %21, i32 0, i32 2
  %23 = call i32 @vchan_free_chan_resources(i32* %22)
  %24 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %25 = call i32 @dchan2dev(%struct.dma_chan* %24)
  %26 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %27 = call i32 @axi_chan_name(%struct.axi_dma_chan* %26)
  %28 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %28, i32 0, i32 1
  %30 = call i32 @atomic_read(i32* %29)
  %31 = call i32 @dev_vdbg(i32 %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pm_runtime_put(i32 %36)
  ret void
}

declare dso_local %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan*) #1

declare dso_local i64 @axi_chan_is_hw_enable(%struct.axi_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dchan2dev(%struct.dma_chan*) #1

declare dso_local i32 @axi_chan_name(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_chan_disable(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_chan_irq_disable(%struct.axi_dma_chan*, i32) #1

declare dso_local i32 @vchan_free_chan_resources(i32*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
