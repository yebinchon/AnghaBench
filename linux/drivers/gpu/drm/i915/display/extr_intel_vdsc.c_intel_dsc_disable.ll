; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_vdsc.c_intel_dsc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_vdsc.c_intel_dsc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@TRANSCODER_EDP = common dso_local global i64 0, align 8
@DSS_CTL1 = common dso_local global i32 0, align 4
@DSS_CTL2 = common dso_local global i32 0, align 4
@JOINER_ENABLE = common dso_local global i32 0, align 4
@LEFT_BRANCH_VDSC_ENABLE = common dso_local global i32 0, align 4
@RIGHT_BRANCH_VDSC_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dsc_disable(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.intel_crtc* @to_intel_crtc(i32 %13)
  store %struct.intel_crtc* %14, %struct.intel_crtc** %3, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %4, align 8
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %85

29:                                               ; preds = %1
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TRANSCODER_EDP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @DSS_CTL1, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @DSS_CTL2, align 4
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ICL_PIPE_DSS_CTL1(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ICL_PIPE_DSS_CTL2(i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @I915_READ(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @JOINER_ENABLE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @JOINER_ENABLE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %50, %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @I915_WRITE(i32 %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @I915_READ(i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @LEFT_BRANCH_VDSC_ENABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @RIGHT_BRANCH_VDSC_ENABLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65, %55
  %71 = load i32, i32* @LEFT_BRANCH_VDSC_ENABLE, align 4
  %72 = load i32, i32* @RIGHT_BRANCH_VDSC_ENABLE, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %70, %65
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @I915_WRITE(i32 %78, i32 %79)
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %82 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %83 = call i32 @intel_dsc_power_domain(%struct.intel_crtc_state* %82)
  %84 = call i32 @intel_display_power_put_unchecked(%struct.drm_i915_private* %81, i32 %83)
  br label %85

85:                                               ; preds = %77, %28
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ICL_PIPE_DSS_CTL1(i32) #1

declare dso_local i32 @ICL_PIPE_DSS_CTL2(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @intel_display_power_put_unchecked(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_dsc_power_domain(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
