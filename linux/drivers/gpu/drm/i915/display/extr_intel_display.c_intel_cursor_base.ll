; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cursor_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cursor_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.drm_framebuffer*, %struct.TYPE_8__* }
%struct.drm_framebuffer = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane_state*)* @intel_cursor_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_cursor_base(%struct.intel_plane_state* %0) #0 {
  %2 = alloca %struct.intel_plane_state*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %2, align 8
  %7 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %8 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %3, align 8
  %14 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %15 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  store %struct.drm_framebuffer* %17, %struct.drm_framebuffer** %4, align 8
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %19 = call %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer* %18)
  store %struct.drm_i915_gem_object* %19, %struct.drm_i915_gem_object** %5, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call %struct.TYPE_14__* @INTEL_INFO(%struct.drm_i915_private* %20)
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %34 = call i32 @intel_plane_ggtt_offset(%struct.intel_plane_state* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %37 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = call i64 @HAS_GMCH(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %35
  %50 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %51 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %49
  %58 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %59 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %63 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %61, %65
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %69 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %67, %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %57, %49, %35
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.drm_i915_gem_object* @intel_fb_obj(%struct.drm_framebuffer*) #1

declare dso_local %struct.TYPE_14__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_plane_ggtt_offset(%struct.intel_plane_state*) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
