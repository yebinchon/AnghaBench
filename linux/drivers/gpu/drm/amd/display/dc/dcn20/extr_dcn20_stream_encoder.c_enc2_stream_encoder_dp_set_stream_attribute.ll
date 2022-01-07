; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_stream_encoder_dp_set_stream_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_stream_encoder_dp_set_stream_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dc_crtc_timing = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }

@DP_SEC_FRAMING4 = common dso_local global i32 0, align 4
@DP_SST_SDP_SPLITTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc2_stream_encoder_dp_set_stream_attribute(%struct.stream_encoder* %0, %struct.dc_crtc_timing* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stream_encoder*, align 8
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn10_stream_encoder*, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %5, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.stream_encoder*, %struct.stream_encoder** %5, align 8
  %11 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %10)
  store %struct.dcn10_stream_encoder* %11, %struct.dcn10_stream_encoder** %9, align 8
  %12 = load %struct.stream_encoder*, %struct.stream_encoder** %5, align 8
  %13 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @enc1_stream_encoder_dp_set_stream_attribute(%struct.stream_encoder* %12, %struct.dc_crtc_timing* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @DP_SEC_FRAMING4, align 4
  %18 = load i32, i32* @DP_SST_SDP_SPLITTING, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @REG_UPDATE(i32 %17, i32 %18, i32 %19)
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @enc1_stream_encoder_dp_set_stream_attribute(%struct.stream_encoder*, %struct.dc_crtc_timing*, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
