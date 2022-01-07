; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_set_pipe_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_set_pipe_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@TRANS_MSA_SYNC_CLK = common dso_local global i32 0, align 4
@TRANS_MSA_CEA_RANGE = common dso_local global i32 0, align 4
@TRANS_MSA_6_BPC = common dso_local global i32 0, align 4
@TRANS_MSA_8_BPC = common dso_local global i32 0, align 4
@TRANS_MSA_10_BPC = common dso_local global i32 0, align 4
@TRANS_MSA_12_BPC = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_YCBCR444 = common dso_local global i64 0, align 8
@TRANS_MSA_SAMPLING_444 = common dso_local global i32 0, align 4
@TRANS_MSA_CLRSP_YCBCR = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_YCBCR420 = common dso_local global i64 0, align 8
@TRANS_MSA_USE_VSC_SDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_set_pipe_settings(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %7 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %8 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.intel_crtc* @to_intel_crtc(i32 %10)
  store %struct.intel_crtc* %11, %struct.intel_crtc** %3, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %18 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %21 = call i32 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %89

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @transcoder_is_dsi(i32 %25)
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load i32, i32* @TRANS_MSA_SYNC_CLK, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %30 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @TRANS_MSA_CEA_RANGE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %24
  %38 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %39 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %57 [
    i32 18, label %41
    i32 24, label %45
    i32 30, label %49
    i32 36, label %53
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @TRANS_MSA_6_BPC, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %62

45:                                               ; preds = %37
  %46 = load i32, i32* @TRANS_MSA_8_BPC, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %62

49:                                               ; preds = %37
  %50 = load i32, i32* @TRANS_MSA_10_BPC, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %62

53:                                               ; preds = %37
  %54 = load i32, i32* @TRANS_MSA_12_BPC, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %62

57:                                               ; preds = %37
  %58 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %59 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MISSING_CASE(i32 %60)
  br label %62

62:                                               ; preds = %57, %53, %49, %45, %41
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %64 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR444, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* @TRANS_MSA_SAMPLING_444, align 4
  %70 = load i32, i32* @TRANS_MSA_CLRSP_YCBCR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %76 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR420, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @TRANS_MSA_USE_VSC_SDP, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @TRANS_MSA_MISC(i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @I915_WRITE(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %23
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @transcoder_is_dsi(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @TRANS_MSA_MISC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
