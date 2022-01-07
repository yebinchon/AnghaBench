; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_stream_encoder_dp_unblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_stream_encoder.c_enc2_stream_encoder_dp_unblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.encoder_unblank_param = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dcn10_stream_encoder = type { i32 }

@LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8
@LINK_RATE_REF_FREQ_IN_KHZ = common dso_local global i32 0, align 4
@DP_VID_TIMING = common dso_local global i32 0, align 4
@DP_VID_M_N_GEN_EN = common dso_local global i32 0, align 4
@DP_VID_N = common dso_local global i32 0, align 4
@DP_VID_M = common dso_local global i32 0, align 4
@DP_VID_N_MUL = common dso_local global i32 0, align 4
@DIG_FE_CNTL = common dso_local global i32 0, align 4
@DIG_START = common dso_local global i32 0, align 4
@DP_STEER_FIFO = common dso_local global i32 0, align 4
@DP_STEER_FIFO_RESET = common dso_local global i32 0, align 4
@DP_VID_STREAM_CNTL = common dso_local global i32 0, align 4
@DP_VID_STREAM_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enc2_stream_encoder_dp_unblank(%struct.stream_encoder* %0, %struct.encoder_unblank_param* %1) #0 {
  %3 = alloca %struct.stream_encoder*, align 8
  %4 = alloca %struct.encoder_unblank_param*, align 8
  %5 = alloca %struct.dcn10_stream_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stream_encoder* %0, %struct.stream_encoder** %3, align 8
  store %struct.encoder_unblank_param* %1, %struct.encoder_unblank_param** %4, align 8
  %10 = load %struct.stream_encoder*, %struct.stream_encoder** %3, align 8
  %11 = call %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder* %10)
  store %struct.dcn10_stream_encoder* %11, %struct.dcn10_stream_encoder** %5, align 8
  %12 = load %struct.encoder_unblank_param*, %struct.encoder_unblank_param** %4, align 8
  %13 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LINK_RATE_UNKNOWN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %2
  store i32 32768, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.encoder_unblank_param*, %struct.encoder_unblank_param** %4, align 8
  %21 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %20, i32 0, i32 2
  %22 = call i64 @is_two_pixels_per_containter(%struct.TYPE_4__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.encoder_unblank_param*, %struct.encoder_unblank_param** %4, align 8
  %26 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %18
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load %struct.encoder_unblank_param*, %struct.encoder_unblank_param** %4, align 8
  %32 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 10
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.encoder_unblank_param*, %struct.encoder_unblank_param** %4, align 8
  %40 = getelementptr inbounds %struct.encoder_unblank_param, %struct.encoder_unblank_param* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @LINK_RATE_REF_FREQ_IN_KHZ, align 4
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %42, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @div_u64(i32 %38, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @DP_VID_TIMING, align 4
  %50 = load i32, i32* @DP_VID_M_N_GEN_EN, align 4
  %51 = call i32 @REG_UPDATE(i32 %49, i32 %50, i32 0)
  %52 = load i32, i32* @DP_VID_N, align 4
  %53 = load i32, i32* @DP_VID_N, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @REG_UPDATE(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @DP_VID_M, align 4
  %57 = load i32, i32* @DP_VID_M, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @REG_UPDATE(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @DP_VID_TIMING, align 4
  %61 = load i32, i32* @DP_VID_M_N_GEN_EN, align 4
  %62 = load i32, i32* @DP_VID_N_MUL, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @REG_UPDATE_2(i32 %60, i32 %61, i32 1, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %30, %2
  %66 = load i32, i32* @DIG_FE_CNTL, align 4
  %67 = load i32, i32* @DIG_START, align 4
  %68 = call i32 @REG_UPDATE(i32 %66, i32 %67, i32 1)
  %69 = load i32, i32* @DIG_FE_CNTL, align 4
  %70 = load i32, i32* @DIG_START, align 4
  %71 = call i32 @REG_UPDATE(i32 %69, i32 %70, i32 0)
  %72 = load i32, i32* @DP_STEER_FIFO, align 4
  %73 = load i32, i32* @DP_STEER_FIFO_RESET, align 4
  %74 = call i32 @REG_UPDATE(i32 %72, i32 %73, i32 0)
  %75 = call i32 @udelay(i32 100)
  %76 = load i32, i32* @DP_VID_STREAM_CNTL, align 4
  %77 = load i32, i32* @DP_VID_STREAM_ENABLE, align 4
  %78 = call i32 @REG_UPDATE(i32 %76, i32 %77, i32 1)
  ret void
}

declare dso_local %struct.dcn10_stream_encoder* @DCN10STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i64 @is_two_pixels_per_containter(%struct.TYPE_4__*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
