; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_sirfsoc_dma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_sirfsoc_dma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sirfsoc_dma = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sirfsoc_dma_chan = type { i32, i32 }
%struct.sirfsoc_dma_desc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@descs = common dso_local global i32 0, align 4
@SIRFSOC_DMA_DESCRIPTORS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Memory allocation error. Allocated only %u descriptors\0A\00", align 1
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@sirfsoc_dma_tx_submit = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @sirfsoc_dma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_dma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.sirfsoc_dma*, align 8
  %5 = alloca %struct.sirfsoc_dma_chan*, align 8
  %6 = alloca %struct.sirfsoc_dma_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %10 = call %struct.sirfsoc_dma* @dma_chan_to_sirfsoc_dma(%struct.dma_chan* %9)
  store %struct.sirfsoc_dma* %10, %struct.sirfsoc_dma** %4, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %12 = call %struct.sirfsoc_dma_chan* @dma_chan_to_sirfsoc_dma_chan(%struct.dma_chan* %11)
  store %struct.sirfsoc_dma_chan* %12, %struct.sirfsoc_dma_chan** %5, align 8
  %13 = load i32, i32* @descs, align 4
  %14 = call i32 @LIST_HEAD(i32 %13)
  %15 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %16 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm_runtime_get_sync(i32 %18)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %52, %1
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SIRFSOC_DMA_DESCRIPTORS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sirfsoc_dma_desc* @kzalloc(i32 12, i32 %25)
  store %struct.sirfsoc_dma_desc* %26, %struct.sirfsoc_dma_desc** %6, align 8
  %27 = load %struct.sirfsoc_dma_desc*, %struct.sirfsoc_dma_desc** %6, align 8
  %28 = icmp ne %struct.sirfsoc_dma_desc* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %4, align 8
  %31 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_notice(i32 %33, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %55

36:                                               ; preds = %24
  %37 = load %struct.sirfsoc_dma_desc*, %struct.sirfsoc_dma_desc** %6, align 8
  %38 = getelementptr inbounds %struct.sirfsoc_dma_desc, %struct.sirfsoc_dma_desc* %37, i32 0, i32 1
  %39 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %40 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__* %38, %struct.dma_chan* %39)
  %41 = load i32, i32* @DMA_CTRL_ACK, align 4
  %42 = load %struct.sirfsoc_dma_desc*, %struct.sirfsoc_dma_desc** %6, align 8
  %43 = getelementptr inbounds %struct.sirfsoc_dma_desc, %struct.sirfsoc_dma_desc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @sirfsoc_dma_tx_submit, align 4
  %46 = load %struct.sirfsoc_dma_desc*, %struct.sirfsoc_dma_desc** %6, align 8
  %47 = getelementptr inbounds %struct.sirfsoc_dma_desc, %struct.sirfsoc_dma_desc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.sirfsoc_dma_desc*, %struct.sirfsoc_dma_desc** %6, align 8
  %50 = getelementptr inbounds %struct.sirfsoc_dma_desc, %struct.sirfsoc_dma_desc* %49, i32 0, i32 0
  %51 = call i32 @list_add_tail(i32* %50, i32* @descs)
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %20

55:                                               ; preds = %29, %20
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %74

61:                                               ; preds = %55
  %62 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %5, align 8
  %63 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %62, i32 0, i32 0
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %5, align 8
  %67 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %66, i32 0, i32 1
  %68 = call i32 @list_splice_tail_init(i32* @descs, i32* %67)
  %69 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %5, align 8
  %70 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %69, i32 0, i32 0
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %61, %58
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.sirfsoc_dma* @dma_chan_to_sirfsoc_dma(%struct.dma_chan*) #1

declare dso_local %struct.sirfsoc_dma_chan* @dma_chan_to_sirfsoc_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.sirfsoc_dma_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_notice(i32, i8*, i32) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__*, %struct.dma_chan*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
