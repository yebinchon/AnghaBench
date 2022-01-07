; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_enable_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_enable_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"enabling pipe %c\0A\00", align 1
@INTEL_OUTPUT_DSI = common dso_local global i32 0, align 4
@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @intel_enable_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_pipe(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.intel_crtc* @to_intel_crtc(i32 %12)
  store %struct.intel_crtc* %13, %struct.intel_crtc** %3, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %4, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pipe_name(i32 %25)
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %29 = call i32 @assert_planes_disabled(%struct.intel_crtc* %28)
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = call i64 @HAS_GMCH(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %1
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %35 = load i32, i32* @INTEL_OUTPUT_DSI, align 4
  %36 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %40 = call i32 @assert_dsi_pll_enabled(%struct.drm_i915_private* %39)
  br label %45

41:                                               ; preds = %33
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @assert_pll_enabled(%struct.drm_i915_private* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  br label %60

46:                                               ; preds = %1
  %47 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %48 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %53 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %54 = call i32 @intel_crtc_pch_transcoder(%struct.intel_crtc* %53)
  %55 = call i32 @assert_fdi_rx_pll_enabled(%struct.drm_i915_private* %52, i32 %54)
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @assert_fdi_tx_pll_enabled(%struct.drm_i915_private* %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %46
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %62 = call i32 @trace_intel_pipe_enable(%struct.intel_crtc* %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @PIPECONF(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @I915_READ(i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @PIPECONF_ENABLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %73 = call i32 @IS_I830(%struct.drm_i915_private* %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @WARN_ON(i32 %76)
  br label %92

78:                                               ; preds = %60
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @PIPECONF_ENABLE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @I915_WRITE(i32 %79, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @POSTING_READ(i32 %84)
  %86 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %87 = call i64 @intel_crtc_max_vblank_count(%struct.intel_crtc_state* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %91 = call i32 @intel_wait_for_pipe_scanline_moving(%struct.intel_crtc* %90)
  br label %92

92:                                               ; preds = %71, %89, %78
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @assert_planes_disabled(%struct.intel_crtc*) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @assert_dsi_pll_enabled(%struct.drm_i915_private*) #1

declare dso_local i32 @assert_pll_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_fdi_rx_pll_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_crtc_pch_transcoder(%struct.intel_crtc*) #1

declare dso_local i32 @assert_fdi_tx_pll_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @trace_intel_pipe_enable(%struct.intel_crtc*) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @intel_crtc_max_vblank_count(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_wait_for_pipe_scanline_moving(%struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
