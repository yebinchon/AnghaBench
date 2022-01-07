; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_free_vgpu_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_free_vgpu_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_4__, %struct.intel_gvt* }
%struct.TYPE_4__ = type { %struct.i915_fence_reg** }
%struct.i915_fence_reg = type { i32 }
%struct.intel_gvt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu*)* @free_vgpu_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_vgpu_fence(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu*, align 8
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.i915_fence_reg*, align 8
  %6 = alloca i64, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %2, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %8 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %7, i32 0, i32 1
  %9 = load %struct.intel_gvt*, %struct.intel_gvt** %8, align 8
  store %struct.intel_gvt* %9, %struct.intel_gvt** %3, align 8
  %10 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %11 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %4, align 8
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %14 = call i64 @vgpu_fence_sz(%struct.intel_vgpu* %13)
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %65

21:                                               ; preds = %1
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = call i32 @intel_runtime_pm_get(i32* %23)
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %31 = call i32 @_clear_vgpu_fence(%struct.intel_vgpu* %30)
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %53, %21
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %35 = call i64 @vgpu_fence_sz(%struct.intel_vgpu* %34)
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %39 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.i915_fence_reg**, %struct.i915_fence_reg*** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.i915_fence_reg*, %struct.i915_fence_reg** %41, i64 %42
  %44 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %43, align 8
  store %struct.i915_fence_reg* %44, %struct.i915_fence_reg** %5, align 8
  %45 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %5, align 8
  %46 = call i32 @i915_unreserve_fence(%struct.i915_fence_reg* %45)
  %47 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %48 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.i915_fence_reg**, %struct.i915_fence_reg*** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.i915_fence_reg*, %struct.i915_fence_reg** %50, i64 %51
  store %struct.i915_fence_reg* null, %struct.i915_fence_reg** %52, align 8
  br label %53

53:                                               ; preds = %37
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %32

56:                                               ; preds = %32
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 0
  %64 = call i32 @intel_runtime_pm_put_unchecked(i32* %63)
  br label %65

65:                                               ; preds = %56, %20
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @vgpu_fence_sz(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_clear_vgpu_fence(%struct.intel_vgpu*) #1

declare dso_local i32 @i915_unreserve_fence(%struct.i915_fence_reg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_runtime_pm_put_unchecked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
