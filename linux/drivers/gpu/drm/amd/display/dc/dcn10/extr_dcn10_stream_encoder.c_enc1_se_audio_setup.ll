; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_se_audio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_se_audio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.audio_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AFMT_AUDIO_SRC_CONTROL = common dso_local global i32 0, align 4
@AFMT_AUDIO_SRC_SELECT = common dso_local global i32 0, align 4
@AFMT_AUDIO_PACKET_CONTROL2 = common dso_local global i32 0, align 4
@AFMT_AUDIO_CHANNEL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*, i32, %struct.audio_info*)* @enc1_se_audio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc1_se_audio_setup(%struct.stream_encoder* %0, i32 %1, %struct.audio_info* %2) #0 {
  %4 = alloca %struct.stream_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.audio_info*, align 8
  %7 = alloca %struct.dcn10_stream_encoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 4
  store %struct.stream_encoder* %0, %struct.stream_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.audio_info* %2, %struct.audio_info** %6, align 8
  %11 = load %struct.stream_encoder*, %struct.stream_encoder** %4, align 8
  %12 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %11)
  store %struct.dcn10_stream_encoder* %12, %struct.dcn10_stream_encoder** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.audio_info*, %struct.audio_info** %6, align 8
  %14 = call i32 @ASSERT(%struct.audio_info* %13)
  %15 = load %struct.audio_info*, %struct.audio_info** %6, align 8
  %16 = icmp eq %struct.audio_info* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.audio_info*, %struct.audio_info** %6, align 8
  %20 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.audio_info*, %struct.audio_info** %6, align 8
  %25 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @speakers_to_channels(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @AFMT_AUDIO_SRC_CONTROL, align 4
  %33 = load i32, i32* @AFMT_AUDIO_SRC_SELECT, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @REG_SET(i32 %32, i32 0, i32 %33, i32 %34)
  %36 = load i32, i32* @AFMT_AUDIO_PACKET_CONTROL2, align 4
  %37 = load i32, i32* @AFMT_AUDIO_CHANNEL_ENABLE, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @REG_UPDATE(i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @ASSERT(%struct.audio_info*) #1

declare dso_local i32 @speakers_to_channels(i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
