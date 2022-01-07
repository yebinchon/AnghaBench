; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_allocate_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_allocate_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32 }
%struct.intel_guc = type { i32 }
%struct.intel_gt = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_gem_object = type opaque

@PIN_GLOBAL = common dso_local global i32 0, align 4
@PIN_OFFSET_BIAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_vma* @intel_guc_allocate_vma(%struct.intel_guc* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_vma*, align 8
  %4 = alloca %struct.intel_guc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_gt*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.i915_vma*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.intel_guc*, %struct.intel_guc** %4, align 8
  %12 = call %struct.intel_gt* @guc_to_gt(%struct.intel_guc* %11)
  store %struct.intel_gt* %12, %struct.intel_gt** %6, align 8
  %13 = load %struct.intel_gt*, %struct.intel_gt** %6, align 8
  %14 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.i915_vma* @i915_gem_object_create_shmem(i32 %15, i32 %16)
  %18 = bitcast %struct.i915_vma* %17 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %18, %struct.drm_i915_gem_object** %7, align 8
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %20 = bitcast %struct.drm_i915_gem_object* %19 to %struct.i915_vma*
  %21 = call i64 @IS_ERR(%struct.i915_vma* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %25 = bitcast %struct.drm_i915_gem_object* %24 to %struct.i915_vma*
  %26 = call %struct.i915_vma* @ERR_CAST(%struct.i915_vma* %25)
  store %struct.i915_vma* %26, %struct.i915_vma** %3, align 8
  br label %62

27:                                               ; preds = %2
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %29 = bitcast %struct.drm_i915_gem_object* %28 to %struct.i915_vma*
  %30 = load %struct.intel_gt*, %struct.intel_gt** %6, align 8
  %31 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %29, i32* %33, i32* null)
  store %struct.i915_vma* %34, %struct.i915_vma** %8, align 8
  %35 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %36 = call i64 @IS_ERR(%struct.i915_vma* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %57

39:                                               ; preds = %27
  %40 = load i32, i32* @PIN_GLOBAL, align 4
  %41 = load i32, i32* @PIN_OFFSET_BIAS, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %44 = call i32 @i915_ggtt_pin_bias(%struct.i915_vma* %43)
  %45 = or i32 %42, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @i915_vma_pin(%struct.i915_vma* %46, i32 0, i32 0, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = call %struct.i915_vma* @ERR_PTR(i32 %52)
  store %struct.i915_vma* %53, %struct.i915_vma** %8, align 8
  br label %57

54:                                               ; preds = %39
  %55 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %56 = call %struct.i915_vma* @i915_vma_make_unshrinkable(%struct.i915_vma* %55)
  store %struct.i915_vma* %56, %struct.i915_vma** %3, align 8
  br label %62

57:                                               ; preds = %51, %38
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %59 = bitcast %struct.drm_i915_gem_object* %58 to %struct.i915_vma*
  %60 = call i32 @i915_gem_object_put(%struct.i915_vma* %59)
  %61 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  store %struct.i915_vma* %61, %struct.i915_vma** %3, align 8
  br label %62

62:                                               ; preds = %57, %54, %23
  %63 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  ret %struct.i915_vma* %63
}

declare dso_local %struct.intel_gt* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local %struct.i915_vma* @i915_gem_object_create_shmem(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @ERR_CAST(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.i915_vma*, i32*, i32*) #1

declare dso_local i32 @i915_ggtt_pin_bias(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local %struct.i915_vma* @ERR_PTR(i32) #1

declare dso_local %struct.i915_vma* @i915_vma_make_unshrinkable(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
