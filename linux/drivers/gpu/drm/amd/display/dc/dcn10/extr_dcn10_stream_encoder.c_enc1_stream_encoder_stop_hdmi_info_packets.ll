; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_stop_hdmi_info_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_stop_hdmi_info_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }

@HDMI_GENERIC_PACKET_CONTROL0 = common dso_local global i32 0, align 4
@HDMI_GENERIC1_CONT = common dso_local global i32 0, align 4
@HDMI_GENERIC1_LINE = common dso_local global i32 0, align 4
@HDMI_GENERIC1_SEND = common dso_local global i32 0, align 4
@HDMI_GENERIC0_CONT = common dso_local global i32 0, align 4
@HDMI_GENERIC0_LINE = common dso_local global i32 0, align 4
@HDMI_GENERIC0_SEND = common dso_local global i32 0, align 4
@HDMI_GENERIC_PACKET_CONTROL1 = common dso_local global i32 0, align 4
@HDMI_GENERIC_PACKET_CONTROL2 = common dso_local global i32 0, align 4
@HDMI_GENERIC_PACKET_CONTROL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*)* @enc1_stream_encoder_stop_hdmi_info_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc1_stream_encoder_stop_hdmi_info_packets(%struct.stream_encoder* %0) #0 {
  %2 = alloca %struct.stream_encoder*, align 8
  %3 = alloca %struct.dcn10_stream_encoder*, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %2, align 8
  %4 = load %struct.stream_encoder*, %struct.stream_encoder** %2, align 8
  %5 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %4)
  store %struct.dcn10_stream_encoder* %5, %struct.dcn10_stream_encoder** %3, align 8
  %6 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL0, align 4
  %7 = load i32, i32* @HDMI_GENERIC1_CONT, align 4
  %8 = load i32, i32* @HDMI_GENERIC1_LINE, align 4
  %9 = load i32, i32* @HDMI_GENERIC1_SEND, align 4
  %10 = load i32, i32* @HDMI_GENERIC0_CONT, align 4
  %11 = load i32, i32* @HDMI_GENERIC0_LINE, align 4
  %12 = load i32, i32* @HDMI_GENERIC0_SEND, align 4
  %13 = call i32 @REG_SET_6(i32 %6, i32 0, i32 %7, i32 0, i32 %8, i32 0, i32 %9, i32 0, i32 %10, i32 0, i32 %11, i32 0, i32 %12, i32 0)
  %14 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL1, align 4
  %15 = load i32, i32* @HDMI_GENERIC0_CONT, align 4
  %16 = load i32, i32* @HDMI_GENERIC0_LINE, align 4
  %17 = load i32, i32* @HDMI_GENERIC0_SEND, align 4
  %18 = load i32, i32* @HDMI_GENERIC1_CONT, align 4
  %19 = load i32, i32* @HDMI_GENERIC1_LINE, align 4
  %20 = load i32, i32* @HDMI_GENERIC1_SEND, align 4
  %21 = call i32 @REG_SET_6(i32 %14, i32 0, i32 %15, i32 0, i32 %16, i32 0, i32 %17, i32 0, i32 %18, i32 0, i32 %19, i32 0, i32 %20, i32 0)
  %22 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL2, align 4
  %23 = load i32, i32* @HDMI_GENERIC0_CONT, align 4
  %24 = load i32, i32* @HDMI_GENERIC0_LINE, align 4
  %25 = load i32, i32* @HDMI_GENERIC0_SEND, align 4
  %26 = load i32, i32* @HDMI_GENERIC1_CONT, align 4
  %27 = load i32, i32* @HDMI_GENERIC1_LINE, align 4
  %28 = load i32, i32* @HDMI_GENERIC1_SEND, align 4
  %29 = call i32 @REG_SET_6(i32 %22, i32 0, i32 %23, i32 0, i32 %24, i32 0, i32 %25, i32 0, i32 %26, i32 0, i32 %27, i32 0, i32 %28, i32 0)
  %30 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL3, align 4
  %31 = load i32, i32* @HDMI_GENERIC0_CONT, align 4
  %32 = load i32, i32* @HDMI_GENERIC0_LINE, align 4
  %33 = load i32, i32* @HDMI_GENERIC0_SEND, align 4
  %34 = load i32, i32* @HDMI_GENERIC1_CONT, align 4
  %35 = load i32, i32* @HDMI_GENERIC1_LINE, align 4
  %36 = load i32, i32* @HDMI_GENERIC1_SEND, align 4
  %37 = call i32 @REG_SET_6(i32 %30, i32 0, i32 %31, i32 0, i32 %32, i32 0, i32 %33, i32 0, i32 %34, i32 0, i32 %35, i32 0, i32 %36, i32 0)
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @REG_SET_6(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
