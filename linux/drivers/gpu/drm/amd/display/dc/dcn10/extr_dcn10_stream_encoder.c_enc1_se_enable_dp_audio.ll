; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_se_enable_dp_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_se_enable_dp_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }

@DP_SEC_CNTL = common dso_local global i32 0, align 4
@DP_SEC_ASP_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_ATP_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_AIP_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_STREAM_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc1_se_enable_dp_audio(%struct.stream_encoder* %0) #0 {
  %2 = alloca %struct.stream_encoder*, align 8
  %3 = alloca %struct.dcn10_stream_encoder*, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %2, align 8
  %4 = load %struct.stream_encoder*, %struct.stream_encoder** %2, align 8
  %5 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %4)
  store %struct.dcn10_stream_encoder* %5, %struct.dcn10_stream_encoder** %3, align 8
  %6 = load i32, i32* @DP_SEC_CNTL, align 4
  %7 = load i32, i32* @DP_SEC_ASP_ENABLE, align 4
  %8 = call i32 @REG_UPDATE(i32 %6, i32 %7, i32 1)
  %9 = load i32, i32* @DP_SEC_CNTL, align 4
  %10 = load i32, i32* @DP_SEC_ATP_ENABLE, align 4
  %11 = load i32, i32* @DP_SEC_AIP_ENABLE, align 4
  %12 = call i32 @REG_UPDATE_2(i32 %9, i32 %10, i32 1, i32 %11, i32 1)
  %13 = load i32, i32* @DP_SEC_CNTL, align 4
  %14 = load i32, i32* @DP_SEC_STREAM_ENABLE, align 4
  %15 = call i32 @REG_UPDATE(i32 %13, i32 %14, i32 1)
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
