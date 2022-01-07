; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_vma.c_i915_vma_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_vma.c_i915_vma_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i915_address_space = type { i32 }
%struct.i915_ggtt_view = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object* %0, %struct.i915_address_space* %1, %struct.i915_ggtt_view* %2) #0 {
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.i915_address_space*, align 8
  %6 = alloca %struct.i915_ggtt_view*, align 8
  %7 = alloca %struct.i915_vma*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store %struct.i915_address_space* %1, %struct.i915_address_space** %5, align 8
  store %struct.i915_ggtt_view* %2, %struct.i915_ggtt_view** %6, align 8
  %8 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %6, align 8
  %9 = icmp ne %struct.i915_ggtt_view* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %12 = call i32 @i915_is_ggtt(%struct.i915_address_space* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i1 [ false, %3 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @GEM_BUG_ON(i32 %17)
  %19 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %20 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GEM_BUG_ON(i32 %21)
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %28 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %29 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %6, align 8
  %30 = call %struct.i915_vma* @vma_lookup(%struct.drm_i915_gem_object* %27, %struct.i915_address_space* %28, %struct.i915_ggtt_view* %29)
  store %struct.i915_vma* %30, %struct.i915_vma** %7, align 8
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %36 = icmp ne %struct.i915_vma* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %15
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %43 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %44 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %6, align 8
  %45 = call %struct.i915_vma* @vma_create(%struct.drm_i915_gem_object* %42, %struct.i915_address_space* %43, %struct.i915_ggtt_view* %44)
  store %struct.i915_vma* %45, %struct.i915_vma** %7, align 8
  br label %46

46:                                               ; preds = %41, %15
  %47 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %48 = call i32 @IS_ERR(%struct.i915_vma* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %52 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %53 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %6, align 8
  %54 = call i64 @i915_vma_compare(%struct.i915_vma* %51, %struct.i915_address_space* %52, %struct.i915_ggtt_view* %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi i1 [ false, %46 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @GEM_BUG_ON(i32 %58)
  %60 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  ret %struct.i915_vma* %60
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_is_ggtt(%struct.i915_address_space*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.i915_vma* @vma_lookup(%struct.drm_i915_gem_object*, %struct.i915_address_space*, %struct.i915_ggtt_view*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.i915_vma* @vma_create(%struct.drm_i915_gem_object*, %struct.i915_address_space*, %struct.i915_ggtt_view*) #1

declare dso_local i32 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i64 @i915_vma_compare(%struct.i915_vma*, %struct.i915_address_space*, %struct.i915_ggtt_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
