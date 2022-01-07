; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_evergreen_hdmi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_evergreen_hdmi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.drm_connector = type { i32 }

@HDMI_INFOFRAME_CONTROL0 = common dso_local global i64 0, align 8
@HDMI_AVI_INFO_SEND = common dso_local global i32 0, align 4
@HDMI_AVI_INFO_CONT = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFO_SEND = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFO_CONT = common dso_local global i32 0, align 4
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_SAMPLE_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%sabling HDMI interface @ 0x%04X for encoder 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_hdmi_enable(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %6, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %16)
  store %struct.radeon_encoder* %17, %struct.radeon_encoder** %7, align 8
  %18 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %18, i32 0, i32 1
  %20 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %19, align 8
  store %struct.radeon_encoder_atom_dig* %20, %struct.radeon_encoder_atom_dig** %8, align 8
  %21 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %22 = icmp ne %struct.radeon_encoder_atom_dig* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %2
  br label %128

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %29
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %34 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %33)
  store %struct.drm_connector* %34, %struct.drm_connector** %9, align 8
  %35 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %36 = icmp ne %struct.drm_connector* %35, null
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %39 = call i32 @radeon_connector_edid(%struct.drm_connector* %38)
  %40 = call i64 @drm_detect_monitor_audio(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = load i64, i64* @HDMI_INFOFRAME_CONTROL0, align 8
  %44 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %45 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %43, %48
  %50 = load i32, i32* @HDMI_AVI_INFO_SEND, align 4
  %51 = load i32, i32* @HDMI_AVI_INFO_CONT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @HDMI_AUDIO_INFO_SEND, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @HDMI_AUDIO_INFO_CONT, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @WREG32(i64 %49, i32 %56)
  %58 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %59 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %60 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  %65 = load i32, i32* @AFMT_AUDIO_SAMPLE_SEND, align 4
  %66 = call i32 @WREG32_OR(i64 %64, i32 %65)
  br label %89

67:                                               ; preds = %37, %32
  %68 = load i64, i64* @HDMI_INFOFRAME_CONTROL0, align 8
  %69 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %70 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %68, %73
  %75 = load i32, i32* @HDMI_AVI_INFO_SEND, align 4
  %76 = load i32, i32* @HDMI_AVI_INFO_CONT, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @WREG32(i64 %74, i32 %77)
  %79 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %80 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %81 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %79, %84
  %86 = load i32, i32* @AFMT_AUDIO_SAMPLE_SEND, align 4
  %87 = xor i32 %86, -1
  %88 = call i32 @WREG32_AND(i64 %85, i32 %87)
  br label %89

89:                                               ; preds = %67, %42
  br label %109

90:                                               ; preds = %29
  %91 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %92 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %93 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %91, %96
  %98 = load i32, i32* @AFMT_AUDIO_SAMPLE_SEND, align 4
  %99 = xor i32 %98, -1
  %100 = call i32 @WREG32_AND(i64 %97, i32 %99)
  %101 = load i64, i64* @HDMI_INFOFRAME_CONTROL0, align 8
  %102 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %103 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %101, %106
  %108 = call i32 @WREG32(i64 %107, i32 0)
  br label %109

109:                                              ; preds = %90, %89
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %112 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 8
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %119 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %120 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %125 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %118, i64 %123, i32 %126)
  br label %128

128:                                              ; preds = %109, %28
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @drm_detect_monitor_audio(i32) #1

declare dso_local i32 @radeon_connector_edid(%struct.drm_connector*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @WREG32_OR(i64, i32) #1

declare dso_local i32 @WREG32_AND(i64, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
