; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_alloc_vgpu_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_alloc_vgpu_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_4__, %struct.intel_gvt* }
%struct.TYPE_4__ = type { %struct.i915_fence_reg** }
%struct.i915_fence_reg = type { i32 }
%struct.intel_gvt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_6__, %struct.intel_runtime_pm }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_runtime_pm = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to alloc fences\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*)* @alloc_vgpu_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_vgpu_fence(%struct.intel_vgpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.intel_gvt*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_runtime_pm*, align 8
  %7 = alloca %struct.i915_fence_reg*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  %9 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %10 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %9, i32 0, i32 1
  %11 = load %struct.intel_gvt*, %struct.intel_gvt** %10, align 8
  store %struct.intel_gvt* %11, %struct.intel_gvt** %4, align 8
  %12 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %13 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 1
  store %struct.intel_runtime_pm* %16, %struct.intel_runtime_pm** %6, align 8
  %17 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %6, align 8
  %18 = call i32 @intel_runtime_pm_get(%struct.intel_runtime_pm* %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %45, %1
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %27 = call i32 @vgpu_fence_sz(%struct.intel_vgpu* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %31 = call %struct.i915_fence_reg* @i915_reserve_fence(%struct.drm_i915_private* %30)
  store %struct.i915_fence_reg* %31, %struct.i915_fence_reg** %7, align 8
  %32 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %7, align 8
  %33 = call i64 @IS_ERR(%struct.i915_fence_reg* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %58

36:                                               ; preds = %29
  %37 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %7, align 8
  %38 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %39 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.i915_fence_reg**, %struct.i915_fence_reg*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.i915_fence_reg*, %struct.i915_fence_reg** %41, i64 %43
  store %struct.i915_fence_reg* %37, %struct.i915_fence_reg** %44, align 8
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %50 = call i32 @_clear_vgpu_fence(%struct.intel_vgpu* %49)
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %6, align 8
  %57 = call i32 @intel_runtime_pm_put_unchecked(%struct.intel_runtime_pm* %56)
  store i32 0, i32* %2, align 4
  br label %100

58:                                               ; preds = %35
  %59 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %87, %58
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %63 = call i32 @vgpu_fence_sz(%struct.intel_vgpu* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %60
  %66 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %67 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.i915_fence_reg**, %struct.i915_fence_reg*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.i915_fence_reg*, %struct.i915_fence_reg** %69, i64 %71
  %73 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %72, align 8
  store %struct.i915_fence_reg* %73, %struct.i915_fence_reg** %7, align 8
  %74 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %7, align 8
  %75 = icmp ne %struct.i915_fence_reg* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  br label %87

77:                                               ; preds = %65
  %78 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %7, align 8
  %79 = call i32 @i915_unreserve_fence(%struct.i915_fence_reg* %78)
  %80 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %81 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.i915_fence_reg**, %struct.i915_fence_reg*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.i915_fence_reg*, %struct.i915_fence_reg** %83, i64 %85
  store %struct.i915_fence_reg* null, %struct.i915_fence_reg** %86, align 8
  br label %87

87:                                               ; preds = %77, %76
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %60

90:                                               ; preds = %60
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %92 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %6, align 8
  %97 = call i32 @intel_runtime_pm_put_unchecked(%struct.intel_runtime_pm* %96)
  %98 = load i32, i32* @ENOSPC, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %90, %48
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @intel_runtime_pm_get(%struct.intel_runtime_pm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vgpu_fence_sz(%struct.intel_vgpu*) #1

declare dso_local %struct.i915_fence_reg* @i915_reserve_fence(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_ERR(%struct.i915_fence_reg*) #1

declare dso_local i32 @_clear_vgpu_fence(%struct.intel_vgpu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_runtime_pm_put_unchecked(%struct.intel_runtime_pm*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @i915_unreserve_fence(%struct.i915_fence_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
