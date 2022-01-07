; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_free_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_free_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timb_dma_desc = type { %struct.timb_dma_desc*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Freeing desc: %p\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timb_dma_desc*)* @td_free_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @td_free_desc(%struct.timb_dma_desc* %0) #0 {
  %2 = alloca %struct.timb_dma_desc*, align 8
  store %struct.timb_dma_desc* %0, %struct.timb_dma_desc** %2, align 8
  %3 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %2, align 8
  %4 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @chan2dev(i32 %6)
  %8 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %2, align 8
  %9 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.timb_dma_desc* %8)
  %10 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %2, align 8
  %11 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @chan2dmadev(i32 %13)
  %15 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %2, align 8
  %16 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %2, align 8
  %20 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = call i32 @dma_unmap_single(i32 %14, i32 %18, i32 %21, i32 %22)
  %24 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %2, align 8
  %25 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %24, i32 0, i32 0
  %26 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %25, align 8
  %27 = call i32 @kfree(%struct.timb_dma_desc* %26)
  %28 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %2, align 8
  %29 = call i32 @kfree(%struct.timb_dma_desc* %28)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, %struct.timb_dma_desc*) #1

declare dso_local i32 @chan2dev(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @chan2dmadev(i32) #1

declare dso_local i32 @kfree(%struct.timb_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
