; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_check_plane_surface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_check_plane_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i9xx_check_plane_surface(%struct.intel_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  %12 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %13 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %4, align 8
  %19 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %20 = call i32 @intel_plane_compute_gtt(%struct.intel_plane_state* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %141

25:                                               ; preds = %1
  %26 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %27 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %141

32:                                               ; preds = %25
  %33 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %34 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 16
  store i32 %38, i32* %5, align 4
  %39 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %40 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 16
  store i32 %44, i32* %6, align 4
  %45 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %46 = call i32 @intel_add_fb_offsets(i32* %5, i32* %6, %struct.intel_plane_state* %45, i32 0)
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %48 = call i32 @INTEL_GEN(%struct.drm_i915_private* %47)
  %49 = icmp sge i32 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %52 = call i64 @intel_plane_compute_aligned_offset(i32* %5, i32* %6, %struct.intel_plane_state* %51, i32 0)
  store i64 %52, i64* %7, align 8
  br label %54

53:                                               ; preds = %32
  store i64 0, i64* %7, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %56 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 %58, 16
  %60 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %61 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %59, %64
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 %66, 16
  %68 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %69 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %67, %72
  %74 = call i32 @drm_rect_translate(%struct.TYPE_10__* %57, i32 %65, i32 %73)
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %76 = call i32 @IS_HASWELL(%struct.drm_i915_private* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %122, label %78

78:                                               ; preds = %54
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %80 = call i32 @IS_BROADWELL(%struct.drm_i915_private* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %122, label %82

82:                                               ; preds = %78
  %83 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %84 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %9, align 4
  %87 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %88 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = call i32 @drm_rect_width(%struct.TYPE_10__* %89)
  %91 = ashr i32 %90, 16
  store i32 %91, i32* %10, align 4
  %92 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %93 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = call i32 @drm_rect_height(%struct.TYPE_10__* %94)
  %96 = ashr i32 %95, 16
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %82
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %121

110:                                              ; preds = %82
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i32, i32* %10, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %115, %110
  br label %121

121:                                              ; preds = %120, %101
  br label %122

122:                                              ; preds = %121, %78, %54
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %125 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  store i64 %123, i64* %128, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %131 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  store i32 %129, i32* %134, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %137 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %136, i32 0, i32 0
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  store i32 %135, i32* %140, align 4
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %122, %31, %23
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_plane_compute_gtt(%struct.intel_plane_state*) #1

declare dso_local i32 @intel_add_fb_offsets(i32*, i32*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_plane_compute_aligned_offset(i32*, i32*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @drm_rect_translate(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_10__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
