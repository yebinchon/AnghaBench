; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_crtc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_crtc_enable.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.intel_atomic_state*)* @i9xx_crtc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_crtc_enable(%struct.intel_crtc_state* %0, %struct.intel_atomic_state* %1) #0 {
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
  br label %99

30:                                               ; preds = %2
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %32 = call i32 @i9xx_set_pll_dividers(%struct.intel_crtc_state* %31)
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %34 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %38 = load i32, i32* @M1_N1, align 4
  %39 = call i32 @intel_dp_set_m_n(%struct.intel_crtc_state* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %42 = call i32 @intel_set_pipe_timings(%struct.intel_crtc_state* %41)
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %44 = call i32 @intel_set_pipe_src_size(%struct.intel_crtc_state* %43)
  %45 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %46 = call i32 @i9xx_set_pipeconf(%struct.intel_crtc_state* %45)
  %47 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %48 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %50 = call i32 @IS_GEN(%struct.drm_i915_private* %49, i32 2)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %53, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %52, %40
  %57 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %58 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %59 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %60 = call i32 @intel_encoders_pre_enable(%struct.intel_crtc* %57, %struct.intel_crtc_state* %58, %struct.intel_atomic_state* %59)
  %61 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %62 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %63 = call i32 @i9xx_enable_pll(%struct.intel_crtc* %61, %struct.intel_crtc_state* %62)
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %65 = call i32 @i9xx_pfit_enable(%struct.intel_crtc_state* %64)
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %67 = call i32 @intel_color_load_luts(%struct.intel_crtc_state* %66)
  %68 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %69 = call i32 @intel_color_commit(%struct.intel_crtc_state* %68)
  %70 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %71 = call i32 @intel_disable_primary_plane(%struct.intel_crtc_state* %70)
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %73 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)*, i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)** %74, align 8
  %76 = icmp ne i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %56
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)*, i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)** %80, align 8
  %82 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %83 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %84 = call i32 %81(%struct.intel_atomic_state* %82, %struct.intel_crtc_state* %83)
  br label %88

85:                                               ; preds = %56
  %86 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %87 = call i32 @intel_update_watermarks(%struct.intel_crtc* %86)
  br label %88

88:                                               ; preds = %85, %77
  %89 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %90 = call i32 @intel_enable_pipe(%struct.intel_crtc_state* %89)
  %91 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %92 = call i32 @assert_vblank_disabled(%struct.drm_crtc* %91)
  %93 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %94 = call i32 @intel_crtc_vblank_on(%struct.intel_crtc_state* %93)
  %95 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %96 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %97 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %98 = call i32 @intel_encoders_enable(%struct.intel_crtc* %95, %struct.intel_crtc_state* %96, %struct.intel_atomic_state* %97)
  br label %99

99:                                               ; preds = %88, %29
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @i9xx_set_pll_dividers(%struct.intel_crtc_state*) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dp_set_m_n(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_set_pipe_timings(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_set_pipe_src_size(%struct.intel_crtc_state*) #1

declare dso_local i32 @i9xx_set_pipeconf(%struct.intel_crtc_state*) #1

declare dso_local i32 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_encoders_pre_enable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @i9xx_enable_pll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @i9xx_pfit_enable(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_load_luts(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_commit(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_disable_primary_plane(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_update_watermarks(%struct.intel_crtc*) #1

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
