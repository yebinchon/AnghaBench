; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_alloc_initial_plane_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_alloc_initial_plane_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_initial_plane_config = type { i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_framebuffer }
%struct.drm_framebuffer = type { i32, i32*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32*, i32*, i32, i32, i32, i32, i32 }
%struct.drm_i915_gem_object = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unsupported modifier for initial FB: 0x%llx\0A\00", align 1
@DRM_MODE_FB_MODIFIERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"intel fb init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"initial plane fb obj %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*, %struct.intel_initial_plane_config*)* @intel_alloc_initial_plane_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_alloc_initial_plane_obj(%struct.intel_crtc* %0, %struct.intel_initial_plane_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_initial_plane_config*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd2, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_i915_gem_object*, align 8
  %13 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_initial_plane_config* %1, %struct.intel_initial_plane_config** %5, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %7, align 8
  %20 = bitcast %struct.drm_mode_fb_cmd2* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 40, i1 false)
  %21 = load %struct.intel_initial_plane_config*, %struct.intel_initial_plane_config** %5, align 8
  %22 = getelementptr inbounds %struct.intel_initial_plane_config, %struct.intel_initial_plane_config* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %9, align 8
  %25 = load %struct.intel_initial_plane_config*, %struct.intel_initial_plane_config** %5, align 8
  %26 = getelementptr inbounds %struct.intel_initial_plane_config, %struct.intel_initial_plane_config* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i32 @round_down(i64 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.intel_initial_plane_config*, %struct.intel_initial_plane_config** %5, align 8
  %31 = getelementptr inbounds %struct.intel_initial_plane_config, %struct.intel_initial_plane_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.intel_initial_plane_config*, %struct.intel_initial_plane_config** %5, align 8
  %34 = getelementptr inbounds %struct.intel_initial_plane_config, %struct.intel_initial_plane_config* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @round_up(i64 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load %struct.intel_initial_plane_config*, %struct.intel_initial_plane_config** %5, align 8
  %43 = getelementptr inbounds %struct.intel_initial_plane_config, %struct.intel_initial_plane_config* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %147

47:                                               ; preds = %2
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %48, 2
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %147

55:                                               ; preds = %47
  %56 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %57 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %60 [
    i32 133, label %59
    i32 132, label %59
    i32 131, label %59
  ]

59:                                               ; preds = %55, %55, %55
  br label %65

60:                                               ; preds = %55
  %61 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %62 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 0, i32* %3, align 4
  br label %147

65:                                               ; preds = %59
  %66 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call %struct.drm_i915_gem_object* @i915_gem_object_create_stolen_for_preallocated(%struct.drm_i915_private* %69, i32 %70, i32 %71, i32 %72)
  store %struct.drm_i915_gem_object* %73, %struct.drm_i915_gem_object** %12, align 8
  %74 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %78 = icmp ne %struct.drm_i915_gem_object* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %147

80:                                               ; preds = %65
  %81 = load %struct.intel_initial_plane_config*, %struct.intel_initial_plane_config** %5, align 8
  %82 = getelementptr inbounds %struct.intel_initial_plane_config, %struct.intel_initial_plane_config* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %97 [
    i32 130, label %84
    i32 129, label %85
    i32 128, label %85
  ]

84:                                               ; preds = %80
  br label %102

85:                                               ; preds = %80, %80
  %86 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %87 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.intel_initial_plane_config*, %struct.intel_initial_plane_config** %5, align 8
  %92 = getelementptr inbounds %struct.intel_initial_plane_config, %struct.intel_initial_plane_config* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %90, %93
  %95 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %96 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %102

97:                                               ; preds = %80
  %98 = load %struct.intel_initial_plane_config*, %struct.intel_initial_plane_config** %5, align 8
  %99 = getelementptr inbounds %struct.intel_initial_plane_config, %struct.intel_initial_plane_config* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @MISSING_CASE(i32 %100)
  br label %143

102:                                              ; preds = %85, %84
  %103 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %104 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %103, i32 0, i32 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %8, i32 0, i32 5
  store i32 %107, i32* %108, align 4
  %109 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %110 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %8, i32 0, i32 4
  store i32 %111, i32* %112, align 8
  %113 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %114 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %8, i32 0, i32 3
  store i32 %115, i32* %116, align 4
  %117 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %118 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %8, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %121, i32* %124, align 4
  %125 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %126 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %8, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* @DRM_MODE_FB_MODIFIERS, align 4
  %132 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %8, i32 0, i32 2
  store i32 %131, i32* %132, align 8
  %133 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %134 = call i32 @to_intel_framebuffer(%struct.drm_framebuffer* %133)
  %135 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %136 = call i64 @intel_framebuffer_init(i32 %134, %struct.drm_i915_gem_object* %135, %struct.drm_mode_fb_cmd2* %8)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %102
  %139 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %143

140:                                              ; preds = %102
  %141 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %142 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.drm_i915_gem_object* %141)
  store i32 1, i32* %13, align 4
  br label %143

143:                                              ; preds = %140, %138, %97
  %144 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %145 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %144)
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %143, %79, %60, %54, %46
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @round_down(i64, i32) #1

declare dso_local i32 @round_up(i64, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_stolen_for_preallocated(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i64 @intel_framebuffer_init(i32, %struct.drm_i915_gem_object*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
