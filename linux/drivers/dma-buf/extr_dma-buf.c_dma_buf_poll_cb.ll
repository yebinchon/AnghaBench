; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_poll_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_poll_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.dma_fence_cb = type { i32 }
%struct.dma_buf_poll_cb_t = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_fence*, %struct.dma_fence_cb*)* @dma_buf_poll_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_buf_poll_cb(%struct.dma_fence* %0, %struct.dma_fence_cb* %1) #0 {
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.dma_fence_cb*, align 8
  %5 = alloca %struct.dma_buf_poll_cb_t*, align 8
  %6 = alloca i64, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %3, align 8
  store %struct.dma_fence_cb* %1, %struct.dma_fence_cb** %4, align 8
  %7 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %4, align 8
  %8 = bitcast %struct.dma_fence_cb* %7 to %struct.dma_buf_poll_cb_t*
  store %struct.dma_buf_poll_cb_t* %8, %struct.dma_buf_poll_cb_t** %5, align 8
  %9 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %5, align 8
  %10 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %5, align 8
  %16 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %5, align 8
  %19 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @wake_up_locked_poll(%struct.TYPE_2__* %17, i64 %20)
  %22 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %5, align 8
  %23 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.dma_buf_poll_cb_t*, %struct.dma_buf_poll_cb_t** %5, align 8
  %25 = getelementptr inbounds %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_locked_poll(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
