; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_update_audio_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_update_audio_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.r600_audio_pin = type { i32, i64, i64, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"%s with %d channels, %d Hz sampling rate, %d bits per sample,\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"playing\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"0x%02X IEC60958 status bits and 0x%02X category code\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to setup audio infoframe\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to pack audio infoframe\0A\00", align 1
@HDMI0_AUDIO_PACKET_CONTROL = common dso_local global i32 0, align 4
@HDMI0_AUDIO_TEST_EN = common dso_local global i32 0, align 4
@HDMI0_CONTROL = common dso_local global i32 0, align 4
@HDMI0_ERROR_ACK = common dso_local global i32 0, align 4
@HDMI0_INFOFRAME_CONTROL0 = common dso_local global i32 0, align 4
@HDMI0_AUDIO_INFO_SOURCE = common dso_local global i32 0, align 4
@HDMI0_AUDIO_INFO_CONT = common dso_local global i32 0, align 4
@HDMI0_AUDIO_INFO_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_hdmi_update_audio_settings(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %7 = alloca %struct.r600_audio_pin, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hdmi_audio_infoframe, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %3, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %4, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %21)
  store %struct.radeon_encoder* %22, %struct.radeon_encoder** %5, align 8
  %23 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %23, i32 0, i32 0
  %25 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %24, align 8
  store %struct.radeon_encoder_atom_dig* %25, %struct.radeon_encoder_atom_dig** %6, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  call void @r600_audio_status(%struct.r600_audio_pin* sret %7, %struct.radeon_device* %26)
  %27 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %28 = load i32, i32* @HDMI_AUDIO_INFOFRAME_SIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %8, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %9, align 8
  %33 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %34 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %39 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37, %1
  store i32 1, i32* %14, align 4
  br label %127

45:                                               ; preds = %37
  %46 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %52 = call i64 @r600_hdmi_is_audio_buffer_filled(%struct.drm_encoder* %51)
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %56 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %7, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %7, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %57, i32 %59, i32 %61)
  %63 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %7, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %7, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %68)
  %70 = call i64 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe* %10)
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %45
  %74 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %127

75:                                               ; preds = %45
  %76 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %7, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %10, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = mul nuw i64 4, %30
  %80 = trunc i64 %79 to i32
  %81 = call i64 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe* %10, i32* %32, i32 %80)
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %127

86:                                               ; preds = %75
  %87 = load i32, i32* @HDMI0_AUDIO_PACKET_CONTROL, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @RREG32(i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @HDMI0_AUDIO_TEST_EN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load i32, i32* @HDMI0_AUDIO_PACKET_CONTROL, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @HDMI0_AUDIO_TEST_EN, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = call i32 @WREG32(i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %95, %86
  %105 = load i32, i32* @HDMI0_CONTROL, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* @HDMI0_ERROR_ACK, align 4
  %109 = call i32 @WREG32_OR(i32 %107, i32 %108)
  %110 = load i32, i32* @HDMI0_INFOFRAME_CONTROL0, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* @HDMI0_AUDIO_INFO_SOURCE, align 4
  %114 = xor i32 %113, -1
  %115 = call i32 @WREG32_AND(i32 %112, i32 %114)
  %116 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %117 = mul nuw i64 4, %30
  %118 = trunc i64 %117 to i32
  %119 = call i32 @r600_hdmi_update_audio_infoframe(%struct.drm_encoder* %116, i32* %32, i32 %118)
  %120 = load i32, i32* @HDMI0_INFOFRAME_CONTROL0, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* @HDMI0_AUDIO_INFO_CONT, align 4
  %124 = load i32, i32* @HDMI0_AUDIO_INFO_UPDATE, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @WREG32_OR(i32 %122, i32 %125)
  store i32 0, i32* %14, align 4
  br label %127

127:                                              ; preds = %104, %84, %73, %44
  %128 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %14, align 4
  switch i32 %129, label %131 [
    i32 0, label %130
    i32 1, label %130
  ]

130:                                              ; preds = %127, %127
  ret void

131:                                              ; preds = %127
  unreachable
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local void @r600_audio_status(%struct.r600_audio_pin* sret, %struct.radeon_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i64 @r600_hdmi_is_audio_buffer_filled(%struct.drm_encoder*) #1

declare dso_local i64 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe*, i32*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_OR(i32, i32) #1

declare dso_local i32 @WREG32_AND(i32, i32) #1

declare dso_local i32 @r600_hdmi_update_audio_infoframe(%struct.drm_encoder*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
