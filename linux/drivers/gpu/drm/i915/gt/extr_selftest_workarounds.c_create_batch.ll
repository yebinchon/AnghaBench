; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_workarounds.c_create_batch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_workarounds.c_create_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32 }
%struct.i915_gem_context = type { i32, i32 }
%struct.drm_i915_gem_object = type opaque

@PAGE_SIZE = common dso_local global i32 0, align 4
@PIN_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_vma* (%struct.i915_gem_context*)* @create_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_vma* @create_batch(%struct.i915_gem_context* %0) #0 {
  %2 = alloca %struct.i915_vma*, align 8
  %3 = alloca %struct.i915_gem_context*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca i32, align 4
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %3, align 8
  %7 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %8 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = mul nsw i32 16, %10
  %12 = call %struct.i915_vma* @i915_gem_object_create_internal(i32 %9, i32 %11)
  %13 = bitcast %struct.i915_vma* %12 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %13, %struct.drm_i915_gem_object** %4, align 8
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %15 = bitcast %struct.drm_i915_gem_object* %14 to %struct.i915_vma*
  %16 = call i64 @IS_ERR(%struct.i915_vma* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %20 = bitcast %struct.drm_i915_gem_object* %19 to %struct.i915_vma*
  %21 = call %struct.i915_vma* @ERR_CAST(%struct.i915_vma* %20)
  store %struct.i915_vma* %21, %struct.i915_vma** %2, align 8
  br label %50

22:                                               ; preds = %1
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %24 = bitcast %struct.drm_i915_gem_object* %23 to %struct.i915_vma*
  %25 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %26 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %24, i32 %27, i32* null)
  store %struct.i915_vma* %28, %struct.i915_vma** %5, align 8
  %29 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %30 = call i64 @IS_ERR(%struct.i915_vma* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %34 = call i32 @PTR_ERR(%struct.i915_vma* %33)
  store i32 %34, i32* %6, align 4
  br label %44

35:                                               ; preds = %22
  %36 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %37 = load i32, i32* @PIN_USER, align 4
  %38 = call i32 @i915_vma_pin(%struct.i915_vma* %36, i32 0, i32 0, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %44

42:                                               ; preds = %35
  %43 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  store %struct.i915_vma* %43, %struct.i915_vma** %2, align 8
  br label %50

44:                                               ; preds = %41, %32
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %46 = bitcast %struct.drm_i915_gem_object* %45 to %struct.i915_vma*
  %47 = call i32 @i915_gem_object_put(%struct.i915_vma* %46)
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.i915_vma* @ERR_PTR(i32 %48)
  store %struct.i915_vma* %49, %struct.i915_vma** %2, align 8
  br label %50

50:                                               ; preds = %44, %42, %18
  %51 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  ret %struct.i915_vma* %51
}

declare dso_local %struct.i915_vma* @i915_gem_object_create_internal(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @ERR_CAST(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.i915_vma*, i32, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
