; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c___i915_sw_fence_await_sw_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c___i915_sw_fence_await_sw_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sw_fence = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.i915_sw_fence*, i32 (%struct.TYPE_7__*, i32, i32, i32*)*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I915_SW_FENCE_FLAG_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_sw_fence*, %struct.i915_sw_fence*, %struct.TYPE_7__*, i32)* @__i915_sw_fence_await_sw_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i915_sw_fence_await_sw_fence(%struct.i915_sw_fence* %0, %struct.i915_sw_fence* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_sw_fence*, align 8
  %7 = alloca %struct.i915_sw_fence*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.i915_sw_fence* %0, %struct.i915_sw_fence** %6, align 8
  store %struct.i915_sw_fence* %1, %struct.i915_sw_fence** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %6, align 8
  %13 = call i32 @debug_fence_assert(%struct.i915_sw_fence* %12)
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @gfpflags_allow_blocking(i32 %14)
  %16 = call i32 @might_sleep_if(i32 %15)
  %17 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %7, align 8
  %18 = call i64 @i915_sw_fence_done(%struct.i915_sw_fence* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %6, align 8
  %22 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %7, align 8
  %23 = getelementptr inbounds %struct.i915_sw_fence, %struct.i915_sw_fence* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @i915_sw_fence_set_error_once(%struct.i915_sw_fence* %21, i32 %24)
  store i32 0, i32* %5, align 4
  br label %108

26:                                               ; preds = %4
  %27 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %7, align 8
  %28 = call i32 @debug_fence_assert(%struct.i915_sw_fence* %27)
  %29 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %6, align 8
  %30 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %7, align 8
  %31 = call i32 @i915_sw_fence_check_if_after(%struct.i915_sw_fence* %29, %struct.i915_sw_fence* %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %108

37:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %64, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.TYPE_7__* @kmalloc(i32 32, i32 %41)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %8, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @gfpflags_allow_blocking(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %108

52:                                               ; preds = %45
  %53 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %7, align 8
  %54 = call i32 @i915_sw_fence_wait(%struct.i915_sw_fence* %53)
  %55 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %6, align 8
  %56 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %7, align 8
  %57 = getelementptr inbounds %struct.i915_sw_fence, %struct.i915_sw_fence* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @i915_sw_fence_set_error_once(%struct.i915_sw_fence* %55, i32 %58)
  store i32 0, i32* %5, align 4
  br label %108

60:                                               ; preds = %40
  %61 = load i32, i32* @I915_SW_FENCE_FLAG_ALLOC, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %60, %37
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store i32 (%struct.TYPE_7__*, i32, i32, i32*)* @i915_sw_fence_wake, i32 (%struct.TYPE_7__*, i32, i32, i32*)** %72, align 8
  %73 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %6, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store %struct.i915_sw_fence* %73, %struct.i915_sw_fence** %75, align 8
  %76 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %6, align 8
  %77 = call i32 @i915_sw_fence_await(%struct.i915_sw_fence* %76)
  %78 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %7, align 8
  %79 = getelementptr inbounds %struct.i915_sw_fence, %struct.i915_sw_fence* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %7, align 8
  %84 = call i64 @i915_sw_fence_done(%struct.i915_sw_fence* %83)
  %85 = icmp ne i64 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i64 @likely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %64
  %91 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %7, align 8
  %92 = getelementptr inbounds %struct.i915_sw_fence, %struct.i915_sw_fence* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = call i32 @__add_wait_queue_entry_tail(%struct.TYPE_8__* %92, %struct.TYPE_7__* %93)
  store i32 1, i32* %11, align 4
  br label %101

95:                                               ; preds = %64
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %7, align 8
  %98 = getelementptr inbounds %struct.i915_sw_fence, %struct.i915_sw_fence* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @i915_sw_fence_wake(%struct.TYPE_7__* %96, i32 0, i32 %99, i32* null)
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %95, %90
  %102 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %7, align 8
  %103 = getelementptr inbounds %struct.i915_sw_fence, %struct.i915_sw_fence* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %101, %52, %49, %34, %20
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @debug_fence_assert(%struct.i915_sw_fence*) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local i64 @i915_sw_fence_done(%struct.i915_sw_fence*) #1

declare dso_local i32 @i915_sw_fence_set_error_once(%struct.i915_sw_fence*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i915_sw_fence_check_if_after(%struct.i915_sw_fence*, %struct.i915_sw_fence*) #1

declare dso_local %struct.TYPE_7__* @kmalloc(i32, i32) #1

declare dso_local i32 @i915_sw_fence_wait(%struct.i915_sw_fence*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @i915_sw_fence_wake(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @i915_sw_fence_await(%struct.i915_sw_fence*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__add_wait_queue_entry_tail(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
