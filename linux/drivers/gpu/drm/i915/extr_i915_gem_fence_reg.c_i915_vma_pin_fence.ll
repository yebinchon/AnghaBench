; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_vma_pin_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_vma_pin_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_vma_pin_fence(%struct.i915_vma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_vma*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %3, align 8
  %5 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %6 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @assert_rpm_wakelock_held(i32* %10)
  %12 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %13 = call i32 @i915_vma_is_pinned(%struct.i915_vma* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @GEM_BUG_ON(i32 %16)
  %18 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %19 = call i32 @i915_vma_is_ggtt(%struct.i915_vma* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @GEM_BUG_ON(i32 %22)
  %24 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %25 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock_interruptible(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %42

33:                                               ; preds = %1
  %34 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %35 = call i32 @__i915_vma_pin_fence(%struct.i915_vma* %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %37 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %33, %31
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @assert_rpm_wakelock_held(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_vma_is_pinned(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_is_ggtt(%struct.i915_vma*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @__i915_vma_pin_fence(%struct.i915_vma*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
