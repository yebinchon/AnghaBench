; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_submit_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_submit_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dma_buffer_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_block*)* }
%struct.iio_dma_buffer_block = type { i32 }

@IIO_BLOCK_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_block*)* @iio_dma_buffer_submit_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iio_dma_buffer_submit_block(%struct.iio_dma_buffer_queue* %0, %struct.iio_dma_buffer_block* %1) #0 {
  %3 = alloca %struct.iio_dma_buffer_queue*, align 8
  %4 = alloca %struct.iio_dma_buffer_block*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dma_buffer_queue* %0, %struct.iio_dma_buffer_queue** %3, align 8
  store %struct.iio_dma_buffer_block* %1, %struct.iio_dma_buffer_block** %4, align 8
  %6 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %7 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load i32, i32* @IIO_BLOCK_STATE_ACTIVE, align 4
  %13 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %14 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %16 = call i32 @iio_buffer_block_get(%struct.iio_dma_buffer_block* %15)
  %17 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %18 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_block*)*, i32 (%struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_block*)** %20, align 8
  %22 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %23 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %24 = call i32 %21(%struct.iio_dma_buffer_queue* %22, %struct.iio_dma_buffer_block* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %11
  %28 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %29 = call i32 @iio_buffer_block_put(%struct.iio_dma_buffer_block* %28)
  br label %30

30:                                               ; preds = %10, %27, %11
  ret void
}

declare dso_local i32 @iio_buffer_block_get(%struct.iio_dma_buffer_block*) #1

declare dso_local i32 @iio_buffer_block_put(%struct.iio_dma_buffer_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
