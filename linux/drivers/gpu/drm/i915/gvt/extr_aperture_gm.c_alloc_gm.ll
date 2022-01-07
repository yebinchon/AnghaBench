; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_alloc_gm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_alloc_gm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_4__, %struct.intel_gvt* }
%struct.TYPE_4__ = type { %struct.drm_mm_node, %struct.drm_mm_node }
%struct.drm_mm_node = type { i32 }
%struct.intel_gvt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@PIN_HIGH = common dso_local global i32 0, align 4
@PIN_MAPPABLE = common dso_local global i32 0, align 4
@I915_COLOR_UNEVICTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"fail to alloc %s gm space from host\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32)* @alloc_gm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_gm(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_gvt*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_mm_node*, align 8
  %12 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %13, i32 0, i32 1
  %15 = load %struct.intel_gvt*, %struct.intel_gvt** %14, align 8
  store %struct.intel_gvt* %15, %struct.intel_gvt** %5, align 8
  %16 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %17 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %23 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store %struct.drm_mm_node* %24, %struct.drm_mm_node** %11, align 8
  %25 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %26 = call i32 @vgpu_hidden_sz(%struct.intel_vgpu* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %28 = call i32 @gvt_hidden_gmadr_base(%struct.intel_gvt* %27)
  %29 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %30 = call i32 @ALIGN(i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %32 = call i32 @gvt_hidden_gmadr_end(%struct.intel_gvt* %31)
  %33 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %34 = call i32 @ALIGN(i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @PIN_HIGH, align 4
  store i32 %35, i32* %7, align 4
  br label %51

36:                                               ; preds = %2
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.drm_mm_node* %39, %struct.drm_mm_node** %11, align 8
  %40 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %41 = call i32 @vgpu_aperture_sz(%struct.intel_vgpu* %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %43 = call i32 @gvt_aperture_gmadr_base(%struct.intel_gvt* %42)
  %44 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %45 = call i32 @ALIGN(i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %47 = call i32 @gvt_aperture_gmadr_end(%struct.intel_gvt* %46)
  %48 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %49 = call i32 @ALIGN(i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @PIN_MAPPABLE, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %36, %21
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %57 = call i32 @mmio_hw_access_pre(%struct.drm_i915_private* %56)
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %64 = load i32, i32* @I915_COLOR_UNEVICTABLE, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @i915_gem_gtt_insert(i32* %60, %struct.drm_mm_node* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %70 = call i32 @mmio_hw_access_post(%struct.drm_i915_private* %69)
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %72 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %51
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %82 = call i32 @gvt_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %77, %51
  %84 = load i32, i32* %12, align 4
  ret i32 %84
}

declare dso_local i32 @vgpu_hidden_sz(%struct.intel_vgpu*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @gvt_hidden_gmadr_base(%struct.intel_gvt*) #1

declare dso_local i32 @gvt_hidden_gmadr_end(%struct.intel_gvt*) #1

declare dso_local i32 @vgpu_aperture_sz(%struct.intel_vgpu*) #1

declare dso_local i32 @gvt_aperture_gmadr_base(%struct.intel_gvt*) #1

declare dso_local i32 @gvt_aperture_gmadr_end(%struct.intel_gvt*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mmio_hw_access_pre(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_gtt_insert(i32*, %struct.drm_mm_node*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmio_hw_access_post(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gvt_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
