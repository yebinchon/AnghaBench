; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dma_buffer_queue = type { i32, i64 }
%struct.iio_dma_buffer_block = type { i64, i32 }

@IIO_BLOCK_STATE_DEAD = common dso_local global i64 0, align 8
@IIO_BLOCK_STATE_QUEUED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_block*)* @iio_dma_buffer_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iio_dma_buffer_enqueue(%struct.iio_dma_buffer_queue* %0, %struct.iio_dma_buffer_block* %1) #0 {
  %3 = alloca %struct.iio_dma_buffer_queue*, align 8
  %4 = alloca %struct.iio_dma_buffer_block*, align 8
  store %struct.iio_dma_buffer_queue* %0, %struct.iio_dma_buffer_queue** %3, align 8
  store %struct.iio_dma_buffer_block* %1, %struct.iio_dma_buffer_block** %4, align 8
  %5 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %6 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IIO_BLOCK_STATE_DEAD, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %12 = call i32 @iio_buffer_block_put(%struct.iio_dma_buffer_block* %11)
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %15 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %20 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %21 = call i32 @iio_dma_buffer_submit_block(%struct.iio_dma_buffer_queue* %19, %struct.iio_dma_buffer_block* %20)
  br label %31

22:                                               ; preds = %13
  %23 = load i64, i64* @IIO_BLOCK_STATE_QUEUED, align 8
  %24 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %25 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %4, align 8
  %27 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %26, i32 0, i32 1
  %28 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %3, align 8
  %29 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %28, i32 0, i32 0
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  br label %31

31:                                               ; preds = %22, %18
  br label %32

32:                                               ; preds = %31, %10
  ret void
}

declare dso_local i32 @iio_buffer_block_put(%struct.iio_dma_buffer_block*) #1

declare dso_local i32 @iio_dma_buffer_submit_block(%struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_block*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
