; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_dmabuf.c_vgpu_create_gem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_dmabuf.c_vgpu_create_gem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i64, i32, i32 }
%struct.drm_device = type { i32 }
%struct.intel_vgpu_fb_info = type { i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@intel_vgpu_gem_ops = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@I915_TILING_NONE = common dso_local global i32 0, align 4
@I915_TILING_X = common dso_local global i8* null, align 8
@I915_TILING_Y = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid drm_format_mod %llx for tiling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_i915_gem_object* (%struct.drm_device*, %struct.intel_vgpu_fb_info*)* @vgpu_create_gem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_i915_gem_object* @vgpu_create_gem(%struct.drm_device* %0, %struct.intel_vgpu_fb_info* %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.intel_vgpu_fb_info*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.intel_vgpu_fb_info* %1, %struct.intel_vgpu_fb_info** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %6, align 8
  %12 = call %struct.drm_i915_gem_object* (...) @i915_gem_object_alloc()
  store %struct.drm_i915_gem_object* %12, %struct.drm_i915_gem_object** %7, align 8
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %14 = icmp eq %struct.drm_i915_gem_object* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %3, align 8
  br label %79

16:                                               ; preds = %2
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %18, i32 0, i32 3
  %20 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %5, align 8
  %21 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i32 @roundup(i32 %22, i32 %23)
  %25 = call i32 @drm_gem_private_object_init(%struct.drm_device* %17, i32* %19, i32 %24)
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %27 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %26, i32* @intel_vgpu_gem_ops)
  %28 = load i32, i32* @I915_GEM_DOMAIN_GTT, align 4
  %29 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %30 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %32 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %34 = call i32 @INTEL_GEN(%struct.drm_i915_private* %33)
  %35 = icmp sge i32 %34, 9
  br i1 %35, label %36, label %64

36:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %37 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %5, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %53 [
    i32 131, label %40
    i32 130, label %42
    i32 129, label %48
    i32 128, label %48
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* @I915_TILING_NONE, align 4
  store i32 %41, i32* %8, align 4
  br label %58

42:                                               ; preds = %36
  %43 = load i8*, i8** @I915_TILING_X, align 8
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %5, align 8
  %46 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  br label %58

48:                                               ; preds = %36, %36
  %49 = load i32, i32* @I915_TILING_Y, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %5, align 8
  %51 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  br label %58

53:                                               ; preds = %36
  %54 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %5, align 8
  %55 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %48, %42, %40
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %63 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %77

64:                                               ; preds = %16
  %65 = load %struct.intel_vgpu_fb_info*, %struct.intel_vgpu_fb_info** %5, align 8
  %66 = getelementptr inbounds %struct.intel_vgpu_fb_info, %struct.intel_vgpu_fb_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i8*, i8** @I915_TILING_X, align 8
  br label %72

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i8* [ %70, %69 ], [ null, %71 ]
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %76 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %58
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  store %struct.drm_i915_gem_object* %78, %struct.drm_i915_gem_object** %3, align 8
  br label %79

79:                                               ; preds = %77, %15
  %80 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  ret %struct.drm_i915_gem_object* %80
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(...) #1

declare dso_local i32 @drm_gem_private_object_init(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @gvt_dbg_core(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
