; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_pineview_update_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_pineview_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_16__, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_i915_private = type { i32, i32, i32 }
%struct.cxsr_latency = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unknown FSB/MEM found, disable CxSR\0A\00", align 1
@pineview_display_wm = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@DSPFW1 = common dso_local global i32 0, align 4
@DSPFW_SR_MASK = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DSPFW1 register is %x\0A\00", align 1
@pineview_cursor_wm = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@DSPFW3 = common dso_local global i32 0, align 4
@DSPFW_CURSOR_SR_MASK = common dso_local global i32 0, align 4
@CURSOR_SR = common dso_local global i32 0, align 4
@pineview_display_hplloff_wm = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@DSPFW_HPLL_SR_MASK = common dso_local global i32 0, align 4
@HPLL_SR = common dso_local global i32 0, align 4
@pineview_cursor_hplloff_wm = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@DSPFW_HPLL_CURSOR_MASK = common dso_local global i32 0, align 4
@HPLL_CURSOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"DSPFW3 register is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*)* @pineview_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pineview_update_wm(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.cxsr_latency*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %3, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i32 @IS_MOBILE(%struct.drm_i915_private* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.cxsr_latency* @intel_get_cxsr_latency(i32 %21, i32 %24, i32 %27, i32 %30)
  store %struct.cxsr_latency* %31, %struct.cxsr_latency** %5, align 8
  %32 = load %struct.cxsr_latency*, %struct.cxsr_latency** %5, align 8
  %33 = icmp ne %struct.cxsr_latency* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %1
  %35 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = call i32 @intel_set_memory_cxsr(%struct.drm_i915_private* %36, i32 0)
  br label %158

38:                                               ; preds = %1
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = call %struct.intel_crtc* @single_enabled_crtc(%struct.drm_i915_private* %39)
  store %struct.intel_crtc* %40, %struct.intel_crtc** %4, align 8
  %41 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %42 = icmp ne %struct.intel_crtc* %41, null
  br i1 %42, label %43, label %155

43:                                               ; preds = %38
  %44 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %45 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store %struct.drm_display_mode* %48, %struct.drm_display_mode** %8, align 8
  %49 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %50 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %55, align 8
  store %struct.drm_framebuffer* %56, %struct.drm_framebuffer** %9, align 8
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %58 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %57, i32 0, i32 0
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @pineview_display_wm, i32 0, i32 0), align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.cxsr_latency*, %struct.cxsr_latency** %5, align 8
  %71 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @intel_calculate_wm(i32 %67, %struct.TYPE_18__* @pineview_display_wm, i32 %68, i32 %69, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @DSPFW1, align 4
  %75 = call i32 @I915_READ(i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @DSPFW_SR_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @SR, align 4
  %82 = call i32 @FW_WM(i32 %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @DSPFW1, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @I915_WRITE(i32 %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @pineview_display_wm, i32 0, i32 0), align 4
  %92 = load %struct.cxsr_latency*, %struct.cxsr_latency** %5, align 8
  %93 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @intel_calculate_wm(i32 %90, %struct.TYPE_18__* @pineview_cursor_wm, i32 %91, i32 4, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* @DSPFW3, align 4
  %97 = call i32 @I915_READ(i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @DSPFW_CURSOR_SR_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @CURSOR_SR, align 4
  %104 = call i32 @FW_WM(i32 %102, i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* @DSPFW3, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @I915_WRITE(i32 %107, i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @pineview_display_hplloff_wm, i32 0, i32 0), align 4
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.cxsr_latency*, %struct.cxsr_latency** %5, align 8
  %114 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @intel_calculate_wm(i32 %110, %struct.TYPE_18__* @pineview_display_hplloff_wm, i32 %111, i32 %112, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* @DSPFW3, align 4
  %118 = call i32 @I915_READ(i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* @DSPFW_HPLL_SR_MASK, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %6, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @HPLL_SR, align 4
  %125 = call i32 @FW_WM(i32 %123, i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* @DSPFW3, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @I915_WRITE(i32 %128, i32 %129)
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @pineview_display_hplloff_wm, i32 0, i32 0), align 4
  %133 = load %struct.cxsr_latency*, %struct.cxsr_latency** %5, align 8
  %134 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @intel_calculate_wm(i32 %131, %struct.TYPE_18__* @pineview_cursor_hplloff_wm, i32 %132, i32 4, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* @DSPFW3, align 4
  %138 = call i32 @I915_READ(i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* @DSPFW_HPLL_CURSOR_MASK, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @HPLL_CURSOR, align 4
  %145 = call i32 @FW_WM(i32 %143, i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* @DSPFW3, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @I915_WRITE(i32 %148, i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %154 = call i32 @intel_set_memory_cxsr(%struct.drm_i915_private* %153, i32 1)
  br label %158

155:                                              ; preds = %38
  %156 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %157 = call i32 @intel_set_memory_cxsr(%struct.drm_i915_private* %156, i32 0)
  br label %158

158:                                              ; preds = %34, %155, %43
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.cxsr_latency* @intel_get_cxsr_latency(i32, i32, i32, i32) #1

declare dso_local i32 @IS_MOBILE(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @intel_set_memory_cxsr(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.intel_crtc* @single_enabled_crtc(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_calculate_wm(i32, %struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @FW_WM(i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
