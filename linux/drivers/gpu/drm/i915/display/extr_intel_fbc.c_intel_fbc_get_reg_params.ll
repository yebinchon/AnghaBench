; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_get_reg_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_get_reg_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.intel_fbc_reg_params = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { i32, %struct.intel_fbc_state_cache }
%struct.intel_fbc_state_cache = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_fbc_reg_params*)* @intel_fbc_get_reg_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_fbc_get_reg_params(%struct.intel_crtc* %0, %struct.intel_fbc_reg_params* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_fbc_reg_params*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_fbc*, align 8
  %7 = alloca %struct.intel_fbc_state_cache*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_fbc_reg_params* %1, %struct.intel_fbc_reg_params** %4, align 8
  %8 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  store %struct.intel_fbc* %14, %struct.intel_fbc** %6, align 8
  %15 = load %struct.intel_fbc*, %struct.intel_fbc** %6, align 8
  %16 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %15, i32 0, i32 1
  store %struct.intel_fbc_state_cache* %16, %struct.intel_fbc_state_cache** %7, align 8
  %17 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %4, align 8
  %18 = call i32 @memset(%struct.intel_fbc_reg_params* %17, i32 0, i32 36)
  %19 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %7, align 8
  %20 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %4, align 8
  %23 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %7, align 8
  %25 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %4, align 8
  %28 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %30 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %4, align 8
  %33 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %36 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_12__* @to_intel_plane(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %4, align 8
  %43 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.intel_fbc*, %struct.intel_fbc** %6, align 8
  %46 = call i32 @get_crtc_fence_y_offset(%struct.intel_fbc* %45)
  %47 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %4, align 8
  %48 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %7, align 8
  %51 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %4, align 8
  %55 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %7, align 8
  %58 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %4, align 8
  %62 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %65 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %7, align 8
  %66 = call i32 @intel_fbc_calculate_cfb_size(%struct.drm_i915_private* %64, %struct.intel_fbc_state_cache* %65)
  %67 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %4, align 8
  %68 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %70 = call i64 @IS_GEN(%struct.drm_i915_private* %69, i32 9)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %2
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %74 = call i32 @IS_GEMINILAKE(%struct.drm_i915_private* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %72
  %77 = load %struct.intel_fbc_state_cache*, %struct.intel_fbc_state_cache** %7, align 8
  %78 = getelementptr inbounds %struct.intel_fbc_state_cache, %struct.intel_fbc_state_cache* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.intel_fbc*, %struct.intel_fbc** %6, align 8
  %82 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 32, %83
  %85 = call i32 @DIV_ROUND_UP(i32 %80, i32 %84)
  %86 = mul nsw i32 %85, 8
  %87 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %4, align 8
  %88 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %76, %72, %2
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @memset(%struct.intel_fbc_reg_params*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @to_intel_plane(i32) #1

declare dso_local i32 @get_crtc_fence_y_offset(%struct.intel_fbc*) #1

declare dso_local i32 @intel_fbc_calculate_cfb_size(%struct.drm_i915_private*, %struct.intel_fbc_state_cache*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
