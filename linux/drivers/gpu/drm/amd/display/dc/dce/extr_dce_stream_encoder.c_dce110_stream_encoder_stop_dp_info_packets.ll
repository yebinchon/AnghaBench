; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_stop_dp_info_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_stop_dp_info_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dce110_stream_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DP_SEC_CNTL = common dso_local global i32 0, align 4
@DP_SEC_GSP0_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_GSP1_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_GSP2_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_GSP3_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_AVI_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_MPG_ENABLE = common dso_local global i32 0, align 4
@DP_SEC_STREAM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*)* @dce110_stream_encoder_stop_dp_info_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_stream_encoder_stop_dp_info_packets(%struct.stream_encoder* %0) #0 {
  %2 = alloca %struct.stream_encoder*, align 8
  %3 = alloca %struct.dce110_stream_encoder*, align 8
  %4 = alloca i64, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %2, align 8
  %5 = load %struct.stream_encoder*, %struct.stream_encoder** %2, align 8
  %6 = call %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder* %5)
  store %struct.dce110_stream_encoder* %6, %struct.dce110_stream_encoder** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @DP_SEC_CNTL, align 4
  %15 = load i32, i32* @DP_SEC_GSP0_ENABLE, align 4
  %16 = load i32, i32* @DP_SEC_GSP1_ENABLE, align 4
  %17 = load i32, i32* @DP_SEC_GSP2_ENABLE, align 4
  %18 = load i32, i32* @DP_SEC_GSP3_ENABLE, align 4
  %19 = load i32, i32* @DP_SEC_AVI_ENABLE, align 4
  %20 = load i32, i32* @DP_SEC_MPG_ENABLE, align 4
  %21 = load i32, i32* @DP_SEC_STREAM_ENABLE, align 4
  %22 = call i32 @REG_SET_7(i32 %14, i32 0, i32 %15, i32 0, i32 %16, i32 0, i32 %17, i32 0, i32 %18, i32 0, i32 %19, i32 0, i32 %20, i32 0, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load i32, i32* @DP_SEC_CNTL, align 4
  %25 = call i64 @REG_READ(i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @DP_SEC_CNTL, align 4
  %30 = load i32, i32* @DP_SEC_STREAM_ENABLE, align 4
  %31 = call i32 @REG_UPDATE(i32 %29, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %28, %23
  ret void
}

declare dso_local %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @REG_SET_7(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
