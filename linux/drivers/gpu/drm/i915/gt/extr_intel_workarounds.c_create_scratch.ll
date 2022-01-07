; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_create_scratch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_create_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32 }
%struct.i915_address_space = type { i32 }
%struct.drm_i915_gem_object = type opaque

@PAGE_SIZE = common dso_local global i32 0, align 4
@I915_CACHE_LLC = common dso_local global i32 0, align 4
@PIN_GLOBAL = common dso_local global i32 0, align 4
@PIN_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_vma* (%struct.i915_address_space*, i32)* @create_scratch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_vma* @create_scratch(%struct.i915_address_space* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_vma*, align 8
  %4 = alloca %struct.i915_address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.i915_vma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i32 @round_up(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %17 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.i915_vma* @i915_gem_object_create_internal(i32 %18, i32 %19)
  %21 = bitcast %struct.i915_vma* %20 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %21, %struct.drm_i915_gem_object** %6, align 8
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %23 = bitcast %struct.drm_i915_gem_object* %22 to %struct.i915_vma*
  %24 = call i64 @IS_ERR(%struct.i915_vma* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %28 = bitcast %struct.drm_i915_gem_object* %27 to %struct.i915_vma*
  %29 = call %struct.i915_vma* @ERR_CAST(%struct.i915_vma* %28)
  store %struct.i915_vma* %29, %struct.i915_vma** %3, align 8
  br label %68

30:                                               ; preds = %2
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %32 = bitcast %struct.drm_i915_gem_object* %31 to %struct.i915_vma*
  %33 = load i32, i32* @I915_CACHE_LLC, align 4
  %34 = call i32 @i915_gem_object_set_cache_coherency(%struct.i915_vma* %32, i32 %33)
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %36 = bitcast %struct.drm_i915_gem_object* %35 to %struct.i915_vma*
  %37 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %38 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %36, %struct.i915_address_space* %37, i32* null)
  store %struct.i915_vma* %38, %struct.i915_vma** %7, align 8
  %39 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %40 = call i64 @IS_ERR(%struct.i915_vma* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %44 = call i32 @PTR_ERR(%struct.i915_vma* %43)
  store i32 %44, i32* %9, align 4
  br label %62

45:                                               ; preds = %30
  %46 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %47 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %48 = call i64 @i915_vma_is_ggtt(%struct.i915_vma* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @PIN_GLOBAL, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @PIN_USER, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @i915_vma_pin(%struct.i915_vma* %46, i32 0, i32 0, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %62

60:                                               ; preds = %54
  %61 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  store %struct.i915_vma* %61, %struct.i915_vma** %3, align 8
  br label %68

62:                                               ; preds = %59, %42
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %64 = bitcast %struct.drm_i915_gem_object* %63 to %struct.i915_vma*
  %65 = call i32 @i915_gem_object_put(%struct.i915_vma* %64)
  %66 = load i32, i32* %9, align 4
  %67 = call %struct.i915_vma* @ERR_PTR(i32 %66)
  store %struct.i915_vma* %67, %struct.i915_vma** %3, align 8
  br label %68

68:                                               ; preds = %62, %60, %26
  %69 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  ret %struct.i915_vma* %69
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_create_internal(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @ERR_CAST(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_set_cache_coherency(%struct.i915_vma*, i32) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.i915_vma*, %struct.i915_address_space*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i64 @i915_vma_is_ggtt(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
