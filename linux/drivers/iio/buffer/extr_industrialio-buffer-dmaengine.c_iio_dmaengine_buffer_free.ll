; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dmaengine.c_iio_dmaengine_buffer_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dmaengine.c_iio_dmaengine_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { i32 }
%struct.dmaengine_buffer = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_dmaengine_buffer_free(%struct.iio_buffer* %0) #0 {
  %2 = alloca %struct.iio_buffer*, align 8
  %3 = alloca %struct.dmaengine_buffer*, align 8
  store %struct.iio_buffer* %0, %struct.iio_buffer** %2, align 8
  %4 = load %struct.iio_buffer*, %struct.iio_buffer** %2, align 8
  %5 = call %struct.dmaengine_buffer* @iio_buffer_to_dmaengine_buffer(%struct.iio_buffer* %4)
  store %struct.dmaengine_buffer* %5, %struct.dmaengine_buffer** %3, align 8
  %6 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %6, i32 0, i32 1
  %8 = call i32 @iio_dma_buffer_exit(i32* %7)
  %9 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dma_release_channel(i32 %11)
  %13 = load %struct.iio_buffer*, %struct.iio_buffer** %2, align 8
  %14 = call i32 @iio_buffer_put(%struct.iio_buffer* %13)
  ret void
}

declare dso_local %struct.dmaengine_buffer* @iio_buffer_to_dmaengine_buffer(%struct.iio_buffer*) #1

declare dso_local i32 @iio_dma_buffer_exit(i32*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @iio_buffer_put(%struct.iio_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
