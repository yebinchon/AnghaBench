; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_set_avi_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_set_avi_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_encoder = type { i64, %struct.TYPE_5__*, %struct.radeon_encoder_atom_dig* }
%struct.TYPE_5__ = type { i32 (%struct.radeon_device*, i32, i32*, i32)* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_connector = type { i32 }
%struct.hdmi_avi_infoframe = type { i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@HDMI_AVI_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to setup AVI infoframe: %d\0A\00", align 1
@RADEON_OUTPUT_CSC_BYPASS = common dso_local global i64 0, align 8
@RADEON_OUTPUT_CSC_TVRGB = common dso_local global i64 0, align 8
@HDMI_QUANTIZATION_RANGE_LIMITED = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to pack AVI infoframe: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*)* @radeon_audio_set_avi_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_audio_set_avi_packet(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hdmi_avi_infoframe, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %6, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %20)
  store %struct.radeon_encoder* %21, %struct.radeon_encoder** %7, align 8
  %22 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %23 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %22, i32 0, i32 2
  %24 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %23, align 8
  store %struct.radeon_encoder_atom_dig* %24, %struct.radeon_encoder_atom_dig** %8, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %26 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %25)
  store %struct.drm_connector* %26, %struct.drm_connector** %9, align 8
  %27 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %28 = load i32, i32* @HDMI_AVI_INFOFRAME_SIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %10, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  %33 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %34 = icmp ne %struct.drm_connector* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %115

38:                                               ; preds = %2
  %39 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %12, %struct.drm_connector* %39, %struct.drm_display_mode* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %115

48:                                               ; preds = %38
  %49 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %50 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RADEON_OUTPUT_CSC_BYPASS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %57 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %58 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @RADEON_OUTPUT_CSC_TVRGB, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @HDMI_QUANTIZATION_RANGE_LIMITED, align 4
  br label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @HDMI_QUANTIZATION_RANGE_FULL, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = call i32 @drm_hdmi_avi_infoframe_quant_range(%struct.hdmi_avi_infoframe* %12, %struct.drm_connector* %55, %struct.drm_display_mode* %56, i32 %67)
  br label %69

69:                                               ; preds = %66, %48
  %70 = mul nuw i64 4, %30
  %71 = trunc i64 %70 to i32
  %72 = call i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %12, i32* %32, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %115

79:                                               ; preds = %69
  %80 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %81 = icmp ne %struct.radeon_encoder_atom_dig* %80, null
  br i1 %81, label %82, label %114

82:                                               ; preds = %79
  %83 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %84 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = icmp ne %struct.TYPE_6__* %85, null
  br i1 %86, label %87, label %114

87:                                               ; preds = %82
  %88 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %89 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = icmp ne %struct.TYPE_5__* %90, null
  br i1 %91, label %92, label %114

92:                                               ; preds = %87
  %93 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %94 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32 (%struct.radeon_device*, i32, i32*, i32)*, i32 (%struct.radeon_device*, i32, i32*, i32)** %96, align 8
  %98 = icmp ne i32 (%struct.radeon_device*, i32, i32*, i32)* %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %92
  %100 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %101 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32 (%struct.radeon_device*, i32, i32*, i32)*, i32 (%struct.radeon_device*, i32, i32*, i32)** %103, align 8
  %105 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %106 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %107 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nuw i64 4, %30
  %112 = trunc i64 %111 to i32
  %113 = call i32 %104(%struct.radeon_device* %105, i32 %110, i32* %32, i32 %112)
  br label %114

114:                                              ; preds = %99, %92, %87, %82, %79
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %115

115:                                              ; preds = %114, %75, %44, %35
  %116 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, %struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_quant_range(%struct.hdmi_avi_infoframe*, %struct.drm_connector*, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
