; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_set_mst_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_set_mst_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.fixed31_32 = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }

@DP_MSE_RATE_CNTL = common dso_local global i32 0, align 4
@DP_MSE_RATE_X = common dso_local global i32 0, align 4
@DP_MSE_RATE_Y = common dso_local global i32 0, align 4
@DP_MSE_RATE_UPDATE = common dso_local global i32 0, align 4
@DP_MSE_RATE_UPDATE_PENDING = common dso_local global i32 0, align 4
@DP_MST_UPDATE_MAX_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc1_stream_encoder_set_mst_bandwidth(%struct.stream_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.fixed31_32, align 4
  %4 = alloca %struct.stream_encoder*, align 8
  %5 = alloca %struct.dcn10_stream_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.stream_encoder* %0, %struct.stream_encoder** %4, align 8
  %9 = load %struct.stream_encoder*, %struct.stream_encoder** %4, align 8
  %10 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %9)
  store %struct.dcn10_stream_encoder* %10, %struct.dcn10_stream_encoder** %5, align 8
  %11 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dc_fixpt_floor(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dc_fixpt_sub_int(i32 %16, i32 %14)
  %18 = call i32 @dc_fixpt_shl(i32 %17, i32 26)
  %19 = call i32 @dc_fixpt_ceil(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @DP_MSE_RATE_CNTL, align 4
  %21 = load i32, i32* @DP_MSE_RATE_X, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DP_MSE_RATE_Y, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @REG_SET_2(i32 %20, i32 0, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @DP_MSE_RATE_UPDATE, align 4
  %27 = load i32, i32* @DP_MSE_RATE_UPDATE_PENDING, align 4
  %28 = load i32, i32* @DP_MST_UPDATE_MAX_RETRY, align 4
  %29 = call i32 @REG_WAIT(i32 %26, i32 %27, i32 0, i32 10, i32 %28)
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @dc_fixpt_floor(i32) #1

declare dso_local i32 @dc_fixpt_ceil(i32) #1

declare dso_local i32 @dc_fixpt_shl(i32, i32) #1

declare dso_local i32 @dc_fixpt_sub_int(i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
