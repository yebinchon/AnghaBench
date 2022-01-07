; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_audio_set_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_audio_set_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@mmAFMT_INFOFRAME_CONTROL0 = common dso_local global i64 0, align 8
@AFMT_INFOFRAME_CONTROL0 = common dso_local global i32 0, align 4
@AFMT_AUDIO_INFO_UPDATE = common dso_local global i32 0, align 4
@mmAFMT_60958_0 = common dso_local global i64 0, align 8
@AFMT_60958_0 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_L = common dso_local global i32 0, align 4
@mmAFMT_60958_1 = common dso_local global i64 0, align 8
@AFMT_60958_1 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_R = common dso_local global i32 0, align 4
@mmAFMT_60958_2 = common dso_local global i64 0, align 8
@AFMT_60958_2 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_2 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_3 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_4 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_5 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_6 = common dso_local global i32 0, align 4
@AFMT_60958_CS_CHANNEL_NUMBER_7 = common dso_local global i32 0, align 4
@mmAFMT_AUDIO_PACKET_CONTROL2 = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL2 = common dso_local global i32 0, align 4
@AFMT_AUDIO_CHANNEL_ENABLE = common dso_local global i32 0, align 4
@mmHDMI_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI_AUDIO_PACKET_CONTROL = common dso_local global i32 0, align 4
@HDMI_AUDIO_DELAY_EN = common dso_local global i32 0, align 4
@HDMI_AUDIO_PACKETS_PER_LINE = common dso_local global i32 0, align 4
@mmAFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i32 0, align 4
@AFMT_RESET_FIFO_WHEN_AUDIO_DIS = common dso_local global i32 0, align 4
@AFMT_60958_CS_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @dce_v6_0_audio_set_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v6_0_audio_set_packet(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_encoder*, align 8
  %6 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %4, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %15 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %14)
  store %struct.amdgpu_encoder* %15, %struct.amdgpu_encoder** %5, align 8
  %16 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %17, align 8
  store %struct.amdgpu_encoder_atom_dig* %18, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %19 = load i64, i64* @mmAFMT_INFOFRAME_CONTROL0, align 8
  %20 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %19, %24
  %26 = call i32 @RREG32(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @AFMT_INFOFRAME_CONTROL0, align 4
  %29 = load i32, i32* @AFMT_AUDIO_INFO_UPDATE, align 4
  %30 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29, i32 1)
  store i32 %30, i32* %7, align 4
  %31 = load i64, i64* @mmAFMT_INFOFRAME_CONTROL0, align 8
  %32 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %33 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %31, %36
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @WREG32(i64 %37, i32 %38)
  %40 = load i64, i64* @mmAFMT_60958_0, align 8
  %41 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %42 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %40, %45
  %47 = call i32 @RREG32(i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @AFMT_60958_0, align 4
  %50 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_L, align 4
  %51 = call i32 @REG_SET_FIELD(i32 %48, i32 %49, i32 %50, i32 1)
  store i32 %51, i32* %7, align 4
  %52 = load i64, i64* @mmAFMT_60958_0, align 8
  %53 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %54 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %52, %57
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @WREG32(i64 %58, i32 %59)
  %61 = load i64, i64* @mmAFMT_60958_1, align 8
  %62 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %63 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %61, %66
  %68 = call i32 @RREG32(i64 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @AFMT_60958_1, align 4
  %71 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_R, align 4
  %72 = call i32 @REG_SET_FIELD(i32 %69, i32 %70, i32 %71, i32 2)
  store i32 %72, i32* %7, align 4
  %73 = load i64, i64* @mmAFMT_60958_1, align 8
  %74 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %75 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %73, %78
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @WREG32(i64 %79, i32 %80)
  %82 = load i64, i64* @mmAFMT_60958_2, align 8
  %83 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %84 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %82, %87
  %89 = call i32 @RREG32(i64 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @AFMT_60958_2, align 4
  %92 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_2, align 4
  %93 = call i32 @REG_SET_FIELD(i32 %90, i32 %91, i32 %92, i32 3)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @AFMT_60958_2, align 4
  %96 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_3, align 4
  %97 = call i32 @REG_SET_FIELD(i32 %94, i32 %95, i32 %96, i32 4)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @AFMT_60958_2, align 4
  %100 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_4, align 4
  %101 = call i32 @REG_SET_FIELD(i32 %98, i32 %99, i32 %100, i32 5)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @AFMT_60958_2, align 4
  %104 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_5, align 4
  %105 = call i32 @REG_SET_FIELD(i32 %102, i32 %103, i32 %104, i32 6)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @AFMT_60958_2, align 4
  %108 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_6, align 4
  %109 = call i32 @REG_SET_FIELD(i32 %106, i32 %107, i32 %108, i32 7)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @AFMT_60958_2, align 4
  %112 = load i32, i32* @AFMT_60958_CS_CHANNEL_NUMBER_7, align 4
  %113 = call i32 @REG_SET_FIELD(i32 %110, i32 %111, i32 %112, i32 8)
  store i32 %113, i32* %7, align 4
  %114 = load i64, i64* @mmAFMT_60958_2, align 8
  %115 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %116 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %114, %119
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @WREG32(i64 %120, i32 %121)
  %123 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL2, align 8
  %124 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %125 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %123, %128
  %130 = call i32 @RREG32(i64 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL2, align 4
  %133 = load i32, i32* @AFMT_AUDIO_CHANNEL_ENABLE, align 4
  %134 = call i32 @REG_SET_FIELD(i32 %131, i32 %132, i32 %133, i32 255)
  store i32 %134, i32* %7, align 4
  %135 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL2, align 8
  %136 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %137 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %135, %140
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @WREG32(i64 %141, i32 %142)
  %144 = load i64, i64* @mmHDMI_AUDIO_PACKET_CONTROL, align 8
  %145 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %146 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %144, %149
  %151 = call i32 @RREG32(i64 %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @HDMI_AUDIO_PACKET_CONTROL, align 4
  %154 = load i32, i32* @HDMI_AUDIO_DELAY_EN, align 4
  %155 = call i32 @REG_SET_FIELD(i32 %152, i32 %153, i32 %154, i32 1)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @HDMI_AUDIO_PACKET_CONTROL, align 4
  %158 = load i32, i32* @HDMI_AUDIO_PACKETS_PER_LINE, align 4
  %159 = call i32 @REG_SET_FIELD(i32 %156, i32 %157, i32 %158, i32 3)
  store i32 %159, i32* %7, align 4
  %160 = load i64, i64* @mmHDMI_AUDIO_PACKET_CONTROL, align 8
  %161 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %162 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %160, %165
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @WREG32(i64 %166, i32 %167)
  %169 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL, align 8
  %170 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %171 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %169, %174
  %176 = call i32 @RREG32(i64 %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL, align 4
  %179 = load i32, i32* @AFMT_RESET_FIFO_WHEN_AUDIO_DIS, align 4
  %180 = call i32 @REG_SET_FIELD(i32 %177, i32 %178, i32 %179, i32 1)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL, align 4
  %183 = load i32, i32* @AFMT_60958_CS_UPDATE, align 4
  %184 = call i32 @REG_SET_FIELD(i32 %181, i32 %182, i32 %183, i32 1)
  store i32 %184, i32* %7, align 4
  %185 = load i64, i64* @mmAFMT_AUDIO_PACKET_CONTROL, align 8
  %186 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %6, align 8
  %187 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %186, i32 0, i32 0
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %185, %190
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @WREG32(i64 %191, i32 %192)
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
