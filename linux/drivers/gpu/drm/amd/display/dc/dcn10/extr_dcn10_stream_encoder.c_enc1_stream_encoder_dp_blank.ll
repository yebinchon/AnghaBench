; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_dp_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_enc1_stream_encoder_dp_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }

@DP_BLANK_MAX_RETRY = common dso_local global i32 0, align 4
@DP_VID_STREAM_CNTL = common dso_local global i32 0, align 4
@DP_VID_STREAM_ENABLE = common dso_local global i32 0, align 4
@DP_VID_STREAM_DIS_DEFER = common dso_local global i32 0, align 4
@DP_VID_STREAM_STATUS = common dso_local global i32 0, align 4
@DP_STEER_FIFO = common dso_local global i32 0, align 4
@DP_STEER_FIFO_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc1_stream_encoder_dp_blank(%struct.stream_encoder* %0) #0 {
  %2 = alloca %struct.stream_encoder*, align 8
  %3 = alloca %struct.dcn10_stream_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stream_encoder* %0, %struct.stream_encoder** %2, align 8
  %6 = load %struct.stream_encoder*, %struct.stream_encoder** %2, align 8
  %7 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %6)
  store %struct.dcn10_stream_encoder* %7, %struct.dcn10_stream_encoder** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @DP_BLANK_MAX_RETRY, align 4
  %9 = mul nsw i32 %8, 10
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @DP_VID_STREAM_CNTL, align 4
  %11 = load i32, i32* @DP_VID_STREAM_ENABLE, align 4
  %12 = call i32 @REG_GET(i32 %10, i32 %11, i32* %4)
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* @DP_VID_STREAM_CNTL, align 4
  %19 = load i32, i32* @DP_VID_STREAM_DIS_DEFER, align 4
  %20 = call i32 @REG_UPDATE(i32 %18, i32 %19, i32 2)
  %21 = load i32, i32* @DP_BLANK_MAX_RETRY, align 4
  %22 = mul nsw i32 %21, 250
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @DP_VID_STREAM_CNTL, align 4
  %24 = load i32, i32* @DP_VID_STREAM_ENABLE, align 4
  %25 = call i32 @REG_UPDATE(i32 %23, i32 %24, i32 0)
  %26 = load i32, i32* @DP_VID_STREAM_CNTL, align 4
  %27 = load i32, i32* @DP_VID_STREAM_STATUS, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @REG_WAIT(i32 %26, i32 %27, i32 0, i32 10, i32 %28)
  %30 = load i32, i32* @DP_STEER_FIFO, align 4
  %31 = load i32, i32* @DP_STEER_FIFO_RESET, align 4
  %32 = call i32 @REG_UPDATE(i32 %30, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
