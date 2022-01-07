; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_vdsc.c_intel_dsc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_vdsc.c_intel_dsc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc_state = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.drm_i915_private = type { i32 }

@TRANSCODER_EDP = common dso_local global i64 0, align 8
@DSS_CTL1 = common dso_local global i32 0, align 4
@DSS_CTL2 = common dso_local global i32 0, align 4
@LEFT_BRANCH_VDSC_ENABLE = common dso_local global i32 0, align 4
@RIGHT_BRANCH_VDSC_ENABLE = common dso_local global i32 0, align 4
@JOINER_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dsc_enable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.intel_crtc* @to_intel_crtc(i32 %15)
  store %struct.intel_crtc* %16, %struct.intel_crtc** %5, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %18 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %6, align 8
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %78

31:                                               ; preds = %2
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %34 = call i32 @intel_dsc_power_domain(%struct.intel_crtc_state* %33)
  %35 = call i32 @intel_display_power_get(%struct.drm_i915_private* %32, i32 %34)
  %36 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %38 = call i32 @intel_configure_pps_for_dsc_encoder(%struct.intel_encoder* %36, %struct.intel_crtc_state* %37)
  %39 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %41 = call i32 @intel_dp_write_dsc_pps_sdp(%struct.intel_encoder* %39, %struct.intel_crtc_state* %40)
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %43 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TRANSCODER_EDP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load i32, i32* @DSS_CTL1, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @DSS_CTL2, align 4
  store i32 %49, i32* %9, align 4
  br label %55

50:                                               ; preds = %31
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ICL_PIPE_DSS_CTL1(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ICL_PIPE_DSS_CTL2(i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* @LEFT_BRANCH_VDSC_ENABLE, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %60 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load i32, i32* @RIGHT_BRANCH_VDSC_ENABLE, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* @JOINER_ENABLE, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %64, %55
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @I915_WRITE(i32 %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @I915_WRITE(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %30
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_dsc_power_domain(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_configure_pps_for_dsc_encoder(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dp_write_dsc_pps_sdp(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @ICL_PIPE_DSS_CTL1(i32) #1

declare dso_local i32 @ICL_PIPE_DSS_CTL2(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
