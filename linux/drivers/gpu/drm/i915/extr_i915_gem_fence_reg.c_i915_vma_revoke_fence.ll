; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_vma_revoke_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_vma_revoke_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { %struct.TYPE_2__*, %struct.i915_fence_reg* }
%struct.TYPE_2__ = type { i32 }
%struct.i915_fence_reg = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_vma_revoke_fence(%struct.i915_vma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_vma*, align 8
  %4 = alloca %struct.i915_fence_reg*, align 8
  store %struct.i915_vma* %0, %struct.i915_vma** %3, align 8
  %5 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %6 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %5, i32 0, i32 1
  %7 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %6, align 8
  store %struct.i915_fence_reg* %7, %struct.i915_fence_reg** %4, align 8
  %8 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %9 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %4, align 8
  %14 = icmp ne %struct.i915_fence_reg* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %4, align 8
  %18 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %17, i32 0, i32 0
  %19 = call i64 @atomic_read(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %4, align 8
  %26 = call i32 @fence_update(%struct.i915_fence_reg* %25, i32* null)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %21, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @fence_update(%struct.i915_fence_reg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
