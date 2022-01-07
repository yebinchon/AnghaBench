; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_stream_encoder_stop_hdmi_info_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_stream_encoder_stop_hdmi_info_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }

@HDMI_GENERIC_PACKET_CONTROL0 = common dso_local global i32 0, align 4
@HDMI_GENERIC0_CONT = common dso_local global i32 0, align 4
@HDMI_GENERIC0_SEND = common dso_local global i32 0, align 4
@HDMI_GENERIC1_CONT = common dso_local global i32 0, align 4
@HDMI_GENERIC1_SEND = common dso_local global i32 0, align 4
@HDMI_GENERIC_PACKET_CONTROL1 = common dso_local global i32 0, align 4
@HDMI_GENERIC0_LINE = common dso_local global i32 0, align 4
@HDMI_GENERIC1_LINE = common dso_local global i32 0, align 4
@HDMI_GENERIC2_CONT = common dso_local global i32 0, align 4
@HDMI_GENERIC2_SEND = common dso_local global i32 0, align 4
@HDMI_GENERIC3_CONT = common dso_local global i32 0, align 4
@HDMI_GENERIC3_SEND = common dso_local global i32 0, align 4
@HDMI_GENERIC_PACKET_CONTROL2 = common dso_local global i32 0, align 4
@HDMI_GENERIC2_LINE = common dso_local global i32 0, align 4
@HDMI_GENERIC3_LINE = common dso_local global i32 0, align 4
@HDMI_GENERIC4_CONT = common dso_local global i32 0, align 4
@HDMI_GENERIC4_SEND = common dso_local global i32 0, align 4
@HDMI_GENERIC5_CONT = common dso_local global i32 0, align 4
@HDMI_GENERIC5_SEND = common dso_local global i32 0, align 4
@HDMI_GENERIC_PACKET_CONTROL3 = common dso_local global i32 0, align 4
@HDMI_GENERIC4_LINE = common dso_local global i32 0, align 4
@HDMI_GENERIC5_LINE = common dso_local global i32 0, align 4
@HDMI_GENERIC6_CONT = common dso_local global i32 0, align 4
@HDMI_GENERIC6_SEND = common dso_local global i32 0, align 4
@HDMI_GENERIC7_CONT = common dso_local global i32 0, align 4
@HDMI_GENERIC7_SEND = common dso_local global i32 0, align 4
@HDMI_GENERIC_PACKET_CONTROL4 = common dso_local global i32 0, align 4
@HDMI_GENERIC6_LINE = common dso_local global i32 0, align 4
@HDMI_GENERIC7_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*)* @enc2_stream_encoder_stop_hdmi_info_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc2_stream_encoder_stop_hdmi_info_packets(%struct.stream_encoder* %0) #0 {
  %2 = alloca %struct.stream_encoder*, align 8
  %3 = alloca %struct.dcn10_stream_encoder*, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %2, align 8
  %4 = load %struct.stream_encoder*, %struct.stream_encoder** %2, align 8
  %5 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %4)
  store %struct.dcn10_stream_encoder* %5, %struct.dcn10_stream_encoder** %3, align 8
  %6 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL0, align 4
  %7 = load i32, i32* @HDMI_GENERIC0_CONT, align 4
  %8 = load i32, i32* @HDMI_GENERIC0_SEND, align 4
  %9 = load i32, i32* @HDMI_GENERIC1_CONT, align 4
  %10 = load i32, i32* @HDMI_GENERIC1_SEND, align 4
  %11 = call i32 @REG_SET_4(i32 %6, i32 0, i32 %7, i32 0, i32 %8, i32 0, i32 %9, i32 0, i32 %10, i32 0)
  %12 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL1, align 4
  %13 = load i32, i32* @HDMI_GENERIC0_LINE, align 4
  %14 = load i32, i32* @HDMI_GENERIC1_LINE, align 4
  %15 = call i32 @REG_SET_2(i32 %12, i32 0, i32 %13, i32 0, i32 %14, i32 0)
  %16 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL0, align 4
  %17 = load i32, i32* @HDMI_GENERIC2_CONT, align 4
  %18 = load i32, i32* @HDMI_GENERIC2_SEND, align 4
  %19 = load i32, i32* @HDMI_GENERIC3_CONT, align 4
  %20 = load i32, i32* @HDMI_GENERIC3_SEND, align 4
  %21 = call i32 @REG_SET_4(i32 %16, i32 0, i32 %17, i32 0, i32 %18, i32 0, i32 %19, i32 0, i32 %20, i32 0)
  %22 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL2, align 4
  %23 = load i32, i32* @HDMI_GENERIC2_LINE, align 4
  %24 = load i32, i32* @HDMI_GENERIC3_LINE, align 4
  %25 = call i32 @REG_SET_2(i32 %22, i32 0, i32 %23, i32 0, i32 %24, i32 0)
  %26 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL0, align 4
  %27 = load i32, i32* @HDMI_GENERIC4_CONT, align 4
  %28 = load i32, i32* @HDMI_GENERIC4_SEND, align 4
  %29 = load i32, i32* @HDMI_GENERIC5_CONT, align 4
  %30 = load i32, i32* @HDMI_GENERIC5_SEND, align 4
  %31 = call i32 @REG_SET_4(i32 %26, i32 0, i32 %27, i32 0, i32 %28, i32 0, i32 %29, i32 0, i32 %30, i32 0)
  %32 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL3, align 4
  %33 = load i32, i32* @HDMI_GENERIC4_LINE, align 4
  %34 = load i32, i32* @HDMI_GENERIC5_LINE, align 4
  %35 = call i32 @REG_SET_2(i32 %32, i32 0, i32 %33, i32 0, i32 %34, i32 0)
  %36 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL0, align 4
  %37 = load i32, i32* @HDMI_GENERIC6_CONT, align 4
  %38 = load i32, i32* @HDMI_GENERIC6_SEND, align 4
  %39 = load i32, i32* @HDMI_GENERIC7_CONT, align 4
  %40 = load i32, i32* @HDMI_GENERIC7_SEND, align 4
  %41 = call i32 @REG_SET_4(i32 %36, i32 0, i32 %37, i32 0, i32 %38, i32 0, i32 %39, i32 0, i32 %40, i32 0)
  %42 = load i32, i32* @HDMI_GENERIC_PACKET_CONTROL4, align 4
  %43 = load i32, i32* @HDMI_GENERIC6_LINE, align 4
  %44 = load i32, i32* @HDMI_GENERIC7_LINE, align 4
  %45 = call i32 @REG_SET_2(i32 %42, i32 0, i32 %43, i32 0, i32 %44, i32 0)
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
