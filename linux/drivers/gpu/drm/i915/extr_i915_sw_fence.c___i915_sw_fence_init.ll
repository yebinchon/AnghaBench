; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c___i915_sw_fence_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence.c___i915_sw_fence_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sw_fence = type { i64, i64, i32, i32 }
%struct.lock_class_key = type { i32 }

@I915_SW_FENCE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__i915_sw_fence_init(%struct.i915_sw_fence* %0, i64 %1, i8* %2, %struct.lock_class_key* %3) #0 {
  %5 = alloca %struct.i915_sw_fence*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lock_class_key*, align 8
  store %struct.i915_sw_fence* %0, %struct.i915_sw_fence** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.lock_class_key* %3, %struct.lock_class_key** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @I915_SW_FENCE_MASK, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %12, %14
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %11, %4
  %18 = phi i1 [ true, %4 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %5, align 8
  %22 = call i32 @debug_fence_init(%struct.i915_sw_fence* %21)
  %23 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %5, align 8
  %24 = getelementptr inbounds %struct.i915_sw_fence, %struct.i915_sw_fence* %23, i32 0, i32 3
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.lock_class_key*, %struct.lock_class_key** %8, align 8
  %27 = call i32 @__init_waitqueue_head(i32* %24, i8* %25, %struct.lock_class_key* %26)
  %28 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %5, align 8
  %29 = getelementptr inbounds %struct.i915_sw_fence, %struct.i915_sw_fence* %28, i32 0, i32 2
  %30 = call i32 @atomic_set(i32* %29, i32 1)
  %31 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %5, align 8
  %32 = getelementptr inbounds %struct.i915_sw_fence, %struct.i915_sw_fence* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.i915_sw_fence*, %struct.i915_sw_fence** %5, align 8
  %35 = getelementptr inbounds %struct.i915_sw_fence, %struct.i915_sw_fence* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @debug_fence_init(%struct.i915_sw_fence*) #1

declare dso_local i32 @__init_waitqueue_head(i32*, i8*, %struct.lock_class_key*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
