; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence.c_dma_fence_enable_sw_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence.c_dma_fence_enable_sw_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.dma_fence*)* }

@DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT = common dso_local global i32 0, align 4
@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_fence_enable_sw_signaling(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca i64, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %2, align 8
  %4 = load i32, i32* @DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, align 4
  %5 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %6 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %5, i32 0, i32 2
  %7 = call i32 @test_and_set_bit(i32 %4, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %11 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %12 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %11, i32 0, i32 2
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %9
  %16 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %17 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dma_fence*)*, i32 (%struct.dma_fence*)** %19, align 8
  %21 = icmp ne i32 (%struct.dma_fence*)* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %15
  %23 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %24 = call i32 @trace_dma_fence_enable_signal(%struct.dma_fence* %23)
  %25 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %26 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_lock_irqsave(i32 %27, i64 %28)
  %30 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %31 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.dma_fence*)*, i32 (%struct.dma_fence*)** %33, align 8
  %35 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %36 = call i32 %34(%struct.dma_fence* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %22
  %39 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %40 = call i32 @dma_fence_signal_locked(%struct.dma_fence* %39)
  br label %41

41:                                               ; preds = %38, %22
  %42 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %43 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %41, %15, %9, %1
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @trace_dma_fence_enable_signal(%struct.dma_fence*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @dma_fence_signal_locked(%struct.dma_fence*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
