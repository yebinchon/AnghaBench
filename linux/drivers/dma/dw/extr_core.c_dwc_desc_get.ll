; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_desc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_desc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_desc = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.dw_dma_chan = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dw_dma = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@dwc_tx_submit = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dw_desc* (%struct.dw_dma_chan*)* @dwc_desc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dw_desc* @dwc_desc_get(%struct.dw_dma_chan* %0) #0 {
  %2 = alloca %struct.dw_desc*, align 8
  %3 = alloca %struct.dw_dma_chan*, align 8
  %4 = alloca %struct.dw_dma*, align 8
  %5 = alloca %struct.dw_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %3, align 8
  %7 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dw_dma* @to_dw_dma(i32 %10)
  store %struct.dw_dma* %11, %struct.dw_dma** %4, align 8
  %12 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %13 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.dw_desc* @dma_pool_zalloc(i32 %14, i32 %15, i32* %6)
  store %struct.dw_desc* %16, %struct.dw_desc** %5, align 8
  %17 = load %struct.dw_desc*, %struct.dw_desc** %5, align 8
  %18 = icmp ne %struct.dw_desc* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.dw_desc* null, %struct.dw_desc** %2, align 8
  br label %46

20:                                               ; preds = %1
  %21 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.dw_desc*, %struct.dw_desc** %5, align 8
  %26 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.dw_desc*, %struct.dw_desc** %5, align 8
  %29 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %28, i32 0, i32 0
  %30 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %30, i32 0, i32 0
  %32 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_3__* %29, %struct.TYPE_4__* %31)
  %33 = load i32, i32* @dwc_tx_submit, align 4
  %34 = load %struct.dw_desc*, %struct.dw_desc** %5, align 8
  %35 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @DMA_CTRL_ACK, align 4
  %38 = load %struct.dw_desc*, %struct.dw_desc** %5, align 8
  %39 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.dw_desc*, %struct.dw_desc** %5, align 8
  %43 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.dw_desc*, %struct.dw_desc** %5, align 8
  store %struct.dw_desc* %45, %struct.dw_desc** %2, align 8
  br label %46

46:                                               ; preds = %20, %19
  %47 = load %struct.dw_desc*, %struct.dw_desc** %2, align 8
  ret %struct.dw_desc* %47
}

declare dso_local %struct.dw_dma* @to_dw_dma(i32) #1

declare dso_local %struct.dw_desc* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
