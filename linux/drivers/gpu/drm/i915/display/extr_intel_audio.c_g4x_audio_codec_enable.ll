; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_g4x_audio_codec_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_g4x_audio_codec_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { %struct.drm_connector* }
%struct.drm_connector = type { i32* }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Enable audio codec, %u bytes ELD\0A\00", align 1
@G4X_AUD_VID_DID = common dso_local global i32 0, align 4
@INTEL_AUDIO_DEVBLC = common dso_local global i32 0, align 4
@INTEL_AUDIO_DEVCL = common dso_local global i32 0, align 4
@G4X_ELDV_DEVCL_DEVBLC = common dso_local global i32 0, align 4
@G4X_ELDV_DEVCTG = common dso_local global i32 0, align 4
@G4X_AUD_CNTL_ST = common dso_local global i32 0, align 4
@G4X_ELD_ADDR_MASK = common dso_local global i32 0, align 4
@G4X_HDMIW_HDMIEDID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ELD size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @g4x_audio_codec_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_audio_codec_enable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %20 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %19, i32 0, i32 0
  %21 = load %struct.drm_connector*, %struct.drm_connector** %20, align 8
  store %struct.drm_connector* %21, %struct.drm_connector** %8, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @drm_eld_size(i32* %25)
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @G4X_AUD_VID_DID, align 4
  %29 = call i32 @I915_READ(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @INTEL_AUDIO_DEVBLC, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @INTEL_AUDIO_DEVCL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %3
  %38 = load i32, i32* @G4X_ELDV_DEVCL_DEVBLC, align 4
  store i32 %38, i32* %10, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @G4X_ELDV_DEVCTG, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %43 = load i32, i32* @G4X_AUD_CNTL_ST, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @G4X_AUD_CNTL_ST, align 4
  %46 = load i32, i32* @G4X_ELD_ADDR_MASK, align 4
  %47 = load i32, i32* @G4X_HDMIW_HDMIEDID, align 4
  %48 = call i64 @intel_eld_uptodate(%struct.drm_connector* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %97

51:                                               ; preds = %41
  %52 = load i32, i32* @G4X_AUD_CNTL_ST, align 4
  %53 = call i32 @I915_READ(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @G4X_ELD_ADDR_MASK, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = ashr i32 %60, 9
  %62 = and i32 %61, 31
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* @G4X_AUD_CNTL_ST, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @I915_WRITE(i32 %63, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @drm_eld_size(i32* %66)
  %68 = sdiv i32 %67, 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @min(i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %85, %51
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i32, i32* @G4X_HDMIW_HDMIEDID, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @I915_WRITE(i32 %78, i32 %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %73

88:                                               ; preds = %73
  %89 = load i32, i32* @G4X_AUD_CNTL_ST, align 4
  %90 = call i32 @I915_READ(i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* @G4X_AUD_CNTL_ST, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @I915_WRITE(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %88, %50
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @drm_eld_size(i32*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @intel_eld_uptodate(%struct.drm_connector*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
