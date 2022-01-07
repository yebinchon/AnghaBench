; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_mock_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_mock_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.wait_cb = type { i32, i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@mock_wakeup = common dso_local global i32 0, align 4
@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@ETIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dma_fence*, i32, i64)* @mock_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mock_wait(%struct.dma_fence* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wait_cb, align 4
  store %struct.dma_fence* %0, %struct.dma_fence** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %8, align 4
  %18 = getelementptr inbounds %struct.wait_cb, %struct.wait_cb* %9, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.wait_cb, %struct.wait_cb* %9, i32 0, i32 1
  %20 = load i32, i32* @current, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %22 = getelementptr inbounds %struct.wait_cb, %struct.wait_cb* %9, i32 0, i32 0
  %23 = load i32, i32* @mock_wakeup, align 4
  %24 = call i64 @dma_fence_add_callback(%struct.dma_fence* %21, i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %4, align 8
  br label %70

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @set_current_state(i32 %33)
  %35 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %36 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %37 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %36, i32 0, i32 0
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %50

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @current, align 4
  %44 = call i64 @signal_pending_state(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %50

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @schedule_timeout(i64 %48)
  store i64 %49, i64* %7, align 8
  br label %29

50:                                               ; preds = %46, %40, %29
  %51 = load i32, i32* @TASK_RUNNING, align 4
  %52 = call i32 @__set_current_state(i32 %51)
  %53 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %54 = getelementptr inbounds %struct.wait_cb, %struct.wait_cb* %9, i32 0, i32 0
  %55 = call i32 @dma_fence_remove_callback(%struct.dma_fence* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %4, align 8
  br label %70

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @current, align 4
  %62 = call i64 @signal_pending_state(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i64, i64* @ERESTARTSYS, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %4, align 8
  br label %70

67:                                               ; preds = %59
  %68 = load i64, i64* @ETIME, align 8
  %69 = sub nsw i64 0, %68
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %67, %64, %57, %26
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i64 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @signal_pending_state(i32, i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @dma_fence_remove_callback(%struct.dma_fence*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
