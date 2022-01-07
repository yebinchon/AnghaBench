; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_stream_encoder_update_hdmi_info_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_stream_encoder_update_hdmi_info_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.encoder_info_frame = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn10_stream_encoder = type { i32 }

@HDMI_DB_CONTROL = common dso_local global i32 0, align 4
@HDMI_DB_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*, %struct.encoder_info_frame*)* @enc2_stream_encoder_update_hdmi_info_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc2_stream_encoder_update_hdmi_info_packets(%struct.stream_encoder* %0, %struct.encoder_info_frame* %1) #0 {
  %3 = alloca %struct.stream_encoder*, align 8
  %4 = alloca %struct.encoder_info_frame*, align 8
  %5 = alloca %struct.dcn10_stream_encoder*, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %3, align 8
  store %struct.encoder_info_frame* %1, %struct.encoder_info_frame** %4, align 8
  %6 = load %struct.stream_encoder*, %struct.stream_encoder** %3, align 8
  %7 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %6)
  store %struct.dcn10_stream_encoder* %7, %struct.dcn10_stream_encoder** %5, align 8
  %8 = load i32, i32* @HDMI_DB_CONTROL, align 4
  %9 = load i32, i32* @HDMI_DB_DISABLE, align 4
  %10 = call i32 @REG_UPDATE(i32 %8, i32 %9, i32 1)
  %11 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %5, align 8
  %12 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %13 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %12, i32 0, i32 5
  %14 = call i32 @enc2_update_hdmi_info_packet(%struct.dcn10_stream_encoder* %11, i32 0, i32* %13)
  %15 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %5, align 8
  %16 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %17 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %16, i32 0, i32 4
  %18 = call i32 @enc2_update_hdmi_info_packet(%struct.dcn10_stream_encoder* %15, i32 5, i32* %17)
  %19 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %5, align 8
  %20 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %21 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %20, i32 0, i32 3
  %22 = call i32 @enc2_update_hdmi_info_packet(%struct.dcn10_stream_encoder* %19, i32 2, i32* %21)
  %23 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %5, align 8
  %24 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %25 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %24, i32 0, i32 2
  %26 = call i32 @enc2_update_hdmi_info_packet(%struct.dcn10_stream_encoder* %23, i32 1, i32* %25)
  %27 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %5, align 8
  %28 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %29 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %28, i32 0, i32 1
  %30 = call i32 @enc2_update_hdmi_info_packet(%struct.dcn10_stream_encoder* %27, i32 3, i32* %29)
  %31 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %5, align 8
  %32 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %33 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %32, i32 0, i32 0
  %34 = call i32 @enc2_update_hdmi_info_packet(%struct.dcn10_stream_encoder* %31, i32 4, i32* %33)
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @enc2_update_hdmi_info_packet(%struct.dcn10_stream_encoder*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
