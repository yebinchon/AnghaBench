; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence.c_dma_fence_default_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence.c_dma_fence_default_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dma_fence*)* }
%struct.default_wait_cb = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT = common dso_local global i32 0, align 4
@dma_fence_default_wait_cb = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dma_fence_default_wait(%struct.dma_fence* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.default_wait_cb, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dma_fence* %0, %struct.dma_fence** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i64 [ %15, %14 ], [ 1, %16 ]
  store i64 %18, i64* %10, align 8
  %19 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %20 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %21 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %4, align 8
  br label %157

26:                                               ; preds = %17
  %27 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %28 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32 %29, i64 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i32, i32* @current, align 4
  %36 = call i64 @signal_pending(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* @ERESTARTSYS, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %10, align 8
  br label %150

41:                                               ; preds = %34, %26
  %42 = load i32, i32* @DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, align 4
  %43 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %44 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %43, i32 0, i32 1
  %45 = call i32 @test_and_set_bit(i32 %42, i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %47 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %48 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %47, i32 0, i32 1
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %150

52:                                               ; preds = %41
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %52
  %56 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %57 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.dma_fence*)*, i32 (%struct.dma_fence*)** %59, align 8
  %61 = icmp ne i32 (%struct.dma_fence*)* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %55
  %63 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %64 = call i32 @trace_dma_fence_enable_signal(%struct.dma_fence* %63)
  %65 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %66 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32 (%struct.dma_fence*)*, i32 (%struct.dma_fence*)** %68, align 8
  %70 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %71 = call i32 %69(%struct.dma_fence* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %75 = call i32 @dma_fence_signal_locked(%struct.dma_fence* %74)
  br label %150

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %55, %52
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store i64 0, i64* %10, align 8
  br label %150

81:                                               ; preds = %77
  %82 = load i32, i32* @dma_fence_default_wait_cb, align 4
  %83 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %8, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @current, align 4
  %86 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %8, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %8, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %90 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %89, i32 0, i32 2
  %91 = call i32 @list_add(i32* %88, i32* %90)
  br label %92

92:                                               ; preds = %137, %81
  %93 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %94 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %95 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %94, i32 0, i32 1
  %96 = call i64 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load i64, i64* %10, align 8
  %100 = icmp sgt i64 %99, 0
  br label %101

101:                                              ; preds = %98, %92
  %102 = phi i1 [ false, %92 ], [ %100, %98 ]
  br i1 %102, label %103, label %138

103:                                              ; preds = %101
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %108 = call i32 @__set_current_state(i32 %107)
  br label %112

109:                                              ; preds = %103
  %110 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %111 = call i32 @__set_current_state(i32 %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %114 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32 %115, i64 %116)
  %118 = load i64, i64* %10, align 8
  %119 = call i64 @schedule_timeout(i64 %118)
  store i64 %119, i64* %10, align 8
  %120 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %121 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @spin_lock_irqsave(i32 %122, i64 %123)
  %125 = load i64, i64* %10, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %112
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i32, i32* @current, align 4
  %132 = call i64 @signal_pending(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i64, i64* @ERESTARTSYS, align 8
  %136 = sub nsw i64 0, %135
  store i64 %136, i64* %10, align 8
  br label %137

137:                                              ; preds = %134, %130, %127, %112
  br label %92

138:                                              ; preds = %101
  %139 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %8, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = call i32 @list_empty(i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.default_wait_cb, %struct.default_wait_cb* %8, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = call i32 @list_del(i32* %145)
  br label %147

147:                                              ; preds = %143, %138
  %148 = load i32, i32* @TASK_RUNNING, align 4
  %149 = call i32 @__set_current_state(i32 %148)
  br label %150

150:                                              ; preds = %147, %80, %73, %51, %38
  %151 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %152 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32 %153, i64 %154)
  %156 = load i64, i64* %10, align 8
  store i64 %156, i64* %4, align 8
  br label %157

157:                                              ; preds = %150, %24
  %158 = load i64, i64* %4, align 8
  ret i64 %158
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @trace_dma_fence_enable_signal(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_signal_locked(%struct.dma_fence*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
