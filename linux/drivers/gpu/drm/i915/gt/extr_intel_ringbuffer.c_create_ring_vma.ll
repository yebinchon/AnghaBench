; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_create_ring_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_create_ring_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32 }
%struct.i915_ggtt = type { %struct.i915_address_space }
%struct.i915_address_space = type { i64, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_vma* (%struct.i915_ggtt*, i32)* @create_ring_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_vma* @create_ring_vma(%struct.i915_ggtt* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_vma*, align 8
  %4 = alloca %struct.i915_ggtt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_address_space*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  %9 = alloca %struct.i915_vma*, align 8
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %11 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %10, i32 0, i32 0
  store %struct.i915_address_space* %11, %struct.i915_address_space** %6, align 8
  %12 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %13 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %12, i32 0, i32 1
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %7, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.i915_vma* @i915_gem_object_create_stolen(%struct.drm_i915_private* %15, i32 %16)
  %18 = bitcast %struct.i915_vma* %17 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %18, %struct.drm_i915_gem_object** %8, align 8
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %20 = icmp ne %struct.drm_i915_gem_object* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private* %22, i32 %23)
  %25 = bitcast %struct.i915_vma* %24 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %25, %struct.drm_i915_gem_object** %8, align 8
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %28 = bitcast %struct.drm_i915_gem_object* %27 to %struct.i915_vma*
  %29 = call i64 @IS_ERR(%struct.i915_vma* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %33 = bitcast %struct.drm_i915_gem_object* %32 to %struct.i915_vma*
  %34 = call %struct.i915_vma* @ERR_CAST(%struct.i915_vma* %33)
  store %struct.i915_vma* %34, %struct.i915_vma** %3, align 8
  br label %60

35:                                               ; preds = %26
  %36 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %37 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %42 = bitcast %struct.drm_i915_gem_object* %41 to %struct.i915_vma*
  %43 = call i32 @i915_gem_object_set_readonly(%struct.i915_vma* %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %46 = bitcast %struct.drm_i915_gem_object* %45 to %struct.i915_vma*
  %47 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %48 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %46, %struct.i915_address_space* %47, i32* null)
  store %struct.i915_vma* %48, %struct.i915_vma** %9, align 8
  %49 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %50 = call i64 @IS_ERR(%struct.i915_vma* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %55

53:                                               ; preds = %44
  %54 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  store %struct.i915_vma* %54, %struct.i915_vma** %3, align 8
  br label %60

55:                                               ; preds = %52
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %57 = bitcast %struct.drm_i915_gem_object* %56 to %struct.i915_vma*
  %58 = call i32 @i915_gem_object_put(%struct.i915_vma* %57)
  %59 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  store %struct.i915_vma* %59, %struct.i915_vma** %3, align 8
  br label %60

60:                                               ; preds = %55, %53, %31
  %61 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  ret %struct.i915_vma* %61
}

declare dso_local %struct.i915_vma* @i915_gem_object_create_stolen(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_create_internal(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @ERR_CAST(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_set_readonly(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.i915_vma*, %struct.i915_address_space*, i32*) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
