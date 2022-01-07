; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_crtc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_crtc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc = type { i32 }

@INTEL_OUTPUT_DSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.intel_atomic_state*)* @i9xx_crtc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_crtc_disable(%struct.intel_crtc_state* %0, %struct.intel_atomic_state* %1) #0 {
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
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %25 = call i64 @IS_GEN(%struct.drm_i915_private* %24, i32 2)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %34 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %35 = call i32 @intel_encoders_disable(%struct.intel_crtc* %32, %struct.intel_crtc_state* %33, %struct.intel_atomic_state* %34)
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %37 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %36)
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %39 = call i32 @assert_vblank_disabled(%struct.drm_crtc* %38)
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %41 = call i32 @intel_disable_pipe(%struct.intel_crtc_state* %40)
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %43 = call i32 @i9xx_pfit_disable(%struct.intel_crtc_state* %42)
  %44 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %45 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %46 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %47 = call i32 @intel_encoders_post_disable(%struct.intel_crtc* %44, %struct.intel_crtc_state* %45, %struct.intel_atomic_state* %46)
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %49 = load i32, i32* @INTEL_OUTPUT_DSI, align 4
  %50 = call i32 @intel_crtc_has_type(%struct.intel_crtc_state* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %31
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %54 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @chv_disable_pll(%struct.drm_i915_private* %57, i32 %58)
  br label %72

60:                                               ; preds = %52
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %62 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @vlv_disable_pll(%struct.drm_i915_private* %65, i32 %66)
  br label %71

68:                                               ; preds = %60
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %70 = call i32 @i9xx_disable_pll(%struct.intel_crtc_state* %69)
  br label %71

71:                                               ; preds = %68, %64
  br label %72

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %31
  %74 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %76 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %77 = call i32 @intel_encoders_post_pll_disable(%struct.intel_crtc* %74, %struct.intel_crtc_state* %75, %struct.intel_atomic_state* %76)
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %79 = call i64 @IS_GEN(%struct.drm_i915_private* %78, i32 2)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %73
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %82, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %81, %73
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %87 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %93 = call i32 @intel_update_watermarks(%struct.intel_crtc* %92)
  br label %94

94:                                               ; preds = %91, %85
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %96 = call i64 @IS_I830(%struct.drm_i915_private* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @i830_enable_pipe(%struct.drm_i915_private* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %94
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_encoders_disable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @assert_vblank_disabled(%struct.drm_crtc*) #1

declare dso_local i32 @intel_disable_pipe(%struct.intel_crtc_state*) #1

declare dso_local i32 @i9xx_pfit_disable(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_encoders_post_disable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @chv_disable_pll(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_disable_pll(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @i9xx_disable_pll(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_encoders_post_pll_disable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_update_watermarks(%struct.intel_crtc*) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i32 @i830_enable_pipe(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
