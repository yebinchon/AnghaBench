; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_alloc_init_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_alloc_init_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timb_dma_desc = type { i32, %struct.timb_dma_desc*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.timb_dma_chan = type { i32, %struct.dma_chan }
%struct.dma_chan = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TIMB_DMA_DESC_SIZE = common dso_local global i32 0, align 4
@td_tx_submit = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"DMA mapping error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.timb_dma_desc* (%struct.timb_dma_chan*)* @td_alloc_init_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.timb_dma_desc* @td_alloc_init_desc(%struct.timb_dma_chan* %0) #0 {
  %2 = alloca %struct.timb_dma_desc*, align 8
  %3 = alloca %struct.timb_dma_chan*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.timb_dma_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.timb_dma_chan* %0, %struct.timb_dma_chan** %3, align 8
  %7 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %7, i32 0, i32 1
  store %struct.dma_chan* %8, %struct.dma_chan** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 32, i32 %9)
  %11 = bitcast i8* %10 to %struct.timb_dma_desc*
  store %struct.timb_dma_desc* %11, %struct.timb_dma_desc** %5, align 8
  %12 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %13 = icmp ne %struct.timb_dma_desc* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %85

15:                                               ; preds = %1
  %16 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TIMB_DMA_DESC_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %22 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %24 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  %28 = bitcast i8* %27 to %struct.timb_dma_desc*
  %29 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %30 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %29, i32 0, i32 1
  store %struct.timb_dma_desc* %28, %struct.timb_dma_desc** %30, align 8
  %31 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %32 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %31, i32 0, i32 1
  %33 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %32, align 8
  %34 = icmp ne %struct.timb_dma_desc* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %15
  br label %78

36:                                               ; preds = %15
  %37 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %38 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %37, i32 0, i32 2
  %39 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %40 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__* %38, %struct.dma_chan* %39)
  %41 = load i32, i32* @td_tx_submit, align 4
  %42 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %43 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @DMA_CTRL_ACK, align 4
  %46 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %47 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %50 = call i32 @chan2dmadev(%struct.dma_chan* %49)
  %51 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %52 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %51, i32 0, i32 1
  %53 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %52, align 8
  %54 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %55 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @dma_map_single(i32 %50, %struct.timb_dma_desc* %53, i32 %56, i32 %57)
  %59 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %60 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %63 = call i32 @chan2dmadev(%struct.dma_chan* %62)
  %64 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %65 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_mapping_error(i32 %63, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %36
  %72 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %73 = call i32 @chan2dev(%struct.dma_chan* %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %78

76:                                               ; preds = %36
  %77 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  store %struct.timb_dma_desc* %77, %struct.timb_dma_desc** %2, align 8
  br label %86

78:                                               ; preds = %71, %35
  %79 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %80 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %79, i32 0, i32 1
  %81 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %80, align 8
  %82 = call i32 @kfree(%struct.timb_dma_desc* %81)
  %83 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %5, align 8
  %84 = call i32 @kfree(%struct.timb_dma_desc* %83)
  br label %85

85:                                               ; preds = %78, %14
  store %struct.timb_dma_desc* null, %struct.timb_dma_desc** %2, align 8
  br label %86

86:                                               ; preds = %85, %76
  %87 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %2, align 8
  ret %struct.timb_dma_desc* %87
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__*, %struct.dma_chan*) #1

declare dso_local i32 @dma_map_single(i32, %struct.timb_dma_desc*, i32, i32) #1

declare dso_local i32 @chan2dmadev(%struct.dma_chan*) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @kfree(%struct.timb_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
