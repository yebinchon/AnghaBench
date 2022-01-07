; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_audio_hdmi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_audio_hdmi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@mmHDMI_INFOFRAME_CONTROL0 = common dso_local global i64 0, align 8
@HDMI_INFOFRAME_CONTROL0 = common dso_local global i32 0, align 4
@HDMI_AVI_INFO_SEND = common dso_local global i32 0, align 4
@HDMI_AVI_INFO_CONT = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFO_SEND = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFO_CONT = common dso_local global i32 0, align 4
@mmHDMI_INFOFRAME_CONTROL1 = common dso_local global i64 0, align 8
@HDMI_INFOFRAME_CONTROL1 = common dso_local global i32 0, align 4
@HDMI_AVI_INFO_LINE = common dso_local global i32 0, align 4
@mmAFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i32 0, align 4
@AFMT_AUDIO_SAMPLE_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @dce_v6_0_audio_hdmi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v6_0_audio_hdmi_enable(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_encoder*, align 8
  %8 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %6, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %16)
  store %struct.amdgpu_encoder* %17, %struct.amdgpu_encoder** %7, align 8
  %18 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %19 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %18, i32 0, i32 0
  %20 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %19, align 8
  store %struct.amdgpu_encoder_atom_dig* %20, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %99

23:                                               ; preds = %2
  %24 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL0, align 8
  %25 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %26 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %24, %29
  %31 = call i32 @RREG32(i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %34 = load i32, i32* @HDMI_AVI_INFO_SEND, align 4
  %35 = call i32 @REG_SET_FIELD(i32 %32, i32 %33, i32 %34, i32 1)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %38 = load i32, i32* @HDMI_AVI_INFO_CONT, align 4
  %39 = call i32 @REG_SET_FIELD(i32 %36, i32 %37, i32 %38, i32 1)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %42 = load i32, i32* @HDMI_AUDIO_INFO_SEND, align 4
  %43 = call i32 @REG_SET_FIELD(i32 %40, i32 %41, i32 %42, i32 1)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %46 = load i32, i32* @HDMI_AUDIO_INFO_CONT, align 4
  %47 = call i32 @REG_SET_FIELD(i32 %44, i32 %45, i32 %46, i32 1)
  store i32 %47, i32* %9, align 4
  %48 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL0, align 8
  %49 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %50 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %48, %53
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @WREG32(i64 %54, i32 %55)
  %57 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL1, align 8
  %58 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %59 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %57, %62
  %64 = call i32 @RREG32(i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @HDMI_INFOFRAME_CONTROL1, align 4
  %67 = load i32, i32* @HDMI_AVI_INFO_LINE, align 4
  %68 = call i32 @REG_SET_FIELD(i32 %65, i32 %66, i32 %67, i32 2)
  store i32 %68, i32* %9, align 4
  %69 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL1, align 8
  %70 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %71 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %69, %74
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @WREG32(i64 %75, i32 %76)
  %78 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL, align 8
  %79 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %80 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %78, %83
  %85 = call i32 @RREG32(i64 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL, align 4
  %88 = load i32, i32* @AFMT_AUDIO_SAMPLE_SEND, align 4
  %89 = call i32 @REG_SET_FIELD(i32 %86, i32 %87, i32 %88, i32 1)
  store i32 %89, i32* %9, align 4
  %90 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL, align 8
  %91 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %92 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %90, %95
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @WREG32(i64 %96, i32 %97)
  br label %154

99:                                               ; preds = %2
  %100 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL0, align 8
  %101 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %102 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %100, %105
  %107 = call i32 @RREG32(i64 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %110 = load i32, i32* @HDMI_AVI_INFO_SEND, align 4
  %111 = call i32 @REG_SET_FIELD(i32 %108, i32 %109, i32 %110, i32 0)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %114 = load i32, i32* @HDMI_AVI_INFO_CONT, align 4
  %115 = call i32 @REG_SET_FIELD(i32 %112, i32 %113, i32 %114, i32 0)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %118 = load i32, i32* @HDMI_AUDIO_INFO_SEND, align 4
  %119 = call i32 @REG_SET_FIELD(i32 %116, i32 %117, i32 %118, i32 0)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @HDMI_INFOFRAME_CONTROL0, align 4
  %122 = load i32, i32* @HDMI_AUDIO_INFO_CONT, align 4
  %123 = call i32 @REG_SET_FIELD(i32 %120, i32 %121, i32 %122, i32 0)
  store i32 %123, i32* %9, align 4
  %124 = load i64, i64* @mmHDMI_INFOFRAME_CONTROL0, align 8
  %125 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %126 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %124, %129
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @WREG32(i64 %130, i32 %131)
  %133 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL, align 8
  %134 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %135 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %133, %138
  %140 = call i32 @RREG32(i64 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL, align 4
  %143 = load i32, i32* @AFMT_AUDIO_SAMPLE_SEND, align 4
  %144 = call i32 @REG_SET_FIELD(i32 %141, i32 %142, i32 %143, i32 0)
  store i32 %144, i32* %9, align 4
  %145 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL, align 8
  %146 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %147 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %145, %150
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @WREG32(i64 %151, i32 %152)
  br label %154

154:                                              ; preds = %99, %23
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
