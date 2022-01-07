; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_enable_pch_transcoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_enable_pch_transcoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@TRANS_CHICKEN2_TIMING_OVERRIDE = common dso_local global i32 0, align 4
@PIPECONF_BPC_MASK = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@PIPECONF_8BPC = common dso_local global i32 0, align 4
@TRANS_INTERLACE_MASK = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_MASK = common dso_local global i32 0, align 4
@PIPECONF_INTERLACED_ILK = common dso_local global i32 0, align 4
@INTEL_OUTPUT_SDVO = common dso_local global i32 0, align 4
@TRANS_LEGACY_INTERLACED_ILK = common dso_local global i32 0, align 4
@TRANS_INTERLACED = common dso_local global i32 0, align 4
@TRANS_PROGRESSIVE = common dso_local global i32 0, align 4
@TRANS_ENABLE = common dso_local global i32 0, align 4
@TRANS_STATE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to enable transcoder %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @ironlake_enable_pch_transcoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_enable_pch_transcoder(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.intel_crtc* @to_intel_crtc(i32 %12)
  store %struct.intel_crtc* %13, %struct.intel_crtc** %3, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %4, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @assert_shared_dpll_enabled(%struct.drm_i915_private* %22, i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @assert_fdi_tx_enabled(%struct.drm_i915_private* %27, i32 %28)
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @assert_fdi_rx_enabled(%struct.drm_i915_private* %30, i32 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %34 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %1
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @TRANS_CHICKEN2(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @I915_READ(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @TRANS_CHICKEN2_TIMING_OVERRIDE, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @I915_WRITE(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %1
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @PCH_TRANSCONF(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @I915_READ(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @PIPECONF(i32 %52)
  %54 = call i32 @I915_READ(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %56 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %47
  %59 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %64 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %65 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @PIPECONF_8BPC, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %77

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %71, %67
  br label %78

78:                                               ; preds = %77, %47
  %79 = load i32, i32* @TRANS_INTERLACE_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @PIPECONF_INTERLACE_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @PIPECONF_INTERLACED_ILK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %78
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %90 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %94 = load i32, i32* @INTEL_OUTPUT_SDVO, align 4
  %95 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @TRANS_LEGACY_INTERLACED_ILK, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %105

101:                                              ; preds = %92, %88
  %102 = load i32, i32* @TRANS_INTERLACED, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %97
  br label %110

106:                                              ; preds = %78
  %107 = load i32, i32* @TRANS_PROGRESSIVE, align 4
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %106, %105
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @TRANS_ENABLE, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @I915_WRITE(i32 %111, i32 %114)
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @TRANS_STATE_ENABLE, align 4
  %119 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %116, i32 %117, i32 %118, i32 100)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %110
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @pipe_name(i32 %122)
  %124 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %121, %110
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @assert_shared_dpll_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_fdi_tx_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_fdi_rx_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @TRANS_CHICKEN2(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PCH_TRANSCONF(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
