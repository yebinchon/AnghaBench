; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_valleyview_crtc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_valleyview_crtc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* }
%struct.intel_crtc = type { i32, i32 }

@M1_N1 = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@CHV_BLEND_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.intel_atomic_state*)* @valleyview_crtc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @valleyview_crtc_enable(%struct.intel_crtc_state* %0, %struct.intel_atomic_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_atomic_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.intel_atomic_state* %1, %struct.intel_atomic_state** %4, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  store %struct.drm_crtc* %13, %struct.drm_crtc** %5, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %20 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %19)
  store %struct.intel_crtc* %20, %struct.intel_crtc** %8, align 8
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %25 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %117

30:                                               ; preds = %2
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %32 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %36 = load i32, i32* @M1_N1, align 4
  %37 = call i32 @intel_dp_set_m_n(%struct.intel_crtc_state* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %40 = call i32 @intel_set_pipe_timings(%struct.intel_crtc_state* %39)
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %42 = call i32 @intel_set_pipe_src_size(%struct.intel_crtc_state* %41)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %44 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @PIPE_B, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @CHV_BLEND(i32 %51)
  %53 = load i32, i32* @CHV_BLEND_LEGACY, align 4
  %54 = call i32 @I915_WRITE(i32 %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @CHV_CANVAS(i32 %55)
  %57 = call i32 @I915_WRITE(i32 %56, i32 0)
  br label %58

58:                                               ; preds = %50, %46, %38
  %59 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %60 = call i32 @i9xx_set_pipeconf(%struct.intel_crtc_state* %59)
  %61 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %62 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %63, i32 %64, i32 1)
  %66 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %68 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %69 = call i32 @intel_encoders_pre_pll_enable(%struct.intel_crtc* %66, %struct.intel_crtc_state* %67, %struct.intel_atomic_state* %68)
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %71 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %58
  %74 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %76 = call i32 @chv_prepare_pll(%struct.intel_crtc* %74, %struct.intel_crtc_state* %75)
  %77 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %78 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %79 = call i32 @chv_enable_pll(%struct.intel_crtc* %77, %struct.intel_crtc_state* %78)
  br label %87

80:                                               ; preds = %58
  %81 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %82 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %83 = call i32 @vlv_prepare_pll(%struct.intel_crtc* %81, %struct.intel_crtc_state* %82)
  %84 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %85 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %86 = call i32 @vlv_enable_pll(%struct.intel_crtc* %84, %struct.intel_crtc_state* %85)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %89 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %90 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %91 = call i32 @intel_encoders_pre_enable(%struct.intel_crtc* %88, %struct.intel_crtc_state* %89, %struct.intel_atomic_state* %90)
  %92 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %93 = call i32 @i9xx_pfit_enable(%struct.intel_crtc_state* %92)
  %94 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %95 = call i32 @intel_color_load_luts(%struct.intel_crtc_state* %94)
  %96 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %97 = call i32 @intel_color_commit(%struct.intel_crtc_state* %96)
  %98 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %99 = call i32 @intel_disable_primary_plane(%struct.intel_crtc_state* %98)
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %101 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)*, i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)** %102, align 8
  %104 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %105 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %106 = call i32 %103(%struct.intel_atomic_state* %104, %struct.intel_crtc_state* %105)
  %107 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %108 = call i32 @intel_enable_pipe(%struct.intel_crtc_state* %107)
  %109 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %110 = call i32 @assert_vblank_disabled(%struct.drm_crtc* %109)
  %111 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %112 = call i32 @intel_crtc_vblank_on(%struct.intel_crtc_state* %111)
  %113 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %114 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %115 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %116 = call i32 @intel_encoders_enable(%struct.intel_crtc* %113, %struct.intel_crtc_state* %114, %struct.intel_atomic_state* %115)
  br label %117

117:                                              ; preds = %87, %29
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dp_set_m_n(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_set_pipe_timings(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_set_pipe_src_size(%struct.intel_crtc_state*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @CHV_BLEND(i32) #1

declare dso_local i32 @CHV_CANVAS(i32) #1

declare dso_local i32 @i9xx_set_pipeconf(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_encoders_pre_pll_enable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @chv_prepare_pll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @chv_enable_pll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @vlv_prepare_pll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @vlv_enable_pll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_encoders_pre_enable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @i9xx_pfit_enable(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_load_luts(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_commit(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_disable_primary_plane(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_enable_pipe(%struct.intel_crtc_state*) #1

declare dso_local i32 @assert_vblank_disabled(%struct.drm_crtc*) #1

declare dso_local i32 @intel_crtc_vblank_on(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_encoders_enable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
