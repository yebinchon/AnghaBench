; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_haswell_get_ddi_port_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_haswell_get_ddi_port_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, %struct.intel_shared_dpll*, i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, i32*)* }
%struct.drm_i915_private = type { i32 }

@PORT_E = common dso_local global i32 0, align 4
@LPT_TRANSCONF = common dso_local global i32 0, align 4
@TRANS_ENABLE = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@FDI_DP_PORT_WIDTH_MASK = common dso_local global i32 0, align 4
@FDI_DP_PORT_WIDTH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @haswell_get_ddi_port_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @haswell_get_ddi_port_state(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_shared_dpll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @TRANS_DDI_FUNC_CTL(i32 %16)
  %18 = call i32 @I915_READ(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %20 = call i32 @INTEL_GEN(%struct.drm_i915_private* %19)
  %21 = icmp sge i32 %20, 12
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT(i32 %23)
  store i32 %24, i32* %7, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @TRANS_DDI_FUNC_CTL_VAL_TO_PORT(i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %30 = call i32 @INTEL_GEN(%struct.drm_i915_private* %29)
  %31 = icmp sge i32 %30, 11
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %36 = call i32 @icelake_get_ddi_pll(%struct.drm_i915_private* %33, i32 %34, %struct.intel_crtc_state* %35)
  br label %72

37:                                               ; preds = %28
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %39 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %45 = call i32 @cannonlake_get_ddi_pll(%struct.drm_i915_private* %42, i32 %43, %struct.intel_crtc_state* %44)
  br label %71

46:                                               ; preds = %37
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %48 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %54 = call i32 @skylake_get_ddi_pll(%struct.drm_i915_private* %51, i32 %52, %struct.intel_crtc_state* %53)
  br label %70

55:                                               ; preds = %46
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %57 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %63 = call i32 @bxt_get_ddi_pll(%struct.drm_i915_private* %60, i32 %61, %struct.intel_crtc_state* %62)
  br label %69

64:                                               ; preds = %55
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %68 = call i32 @haswell_get_ddi_pll(%struct.drm_i915_private* %65, i32 %66, %struct.intel_crtc_state* %67)
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %41
  br label %72

72:                                               ; preds = %71, %32
  %73 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %74 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %73, i32 0, i32 3
  %75 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %74, align 8
  store %struct.intel_shared_dpll* %75, %struct.intel_shared_dpll** %6, align 8
  %76 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %6, align 8
  %77 = icmp ne %struct.intel_shared_dpll* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %72
  %79 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %6, align 8
  %80 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, i32*)*, i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, i32*)** %84, align 8
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %87 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %6, align 8
  %88 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %89 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %88, i32 0, i32 2
  %90 = call i32 %85(%struct.drm_i915_private* %86, %struct.intel_shared_dpll* %87, i32* %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @WARN_ON(i32 %93)
  br label %95

95:                                               ; preds = %78, %72
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %97 = call i32 @INTEL_GEN(%struct.drm_i915_private* %96)
  %98 = icmp slt i32 %97, 9
  br i1 %98, label %99, label %126

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @PORT_E, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %99
  %104 = load i32, i32* @LPT_TRANSCONF, align 4
  %105 = call i32 @I915_READ(i32 %104)
  %106 = load i32, i32* @TRANS_ENABLE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %111 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load i32, i32* @PIPE_A, align 4
  %113 = call i32 @FDI_RX_CTL(i32 %112)
  %114 = call i32 @I915_READ(i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* @FDI_DP_PORT_WIDTH_MASK, align 4
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @FDI_DP_PORT_WIDTH_SHIFT, align 4
  %119 = ashr i32 %117, %118
  %120 = add nsw i32 %119, 1
  %121 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %122 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %124 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %125 = call i32 @ironlake_get_fdi_m_n_config(%struct.intel_crtc* %123, %struct.intel_crtc_state* %124)
  br label %126

126:                                              ; preds = %109, %103, %99, %95
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT(i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL_VAL_TO_PORT(i32) #1

declare dso_local i32 @icelake_get_ddi_pll(%struct.drm_i915_private*, i32, %struct.intel_crtc_state*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cannonlake_get_ddi_pll(%struct.drm_i915_private*, i32, %struct.intel_crtc_state*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @skylake_get_ddi_pll(%struct.drm_i915_private*, i32, %struct.intel_crtc_state*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_get_ddi_pll(%struct.drm_i915_private*, i32, %struct.intel_crtc_state*) #1

declare dso_local i32 @haswell_get_ddi_pll(%struct.drm_i915_private*, i32, %struct.intel_crtc_state*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @ironlake_get_fdi_m_n_config(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
