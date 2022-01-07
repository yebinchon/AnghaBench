; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_can_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_can_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.intel_plane = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PLANE_CURSOR = common dso_local global i64 0, align 8
@DRM_FORMAT_MOD_LINEAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_plane_can_remap(%struct.intel_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  %9 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %10 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.intel_plane* @to_intel_plane(i32 %12)
  store %struct.intel_plane* %13, %struct.intel_plane** %4, align 8
  %14 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %15 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %5, align 8
  %19 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %20 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %21, align 8
  store %struct.drm_framebuffer* %22, %struct.drm_framebuffer** %6, align 8
  %23 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %24 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PLANE_CURSOR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

29:                                               ; preds = %1
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %31 = call i32 @INTEL_GEN(%struct.drm_i915_private* %30)
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %77

34:                                               ; preds = %29
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %36 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @is_ccs_modifier(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %77

41:                                               ; preds = %34
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %43 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DRM_FORMAT_MOD_LINEAR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %49 = call i32 @intel_tile_size(%struct.drm_i915_private* %48)
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %72, %47
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %54 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %51
  %60 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %61 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %77

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %51

75:                                               ; preds = %51
  br label %76

76:                                               ; preds = %75, %41
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %70, %40, %33, %28
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @is_ccs_modifier(i64) #1

declare dso_local i32 @intel_tile_size(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
