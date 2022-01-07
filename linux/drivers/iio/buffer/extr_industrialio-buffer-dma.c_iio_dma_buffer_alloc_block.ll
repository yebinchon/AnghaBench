; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_alloc_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_alloc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dma_buffer_block = type { i64, i32, i32, %struct.iio_dma_buffer_queue*, i32, i32, i32 }
%struct.iio_dma_buffer_queue = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IIO_BLOCK_STATE_DEQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_dma_buffer_block* (%struct.iio_dma_buffer_queue*, i64)* @iio_dma_buffer_alloc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_dma_buffer_block* @iio_dma_buffer_alloc_block(%struct.iio_dma_buffer_queue* %0, i64 %1) #0 {
  %3 = alloca %struct.iio_dma_buffer_block*, align 8
  %4 = alloca %struct.iio_dma_buffer_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iio_dma_buffer_block*, align 8
  store %struct.iio_dma_buffer_queue* %0, %struct.iio_dma_buffer_queue** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.iio_dma_buffer_block* @kzalloc(i32 40, i32 %7)
  store %struct.iio_dma_buffer_block* %8, %struct.iio_dma_buffer_block** %6, align 8
  %9 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %6, align 8
  %10 = icmp ne %struct.iio_dma_buffer_block* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.iio_dma_buffer_block* null, %struct.iio_dma_buffer_block** %3, align 8
  br label %51

12:                                               ; preds = %2
  %13 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %4, align 8
  %14 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @PAGE_ALIGN(i64 %16)
  %18 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %6, align 8
  %19 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %18, i32 0, i32 6
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @dma_alloc_coherent(i32 %15, i32 %17, i32* %19, i32 %20)
  %22 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %6, align 8
  %23 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %6, align 8
  %25 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %12
  %29 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %6, align 8
  %30 = call i32 @kfree(%struct.iio_dma_buffer_block* %29)
  store %struct.iio_dma_buffer_block* null, %struct.iio_dma_buffer_block** %3, align 8
  br label %51

31:                                               ; preds = %12
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %6, align 8
  %34 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @IIO_BLOCK_STATE_DEQUEUED, align 4
  %36 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %6, align 8
  %37 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %4, align 8
  %39 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %6, align 8
  %40 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %39, i32 0, i32 3
  store %struct.iio_dma_buffer_queue* %38, %struct.iio_dma_buffer_queue** %40, align 8
  %41 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %6, align 8
  %42 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %41, i32 0, i32 2
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %6, align 8
  %45 = getelementptr inbounds %struct.iio_dma_buffer_block, %struct.iio_dma_buffer_block* %44, i32 0, i32 1
  %46 = call i32 @kref_init(i32* %45)
  %47 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %4, align 8
  %48 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %47, i32 0, i32 0
  %49 = call i32 @iio_buffer_get(i32* %48)
  %50 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %6, align 8
  store %struct.iio_dma_buffer_block* %50, %struct.iio_dma_buffer_block** %3, align 8
  br label %51

51:                                               ; preds = %31, %28, %11
  %52 = load %struct.iio_dma_buffer_block*, %struct.iio_dma_buffer_block** %3, align 8
  ret %struct.iio_dma_buffer_block* %52
}

declare dso_local %struct.iio_dma_buffer_block* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i32 @kfree(%struct.iio_dma_buffer_block*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @iio_buffer_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
