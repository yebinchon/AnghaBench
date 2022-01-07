; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_dp_unblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_dp_unblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.encoder_unblank_param = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.dce110_stream_encoder = type { i32 }

@LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8
@LINK_RATE_REF_FREQ_IN_KHZ = common dso_local global i32 0, align 4
@DP_VID_TIMING = common dso_local global i32 0, align 4
@DP_VID_M_N_GEN_EN = common dso_local global i32 0, align 4
@DP_VID_N = common dso_local global i32 0, align 4
@DP_VID_M = common dso_local global i32 0, align 4
@DIG_FE_CNTL = common dso_local global i32 0, align 4
@DIG_START = common dso_local global i32 0, align 4
@DP_STEER_FIFO = common dso_local global i32 0, align 4
@DP_STEER_FIFO_RESET = common dso_local global i32 0, align 4
@DP_VID_STREAM_CNTL = common dso_local global i32 0, align 4
@DP_VID_STREAM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*, %struct.encoder_unblank_param*)* @dce110_stream_encoder_dp_unblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_stream_encoder_dp_unblank(%struct.stream_encoder* %0, %struct.encoder_unblank_param* %1) #0 {
  %3 = alloca %struct.stream_encoder*, align 8
  %4 = alloca %struct.encoder_unblank_param*, align 8
  %5 = alloca %struct.dce110_stream_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stream_encoder* %0, %struct.stream_encoder** %3, align 8
  store %struct.encoder_unblank_param* %1, %struct.encoder_unblank_param** %4, align 8
  %9 = load %struct.stream_encoder*, %struct.stream_encoder** %3, align 8
  %10 = call %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder* %9)
  store %struct.dce110_stream_encoder* %10, %struct.dce110_stream_encoder** %5, align 8
  %11 = load %struct.encoder_unblank_param*, %struct.encoder_unblank_param** %4, align 8
  %12 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LINK_RATE_UNKNOWN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %2
  store i32 32768, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.encoder_unblank_param*, %struct.encoder_unblank_param** %4, align 8
  %20 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %22, 10
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.encoder_unblank_param*, %struct.encoder_unblank_param** %4, align 8
  %28 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @LINK_RATE_REF_FREQ_IN_KHZ, align 4
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %30, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @div_u64(i32 %26, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @DP_VID_TIMING, align 4
  %38 = load i32, i32* @DP_VID_M_N_GEN_EN, align 4
  %39 = call i32 @REG_UPDATE(i32 %37, i32 %38, i32 0)
  %40 = load i32, i32* @DP_VID_N, align 4
  %41 = load i32, i32* @DP_VID_N, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @REG_UPDATE(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* @DP_VID_M, align 4
  %45 = load i32, i32* @DP_VID_M, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @REG_UPDATE(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @DP_VID_TIMING, align 4
  %49 = load i32, i32* @DP_VID_M_N_GEN_EN, align 4
  %50 = call i32 @REG_UPDATE(i32 %48, i32 %49, i32 1)
  br label %51

51:                                               ; preds = %17, %2
  %52 = load i32, i32* @DIG_FE_CNTL, align 4
  %53 = load i32, i32* @DIG_START, align 4
  %54 = call i32 @REG_UPDATE(i32 %52, i32 %53, i32 1)
  %55 = load i32, i32* @DP_STEER_FIFO, align 4
  %56 = load i32, i32* @DP_STEER_FIFO_RESET, align 4
  %57 = call i32 @REG_UPDATE(i32 %55, i32 %56, i32 0)
  %58 = call i32 @udelay(i32 100)
  %59 = load i32, i32* @DP_VID_STREAM_CNTL, align 4
  %60 = load i32, i32* @DP_VID_STREAM_ENABLE, align 4
  %61 = call i32 @REG_UPDATE(i32 %59, i32 %60, i32 1)
  ret void
}

declare dso_local %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
