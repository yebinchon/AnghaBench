; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_gem_restore_fences.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_gem_restore_fences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.i915_fence_reg* }
%struct.i915_fence_reg = type { i32 }
%struct.i915_vma = type { i32, %struct.i915_fence_reg* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_restore_fences(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_fence_reg*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %51, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %7
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %18, i64 %20
  store %struct.i915_fence_reg* %21, %struct.i915_fence_reg** %4, align 8
  %22 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %4, align 8
  %23 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.i915_vma* @READ_ONCE(i32 %24)
  store %struct.i915_vma* %25, %struct.i915_vma** %5, align 8
  %26 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %27 = icmp ne %struct.i915_vma* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %30 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %29, i32 0, i32 1
  %31 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %30, align 8
  %32 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %4, align 8
  %33 = icmp ne %struct.i915_fence_reg* %31, %32
  br label %34

34:                                               ; preds = %28, %14
  %35 = phi i1 [ false, %14 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @GEM_BUG_ON(i32 %36)
  %38 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %39 = icmp ne %struct.i915_vma* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %42 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @i915_gem_object_is_tiled(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store %struct.i915_vma* null, %struct.i915_vma** %5, align 8
  br label %47

47:                                               ; preds = %46, %40, %34
  %48 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %4, align 8
  %49 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %50 = call i32 @fence_write(%struct.i915_fence_reg* %48, %struct.i915_vma* %49)
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %7

54:                                               ; preds = %7
  %55 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.i915_vma* @READ_ONCE(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_object_is_tiled(i32) #1

declare dso_local i32 @fence_write(%struct.i915_fence_reg*, %struct.i915_vma*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
