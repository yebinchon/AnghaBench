; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_read_gcp_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_read_gcp_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__, i32, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@HDMI_PACKET_TYPE_GENERAL_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_hdmi_read_gcp_infoframe(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.intel_crtc* @to_intel_crtc(i32 %16)
  store %struct.intel_crtc* %17, %struct.intel_crtc** %6, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HDMI_PACKET_TYPE_GENERAL_CONTROL, align 4
  %23 = call i32 @intel_hdmi_infoframe_enable(i32 %22)
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %67

27:                                               ; preds = %2
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = call i64 @HAS_DDI(%struct.drm_i915_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %33 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @HSW_TVIDEO_DIP_GCP(i32 %34)
  store i32 %35, i32* %7, align 4
  br label %61

36:                                               ; preds = %27
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %38 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %42 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %36
  %45 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %46 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @VLV_TVIDEO_DIP_GCP(i32 %47)
  store i32 %48, i32* %7, align 4
  br label %60

49:                                               ; preds = %40
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %51 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %55 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @TVIDEO_DIP_GCP(i32 %56)
  store i32 %57, i32* %7, align 4
  br label %59

58:                                               ; preds = %49
  br label %67

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @I915_READ(i32 %62)
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %65 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %58, %26
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @intel_hdmi_infoframe_enable(i32) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @HSW_TVIDEO_DIP_GCP(i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @VLV_TVIDEO_DIP_GCP(i32) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @TVIDEO_DIP_GCP(i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
