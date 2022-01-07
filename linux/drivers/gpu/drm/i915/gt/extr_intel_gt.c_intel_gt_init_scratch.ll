; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt.c_intel_gt_init_scratch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt.c_intel_gt_init_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32, %struct.TYPE_2__*, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type opaque
%struct.i915_vma = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate scratch page\0A\00", align 1
@PIN_GLOBAL = common dso_local global i32 0, align 4
@PIN_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gt_init_scratch(%struct.intel_gt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.i915_vma*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %11 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %10, i32 0, i32 2
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %6, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.i915_vma* @i915_gem_object_create_stolen(%struct.drm_i915_private* %13, i32 %14)
  %16 = bitcast %struct.i915_vma* %15 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %16, %struct.drm_i915_gem_object** %7, align 8
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %18 = icmp ne %struct.drm_i915_gem_object* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private* %20, i32 %21)
  %23 = bitcast %struct.i915_vma* %22 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %23, %struct.drm_i915_gem_object** %7, align 8
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %26 = bitcast %struct.drm_i915_gem_object* %25 to %struct.i915_vma*
  %27 = call i64 @IS_ERR(%struct.i915_vma* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %32 = bitcast %struct.drm_i915_gem_object* %31 to %struct.i915_vma*
  %33 = call i32 @PTR_ERR(%struct.i915_vma* %32)
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %24
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %36 = bitcast %struct.drm_i915_gem_object* %35 to %struct.i915_vma*
  %37 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %38 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %36, i32* %40, i32* null)
  store %struct.i915_vma* %41, %struct.i915_vma** %8, align 8
  %42 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %43 = call i64 @IS_ERR(%struct.i915_vma* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %47 = call i32 @PTR_ERR(%struct.i915_vma* %46)
  store i32 %47, i32* %9, align 4
  br label %62

48:                                               ; preds = %34
  %49 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %50 = load i32, i32* @PIN_GLOBAL, align 4
  %51 = load i32, i32* @PIN_HIGH, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @i915_vma_pin(%struct.i915_vma* %49, i32 0, i32 0, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %62

57:                                               ; preds = %48
  %58 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %59 = call i32 @i915_vma_make_unshrinkable(%struct.i915_vma* %58)
  %60 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %61 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %67

62:                                               ; preds = %56, %45
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %64 = bitcast %struct.drm_i915_gem_object* %63 to %struct.i915_vma*
  %65 = call i32 @i915_gem_object_put(%struct.i915_vma* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %57, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.i915_vma* @i915_gem_object_create_stolen(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.i915_vma*, i32*, i32*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i32 @i915_vma_make_unshrinkable(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
