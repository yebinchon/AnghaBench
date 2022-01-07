; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_set_audio_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_set_audio_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@HDMI0_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI0_AUDIO_SAMPLE_SEND = common dso_local global i32 0, align 4
@HDMI0_60958_CS_UPDATE = common dso_local global i32 0, align 4
@HDMI0_AUDIO_DELAY_EN_MASK = common dso_local global i32 0, align 4
@HDMI0_AUDIO_PACKETS_PER_LINE_MASK = common dso_local global i32 0, align 4
@HDMI0_INFOFRAME_CONTROL0 = common dso_local global i64 0, align 8
@HDMI0_AUDIO_INFO_SEND = common dso_local global i32 0, align 4
@HDMI0_AUDIO_INFO_UPDATE = common dso_local global i32 0, align 4
@HDMI0_INFOFRAME_CONTROL1 = common dso_local global i64 0, align 8
@HDMI0_AUDIO_INFO_LINE_MASK = common dso_local global i32 0, align 4
@HDMI0_GENERIC_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI0_GENERIC0_SEND = common dso_local global i32 0, align 4
@HDMI0_GENERIC0_CONT = common dso_local global i32 0, align 4
@HDMI0_GENERIC0_UPDATE = common dso_local global i32 0, align 4
@HDMI0_GENERIC1_SEND = common dso_local global i32 0, align 4
@HDMI0_GENERIC1_CONT = common dso_local global i32 0, align 4
@HDMI0_GENERIC0_LINE_MASK = common dso_local global i32 0, align 4
@HDMI0_GENERIC1_LINE_MASK = common dso_local global i32 0, align 4
@HDMI0_60958_0 = common dso_local global i64 0, align 8
@HDMI0_60958_CS_CHANNEL_NUMBER_L_MASK = common dso_local global i32 0, align 4
@HDMI0_60958_CS_CLOCK_ACCURACY_MASK = common dso_local global i32 0, align 4
@HDMI0_60958_1 = common dso_local global i64 0, align 8
@HDMI0_60958_CS_CHANNEL_NUMBER_R_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_set_audio_packet(%struct.drm_encoder* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %6, align 8
  %13 = load i64, i64* @HDMI0_AUDIO_PACKET_CONTROL, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* @HDMI0_AUDIO_SAMPLE_SEND, align 4
  %17 = call i32 @HDMI0_AUDIO_DELAY_EN(i32 1)
  %18 = or i32 %16, %17
  %19 = call i32 @HDMI0_AUDIO_PACKETS_PER_LINE(i32 3)
  %20 = or i32 %18, %19
  %21 = load i32, i32* @HDMI0_60958_CS_UPDATE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @HDMI0_AUDIO_SAMPLE_SEND, align 4
  %24 = load i32, i32* @HDMI0_AUDIO_DELAY_EN_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HDMI0_AUDIO_PACKETS_PER_LINE_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @HDMI0_60958_CS_UPDATE, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = call i32 @WREG32_P(i64 %15, i32 %22, i32 %30)
  %32 = load i64, i64* @HDMI0_INFOFRAME_CONTROL0, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @HDMI0_AUDIO_INFO_SEND, align 4
  %36 = load i32, i32* @HDMI0_AUDIO_INFO_UPDATE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @WREG32_OR(i64 %34, i32 %37)
  %39 = load i64, i64* @HDMI0_INFOFRAME_CONTROL1, align 8
  %40 = load i64, i64* %4, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @HDMI0_AUDIO_INFO_LINE(i32 2)
  %43 = load i32, i32* @HDMI0_AUDIO_INFO_LINE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = call i32 @WREG32_P(i64 %41, i32 %42, i32 %44)
  %46 = load i64, i64* @HDMI0_GENERIC_PACKET_CONTROL, align 8
  %47 = load i64, i64* %4, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* @HDMI0_GENERIC0_SEND, align 4
  %50 = load i32, i32* @HDMI0_GENERIC0_CONT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @HDMI0_GENERIC0_UPDATE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @HDMI0_GENERIC1_SEND, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @HDMI0_GENERIC1_CONT, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @HDMI0_GENERIC0_LINE_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @HDMI0_GENERIC1_LINE_MASK, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = call i32 @WREG32_AND(i64 %48, i32 %62)
  %64 = load i64, i64* @HDMI0_60958_0, align 8
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @HDMI0_60958_CS_CHANNEL_NUMBER_L(i32 1)
  %68 = load i32, i32* @HDMI0_60958_CS_CHANNEL_NUMBER_L_MASK, align 4
  %69 = load i32, i32* @HDMI0_60958_CS_CLOCK_ACCURACY_MASK, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = call i32 @WREG32_P(i64 %66, i32 %67, i32 %71)
  %73 = load i64, i64* @HDMI0_60958_1, align 8
  %74 = load i64, i64* %4, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @HDMI0_60958_CS_CHANNEL_NUMBER_R(i32 2)
  %77 = load i32, i32* @HDMI0_60958_CS_CHANNEL_NUMBER_R_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = call i32 @WREG32_P(i64 %75, i32 %76, i32 %78)
  ret void
}

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

declare dso_local i32 @HDMI0_AUDIO_DELAY_EN(i32) #1

declare dso_local i32 @HDMI0_AUDIO_PACKETS_PER_LINE(i32) #1

declare dso_local i32 @WREG32_OR(i64, i32) #1

declare dso_local i32 @HDMI0_AUDIO_INFO_LINE(i32) #1

declare dso_local i32 @WREG32_AND(i64, i32) #1

declare dso_local i32 @HDMI0_60958_CS_CHANNEL_NUMBER_L(i32) #1

declare dso_local i32 @HDMI0_60958_CS_CHANNEL_NUMBER_R(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
