; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_avi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_avi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %union.hdmi_infoframe }
%union.hdmi_infoframe = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AVI = common dso_local global i32 0, align 4
@SDVO_HBUF_INDEX_AVI_IF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read AVI infoframe\0A\00", align 1
@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to unpack AVI infoframe\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Found the wrong infoframe type 0x%x (expected 0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sdvo*, %struct.intel_crtc_state*)* @intel_sdvo_get_avi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_get_avi_infoframe(%struct.intel_sdvo* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.hdmi_infoframe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %11 = load i32, i32* @AVI, align 4
  %12 = call i32 @HDMI_INFOFRAME_SIZE(i32 %11)
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store %union.hdmi_infoframe* %18, %union.hdmi_infoframe** %7, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %69

24:                                               ; preds = %2
  %25 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %26 = load i32, i32* @SDVO_HBUF_INDEX_AVI_IF, align 4
  %27 = mul nuw i64 4, %13
  %28 = trunc i64 %27 to i32
  %29 = call i64 @intel_sdvo_read_infoframe(%struct.intel_sdvo* %25, i32 %26, i32* %15, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %69

34:                                               ; preds = %24
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %69

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* @HDMI_INFOFRAME_TYPE_AVI, align 8
  %41 = call i32 @intel_hdmi_infoframe_enable(i64 %40)
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %43 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  %47 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @hdmi_infoframe_unpack(%union.hdmi_infoframe* %47, i32* %15, i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %69

54:                                               ; preds = %39
  %55 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %7, align 8
  %56 = bitcast %union.hdmi_infoframe* %55 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HDMI_INFOFRAME_TYPE_AVI, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %7, align 8
  %63 = bitcast %union.hdmi_infoframe* %62 to %struct.TYPE_3__*
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HDMI_INFOFRAME_TYPE_AVI, align 8
  %67 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %61, %54
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %52, %37, %32, %23
  %70 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %10, align 4
  switch i32 %71, label %73 [
    i32 0, label %72
    i32 1, label %72
  ]

72:                                               ; preds = %69, %69
  ret void

73:                                               ; preds = %69
  unreachable
}

declare dso_local i32 @HDMI_INFOFRAME_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @intel_sdvo_read_infoframe(%struct.intel_sdvo*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @intel_hdmi_infoframe_enable(i64) #1

declare dso_local i32 @hdmi_infoframe_unpack(%union.hdmi_infoframe*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
