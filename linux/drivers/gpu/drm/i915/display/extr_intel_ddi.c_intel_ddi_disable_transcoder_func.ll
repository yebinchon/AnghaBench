; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_disable_transcoder_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_disable_transcoder_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@TRANS_DDI_FUNC_ENABLE = common dso_local global i32 0, align 4
@TGL_TRANS_DDI_PORT_MASK = common dso_local global i32 0, align 4
@TRANS_DDI_DP_VC_PAYLOAD_ALLOC = common dso_local global i32 0, align 4
@TRANS_DDI_PORT_MASK = common dso_local global i32 0, align 4
@QUIRK_INCREASE_DDI_DISABLED_TIME = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Quirk Increase DDI disabled time\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_disable_transcoder_func(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_crtc* @to_intel_crtc(i32 %11)
  store %struct.intel_crtc* %12, %struct.intel_crtc** %3, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %4, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TRANS_DDI_FUNC_CTL(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @I915_READ(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = call i32 @INTEL_GEN(%struct.drm_i915_private* %25)
  %27 = icmp sge i32 %26, 12
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load i32, i32* @TRANS_DDI_FUNC_ENABLE, align 4
  %30 = load i32, i32* @TGL_TRANS_DDI_PORT_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @TRANS_DDI_DP_VC_PAYLOAD_ALLOC, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %46

37:                                               ; preds = %1
  %38 = load i32, i32* @TRANS_DDI_FUNC_ENABLE, align 4
  %39 = load i32, i32* @TRANS_DDI_PORT_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @TRANS_DDI_DP_VC_PAYLOAD_ALLOC, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %37, %28
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @QUIRK_INCREASE_DDI_DISABLED_TIME, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %58 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %59 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @msleep(i32 100)
  br label %64

64:                                               ; preds = %61, %56, %46
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
