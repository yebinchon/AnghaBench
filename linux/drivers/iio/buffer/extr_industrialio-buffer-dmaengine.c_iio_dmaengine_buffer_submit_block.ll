; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dmaengine.c_iio_dmaengine_buffer_submit_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dmaengine.c_iio_dmaengine_buffer_submit_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dma_buffer_queue = type { i32 }
%struct.iio_dma_buffer_block = type { i32, i32, i32, i32 }
%struct.dmaengine_buffer = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.iio_dma_buffer_block*, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iio_dmaengine_buffer_block_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_block*)* @iio_dmaengine_buffer_submit_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_dmaengine_buffer_submit_block(%struct.iio_dma_buffer_queue* %0, %struct.iio_dma_buffer_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dma_buffer_queue*, align 8
  %5 = alloca %struct.iio_dma_buffer_block*, align 8
  %6 = alloca %struct.dmaengine_buffer*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dma_buffer_queue* %0, %struct.iio_dma_buffer_queue** %4, align 8
  store %struct.iio_dma_buffer_block* %1, %struct.iio_dma_buffer_block** %5, align 8
  %9 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %4, align 8
  %10 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %9, i32 0, i32 0
  %11 = call %struct.dmaengine_buffer* @iio_buffer_to_dmaengine_buffer(i32* %10)
  store %struct.dmaengine_buffer* %11, %struct.dmaengine_buffer** %6, align 8
  %12 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %5, align 8
  %13 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @min(i32 %14, i32 %17)
  %19 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %5, align 8
  %20 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %5, align 8
  %22 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rounddown(i32 %23, i32 %26)
  %28 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %5, align 8
  %29 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %5, align 8
  %34 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %5, align 8
  %37 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %40 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %41 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32 %32, i32 %35, i32 %38, i32 %39, i32 %40)
  store %struct.dma_async_tx_descriptor* %41, %struct.dma_async_tx_descriptor** %7, align 8
  %42 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %43 = icmp ne %struct.dma_async_tx_descriptor* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %80

47:                                               ; preds = %2
  %48 = load i32, i32* @iio_dmaengine_buffer_block_done, align 4
  %49 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %50 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %5, align 8
  %52 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %53 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %52, i32 0, i32 0
  store %struct.iio_dma_buffer_block* %51, %struct.iio_dma_buffer_block** %53, align 8
  %54 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %55 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @dma_submit_error(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dma_submit_error(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %80

62:                                               ; preds = %47
  %63 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @spin_lock_irq(i32* %65)
  %67 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %5, align 8
  %68 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %67, i32 0, i32 0
  %69 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %70 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %69, i32 0, i32 2
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  %72 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %73 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock_irq(i32* %74)
  %76 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %77 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dma_async_issue_pending(i32 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %62, %59, %44
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.dmaengine_buffer* @iio_buffer_to_dmaengine_buffer(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
