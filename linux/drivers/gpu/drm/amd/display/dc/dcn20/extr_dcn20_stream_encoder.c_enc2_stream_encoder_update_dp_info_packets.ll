; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_stream_encoder_update_dp_info_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_stream_encoder_update_dp_info_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.encoder_info_frame = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }

@DP_SEC_METADATA_TRANSMISSION = common dso_local global i32 0, align 4
@DP_SEC_METADATA_PACKET_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_CNTL = common dso_local global i32 0, align 4
@DP_SEC_STREAM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*, %struct.encoder_info_frame*)* @enc2_stream_encoder_update_dp_info_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc2_stream_encoder_update_dp_info_packets(%struct.stream_encoder* %0, %struct.encoder_info_frame* %1) #0 {
  %3 = alloca %struct.stream_encoder*, align 8
  %4 = alloca %struct.encoder_info_frame*, align 8
  %5 = alloca %struct.dcn10_stream_encoder*, align 8
  %6 = alloca i64, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %3, align 8
  store %struct.encoder_info_frame* %1, %struct.encoder_info_frame** %4, align 8
  %7 = load %struct.stream_encoder*, %struct.stream_encoder** %3, align 8
  %8 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %7)
  store %struct.dcn10_stream_encoder* %8, %struct.dcn10_stream_encoder** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.stream_encoder*, %struct.stream_encoder** %3, align 8
  %10 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %11 = call i32 @enc1_stream_encoder_update_dp_info_packets(%struct.stream_encoder* %9, %struct.encoder_info_frame* %10)
  %12 = load i32, i32* @DP_SEC_METADATA_TRANSMISSION, align 4
  %13 = load i32, i32* @DP_SEC_METADATA_PACKET_ENABLE, align 4
  %14 = call i32 @REG_GET(i32 %12, i32 %13, i64* %6)
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @DP_SEC_CNTL, align 4
  %19 = load i32, i32* @DP_SEC_STREAM_ENABLE, align 4
  %20 = call i32 @REG_UPDATE(i32 %18, i32 %19, i32 1)
  br label %21

21:                                               ; preds = %17, %2
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @enc1_stream_encoder_update_dp_info_packets(%struct.stream_encoder*, %struct.encoder_info_frame*) #1

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
