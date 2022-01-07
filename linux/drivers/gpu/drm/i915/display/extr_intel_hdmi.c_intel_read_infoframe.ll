; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_read_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_read_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_digital_port = type { i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, i32*, i32)* }
%struct.intel_crtc_state.0 = type opaque

@VIDEO_DIP_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to unpack infoframe type 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Found the wrong infoframe type 0x%x (expected 0x%02x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_read_infoframe(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, i32 %2, %union.hdmi_infoframe* %3) #0 {
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.hdmi_infoframe*, align 8
  %9 = alloca %struct.intel_digital_port*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.hdmi_infoframe* %3, %union.hdmi_infoframe** %8, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = call %struct.intel_digital_port* @enc_to_dig_port(i32* %15)
  store %struct.intel_digital_port* %16, %struct.intel_digital_port** %9, align 8
  %17 = load i32, i32* @VIDEO_DIP_DATA_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @intel_hdmi_infoframe_enable(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  br label %70

30:                                               ; preds = %4
  %31 = load %struct.intel_digital_port*, %struct.intel_digital_port** %9, align 8
  %32 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %31, i32 0, i32 0
  %33 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, i32*, i32)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, i32, i32*, i32)** %32, align 8
  %34 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %36 = bitcast %struct.intel_crtc_state* %35 to %struct.intel_crtc_state.0*
  %37 = load i32, i32* %7, align 4
  %38 = mul nuw i64 4, %18
  %39 = trunc i64 %38 to i32
  %40 = call i32 %33(%struct.intel_encoder* %34, %struct.intel_crtc_state.0* %36, i32 %37, i32* %20, i32 %39)
  %41 = getelementptr inbounds i32, i32* %20, i64 1
  %42 = getelementptr inbounds i32, i32* %20, i64 0
  %43 = call i32 @memmove(i32* %41, i32* %42, i32 3)
  %44 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %8, align 8
  %45 = getelementptr inbounds i32, i32* %20, i64 1
  %46 = mul nuw i64 4, %18
  %47 = sub i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = call i32 @hdmi_infoframe_unpack(%union.hdmi_infoframe* %44, i32* %45, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %30
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 1, i32* %13, align 4
  br label %70

55:                                               ; preds = %30
  %56 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %8, align 8
  %57 = bitcast %union.hdmi_infoframe* %56 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %8, align 8
  %64 = bitcast %union.hdmi_infoframe* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %55
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %69, %52, %29
  %71 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %13, align 4
  switch i32 %72, label %74 [
    i32 0, label %73
    i32 1, label %73
  ]

73:                                               ; preds = %70, %70
  ret void

74:                                               ; preds = %70
  unreachable
}

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @intel_hdmi_infoframe_enable(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @hdmi_infoframe_unpack(%union.hdmi_infoframe*, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
