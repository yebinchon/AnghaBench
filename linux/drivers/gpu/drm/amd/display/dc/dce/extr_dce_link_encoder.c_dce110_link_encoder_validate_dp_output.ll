; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_validate_dp_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_validate_dp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_link_encoder = type { i32 }
%struct.dc_crtc_timing = type { i64 }

@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_link_encoder_validate_dp_output(%struct.dce110_link_encoder* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dce110_link_encoder*, align 8
  %5 = alloca %struct.dc_crtc_timing*, align 8
  store %struct.dce110_link_encoder* %0, %struct.dce110_link_encoder** %4, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %5, align 8
  %6 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %7 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
