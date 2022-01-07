; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_set_stream_attribute_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_set_stream_attribute_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_stream_encoder = type { i32 }
%struct.dc_crtc_timing = type { i32 }

@DIG_FE_CNTL = common dso_local global i32 0, align 4
@TMDS_PIXEL_ENCODING = common dso_local global i32 0, align 4
@TMDS_COLOR_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc1_stream_encoder_set_stream_attribute_helper(%struct.dcn10_stream_encoder* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca %struct.dcn10_stream_encoder*, align 8
  %4 = alloca %struct.dc_crtc_timing*, align 8
  store %struct.dcn10_stream_encoder* %0, %struct.dcn10_stream_encoder** %3, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %4, align 8
  %5 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %6 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %12 [
    i32 128, label %8
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @DIG_FE_CNTL, align 4
  %10 = load i32, i32* @TMDS_PIXEL_ENCODING, align 4
  %11 = call i32 @REG_UPDATE(i32 %9, i32 %10, i32 1)
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @DIG_FE_CNTL, align 4
  %14 = load i32, i32* @TMDS_PIXEL_ENCODING, align 4
  %15 = call i32 @REG_UPDATE(i32 %13, i32 %14, i32 0)
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i32, i32* @DIG_FE_CNTL, align 4
  %18 = load i32, i32* @TMDS_COLOR_FORMAT, align 4
  %19 = call i32 @REG_UPDATE(i32 %17, i32 %18, i32 0)
  ret void
}

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
