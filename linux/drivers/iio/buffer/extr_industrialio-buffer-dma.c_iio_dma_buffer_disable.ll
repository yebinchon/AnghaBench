; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dma.c_iio_dma_buffer_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { i32 }
%struct.iio_dev = type { i32 }
%struct.iio_dma_buffer_queue = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iio_dma_buffer_queue*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_dma_buffer_disable(%struct.iio_buffer* %0, %struct.iio_dev* %1) #0 {
  %3 = alloca %struct.iio_buffer*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_dma_buffer_queue*, align 8
  store %struct.iio_buffer* %0, %struct.iio_buffer** %3, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %4, align 8
  %6 = load %struct.iio_buffer*, %struct.iio_buffer** %3, align 8
  %7 = call %struct.iio_dma_buffer_queue* @iio_buffer_to_queue(%struct.iio_buffer* %6)
  store %struct.iio_dma_buffer_queue* %7, %struct.iio_dma_buffer_queue** %5, align 8
  %8 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %5, align 8
  %9 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %5, align 8
  %12 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %5, align 8
  %14 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %5, align 8
  %19 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.iio_dma_buffer_queue*)*, i32 (%struct.iio_dma_buffer_queue*)** %21, align 8
  %23 = icmp ne i32 (%struct.iio_dma_buffer_queue*)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %5, align 8
  %26 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.iio_dma_buffer_queue*)*, i32 (%struct.iio_dma_buffer_queue*)** %28, align 8
  %30 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %5, align 8
  %31 = call i32 %29(%struct.iio_dma_buffer_queue* %30)
  br label %32

32:                                               ; preds = %24, %17, %2
  %33 = load %struct.iio_dma_buffer_queue*, %struct.iio_dma_buffer_queue** %5, align 8
  %34 = getelementptr inbounds %struct.iio_dma_buffer_queue, %struct.iio_dma_buffer_queue* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  ret i32 0
}

declare dso_local %struct.iio_dma_buffer_queue* @iio_buffer_to_queue(%struct.iio_buffer*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
