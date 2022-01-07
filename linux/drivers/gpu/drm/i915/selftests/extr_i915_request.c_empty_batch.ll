; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_empty_batch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_empty_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_gem_object = type opaque

@PAGE_SIZE = common dso_local global i32 0, align 4
@I915_MAP_WB = common dso_local global i32 0, align 4
@MI_BATCH_BUFFER_END = common dso_local global %struct.i915_vma zeroinitializer, align 4
@PIN_USER = common dso_local global i32 0, align 4
@PIN_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_vma* (%struct.drm_i915_private*)* @empty_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_vma* @empty_batch(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.i915_vma*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = call %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private* %8, i32 %9)
  %11 = bitcast %struct.i915_vma* %10 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %11, %struct.drm_i915_gem_object** %4, align 8
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %13 = bitcast %struct.drm_i915_gem_object* %12 to %struct.i915_vma*
  %14 = call i64 @IS_ERR(%struct.i915_vma* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %18 = bitcast %struct.drm_i915_gem_object* %17 to %struct.i915_vma*
  %19 = call %struct.i915_vma* @ERR_CAST(%struct.i915_vma* %18)
  store %struct.i915_vma* %19, %struct.i915_vma** %2, align 8
  br label %72

20:                                               ; preds = %1
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %22 = bitcast %struct.drm_i915_gem_object* %21 to %struct.i915_vma*
  %23 = load i32, i32* @I915_MAP_WB, align 4
  %24 = call %struct.i915_vma* @i915_gem_object_pin_map(%struct.i915_vma* %22, i32 %23)
  store %struct.i915_vma* %24, %struct.i915_vma** %6, align 8
  %25 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %26 = call i64 @IS_ERR(%struct.i915_vma* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %30 = call i32 @PTR_ERR(%struct.i915_vma* %29)
  store i32 %30, i32* %7, align 4
  br label %66

31:                                               ; preds = %20
  %32 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %33 = bitcast %struct.i915_vma* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 bitcast (%struct.i915_vma* @MI_BATCH_BUFFER_END to i8*), i64 4, i1 false)
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %35 = bitcast %struct.drm_i915_gem_object* %34 to %struct.i915_vma*
  %36 = call i32 @__i915_gem_object_flush_map(%struct.i915_vma* %35, i32 0, i32 64)
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %38 = bitcast %struct.drm_i915_gem_object* %37 to %struct.i915_vma*
  %39 = call i32 @i915_gem_object_unpin_map(%struct.i915_vma* %38)
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %40, i32 0, i32 1
  %42 = call i32 @intel_gt_chipset_flush(i32* %41)
  %43 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %44 = bitcast %struct.drm_i915_gem_object* %43 to %struct.i915_vma*
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %44, i32* %47, i32* null)
  store %struct.i915_vma* %48, %struct.i915_vma** %5, align 8
  %49 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %50 = call i64 @IS_ERR(%struct.i915_vma* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %54 = call i32 @PTR_ERR(%struct.i915_vma* %53)
  store i32 %54, i32* %7, align 4
  br label %66

55:                                               ; preds = %31
  %56 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %57 = load i32, i32* @PIN_USER, align 4
  %58 = load i32, i32* @PIN_GLOBAL, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @i915_vma_pin(%struct.i915_vma* %56, i32 0, i32 0, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %66

64:                                               ; preds = %55
  %65 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  store %struct.i915_vma* %65, %struct.i915_vma** %2, align 8
  br label %72

66:                                               ; preds = %63, %52, %28
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %68 = bitcast %struct.drm_i915_gem_object* %67 to %struct.i915_vma*
  %69 = call i32 @i915_gem_object_put(%struct.i915_vma* %68)
  %70 = load i32, i32* %7, align 4
  %71 = call %struct.i915_vma* @ERR_PTR(i32 %70)
  store %struct.i915_vma* %71, %struct.i915_vma** %2, align 8
  br label %72

72:                                               ; preds = %66, %64, %16
  %73 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  ret %struct.i915_vma* %73
}

declare dso_local %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @ERR_CAST(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_gem_object_pin_map(%struct.i915_vma*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__i915_gem_object_flush_map(%struct.i915_vma*, i32, i32) #1

declare dso_local i32 @i915_gem_object_unpin_map(%struct.i915_vma*) #1

declare dso_local i32 @intel_gt_chipset_flush(i32*) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.i915_vma*, i32*, i32*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
