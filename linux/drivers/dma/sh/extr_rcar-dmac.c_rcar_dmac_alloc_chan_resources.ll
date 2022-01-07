; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rcar_dmac_chan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @rcar_dmac_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_dmac_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.rcar_dmac_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = call %struct.rcar_dmac_chan* @to_rcar_dmac_chan(%struct.dma_chan* %6)
  store %struct.rcar_dmac_chan* %7, %struct.rcar_dmac_chan** %4, align 8
  %8 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %9 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %13 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @rcar_dmac_xfer_chunk_alloc(%struct.rcar_dmac_chan* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %40

24:                                               ; preds = %1
  %25 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @rcar_dmac_desc_alloc(%struct.rcar_dmac_chan* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %40

33:                                               ; preds = %24
  %34 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pm_runtime_get_sync(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %30, %21
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.rcar_dmac_chan* @to_rcar_dmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rcar_dmac_xfer_chunk_alloc(%struct.rcar_dmac_chan*, i32) #1

declare dso_local i32 @rcar_dmac_desc_alloc(%struct.rcar_dmac_chan*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
