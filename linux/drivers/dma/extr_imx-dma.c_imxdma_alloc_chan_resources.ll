; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.imx_dma_data* }
%struct.imx_dma_data = type { i32 }
%struct.imxdma_channel = type { i64, i32, i32 }
%struct.imxdma_desc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IMXDMA_MAX_CHAN_DESCRIPTORS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@imxdma_tx_submit = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @imxdma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxdma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.imxdma_channel*, align 8
  %5 = alloca %struct.imx_dma_data*, align 8
  %6 = alloca %struct.imxdma_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.imxdma_channel* @to_imxdma_chan(%struct.dma_chan* %7)
  store %struct.imxdma_channel* %8, %struct.imxdma_channel** %4, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 0
  %11 = load %struct.imx_dma_data*, %struct.imx_dma_data** %10, align 8
  store %struct.imx_dma_data* %11, %struct.imx_dma_data** %5, align 8
  %12 = load %struct.imx_dma_data*, %struct.imx_dma_data** %5, align 8
  %13 = icmp ne %struct.imx_dma_data* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.imx_dma_data*, %struct.imx_dma_data** %5, align 8
  %16 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.imxdma_channel*, %struct.imxdma_channel** %4, align 8
  %19 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %14, %1
  br label %21

21:                                               ; preds = %33, %20
  %22 = load %struct.imxdma_channel*, %struct.imxdma_channel** %4, align 8
  %23 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IMXDMA_MAX_CHAN_DESCRIPTORS, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %21
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.imxdma_desc* @kzalloc(i32 16, i32 %28)
  store %struct.imxdma_desc* %29, %struct.imxdma_desc** %6, align 8
  %30 = load %struct.imxdma_desc*, %struct.imxdma_desc** %6, align 8
  %31 = icmp ne %struct.imxdma_desc* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %61

33:                                               ; preds = %27
  %34 = load %struct.imxdma_desc*, %struct.imxdma_desc** %6, align 8
  %35 = getelementptr inbounds %struct.imxdma_desc, %struct.imxdma_desc* %34, i32 0, i32 2
  %36 = call i32 @memset(%struct.TYPE_3__* %35, i32 0, i32 4)
  %37 = load %struct.imxdma_desc*, %struct.imxdma_desc** %6, align 8
  %38 = getelementptr inbounds %struct.imxdma_desc, %struct.imxdma_desc* %37, i32 0, i32 2
  %39 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %40 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_3__* %38, %struct.dma_chan* %39)
  %41 = load i32, i32* @imxdma_tx_submit, align 4
  %42 = load %struct.imxdma_desc*, %struct.imxdma_desc** %6, align 8
  %43 = getelementptr inbounds %struct.imxdma_desc, %struct.imxdma_desc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @DMA_CTRL_ACK, align 4
  %46 = load %struct.imxdma_desc*, %struct.imxdma_desc** %6, align 8
  %47 = getelementptr inbounds %struct.imxdma_desc, %struct.imxdma_desc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @DMA_COMPLETE, align 4
  %50 = load %struct.imxdma_desc*, %struct.imxdma_desc** %6, align 8
  %51 = getelementptr inbounds %struct.imxdma_desc, %struct.imxdma_desc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.imxdma_desc*, %struct.imxdma_desc** %6, align 8
  %53 = getelementptr inbounds %struct.imxdma_desc, %struct.imxdma_desc* %52, i32 0, i32 0
  %54 = load %struct.imxdma_channel*, %struct.imxdma_channel** %4, align 8
  %55 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %54, i32 0, i32 1
  %56 = call i32 @list_add_tail(i32* %53, i32* %55)
  %57 = load %struct.imxdma_channel*, %struct.imxdma_channel** %4, align 8
  %58 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %21

61:                                               ; preds = %32, %21
  %62 = load %struct.imxdma_channel*, %struct.imxdma_channel** %4, align 8
  %63 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %74

69:                                               ; preds = %61
  %70 = load %struct.imxdma_channel*, %struct.imxdma_channel** %4, align 8
  %71 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.imxdma_channel* @to_imxdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.imxdma_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_3__*, %struct.dma_chan*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
