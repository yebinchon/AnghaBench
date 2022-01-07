; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_set_audio_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_set_audio_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@AFMT_INFOFRAME_CONTROL0 = common dso_local global i64 0, align 8
@AFMT_AUDIO_INFO_UPDATE = common dso_local global i32 0, align 4
@AFMT_60958_0 = common dso_local global i64 0, align 8
@AFMT_60958_1 = common dso_local global i64 0, align 8
@AFMT_60958_2 = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL2 = common dso_local global i64 0, align 8
@HDMI_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_RESET_FIFO_WHEN_AUDIO_DIS = common dso_local global i32 0, align 4
@AFMT_60958_CS_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce4_set_audio_packet(%struct.drm_encoder* %0, i64 %1) #0 {
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
  %13 = load i64, i64* @AFMT_INFOFRAME_CONTROL0, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* @AFMT_AUDIO_INFO_UPDATE, align 4
  %17 = call i32 @WREG32(i64 %15, i32 %16)
  %18 = load i64, i64* @AFMT_60958_0, align 8
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @AFMT_60958_CS_CHANNEL_NUMBER_L(i32 1)
  %22 = call i32 @WREG32(i64 %20, i32 %21)
  %23 = load i64, i64* @AFMT_60958_1, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @AFMT_60958_CS_CHANNEL_NUMBER_R(i32 2)
  %27 = call i32 @WREG32(i64 %25, i32 %26)
  %28 = load i64, i64* @AFMT_60958_2, align 8
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @AFMT_60958_CS_CHANNEL_NUMBER_2(i32 3)
  %32 = call i32 @AFMT_60958_CS_CHANNEL_NUMBER_3(i32 4)
  %33 = or i32 %31, %32
  %34 = call i32 @AFMT_60958_CS_CHANNEL_NUMBER_4(i32 5)
  %35 = or i32 %33, %34
  %36 = call i32 @AFMT_60958_CS_CHANNEL_NUMBER_5(i32 6)
  %37 = or i32 %35, %36
  %38 = call i32 @AFMT_60958_CS_CHANNEL_NUMBER_6(i32 7)
  %39 = or i32 %37, %38
  %40 = call i32 @AFMT_60958_CS_CHANNEL_NUMBER_7(i32 8)
  %41 = or i32 %39, %40
  %42 = call i32 @WREG32(i64 %30, i32 %41)
  %43 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL2, align 8
  %44 = load i64, i64* %4, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @AFMT_AUDIO_CHANNEL_ENABLE(i32 255)
  %47 = call i32 @WREG32(i64 %45, i32 %46)
  %48 = load i64, i64* @HDMI_AUDIO_PACKET_CONTROL, align 8
  %49 = load i64, i64* %4, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @HDMI_AUDIO_DELAY_EN(i32 1)
  %52 = call i32 @HDMI_AUDIO_PACKETS_PER_LINE(i32 3)
  %53 = or i32 %51, %52
  %54 = call i32 @WREG32(i64 %50, i32 %53)
  %55 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %56 = load i64, i64* %4, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* @AFMT_RESET_FIFO_WHEN_AUDIO_DIS, align 4
  %59 = load i32, i32* @AFMT_60958_CS_UPDATE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @WREG32_OR(i64 %57, i32 %60)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @AFMT_60958_CS_CHANNEL_NUMBER_L(i32) #1

declare dso_local i32 @AFMT_60958_CS_CHANNEL_NUMBER_R(i32) #1

declare dso_local i32 @AFMT_60958_CS_CHANNEL_NUMBER_2(i32) #1

declare dso_local i32 @AFMT_60958_CS_CHANNEL_NUMBER_3(i32) #1

declare dso_local i32 @AFMT_60958_CS_CHANNEL_NUMBER_4(i32) #1

declare dso_local i32 @AFMT_60958_CS_CHANNEL_NUMBER_5(i32) #1

declare dso_local i32 @AFMT_60958_CS_CHANNEL_NUMBER_6(i32) #1

declare dso_local i32 @AFMT_60958_CS_CHANNEL_NUMBER_7(i32) #1

declare dso_local i32 @AFMT_AUDIO_CHANNEL_ENABLE(i32) #1

declare dso_local i32 @HDMI_AUDIO_DELAY_EN(i32) #1

declare dso_local i32 @HDMI_AUDIO_PACKETS_PER_LINE(i32) #1

declare dso_local i32 @WREG32_OR(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
