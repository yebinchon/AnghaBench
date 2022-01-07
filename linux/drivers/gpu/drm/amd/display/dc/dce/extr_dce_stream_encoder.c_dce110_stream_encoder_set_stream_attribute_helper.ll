; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_set_stream_attribute_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_set_stream_attribute_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_stream_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dc_crtc_timing = type { i32 }

@TMDS_CNTL = common dso_local global i32 0, align 4
@TMDS_PIXEL_ENCODING = common dso_local global i32 0, align 4
@TMDS_COLOR_FORMAT = common dso_local global i32 0, align 4
@DIG_FE_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_stream_encoder*, %struct.dc_crtc_timing*)* @dce110_stream_encoder_set_stream_attribute_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_stream_encoder_set_stream_attribute_helper(%struct.dce110_stream_encoder* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca %struct.dce110_stream_encoder*, align 8
  %4 = alloca %struct.dc_crtc_timing*, align 8
  store %struct.dce110_stream_encoder* %0, %struct.dce110_stream_encoder** %3, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %4, align 8
  %5 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %3, align 8
  %6 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %13 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %19 [
    i32 128, label %15
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* @TMDS_CNTL, align 4
  %17 = load i32, i32* @TMDS_PIXEL_ENCODING, align 4
  %18 = call i32 @REG_UPDATE(i32 %16, i32 %17, i32 1)
  br label %23

19:                                               ; preds = %11
  %20 = load i32, i32* @TMDS_CNTL, align 4
  %21 = load i32, i32* @TMDS_PIXEL_ENCODING, align 4
  %22 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @TMDS_CNTL, align 4
  %25 = load i32, i32* @TMDS_COLOR_FORMAT, align 4
  %26 = call i32 @REG_UPDATE(i32 %24, i32 %25, i32 0)
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %3, align 8
  %29 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %36 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %42 [
    i32 128, label %38
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @DIG_FE_CNTL, align 4
  %40 = load i32, i32* @TMDS_PIXEL_ENCODING, align 4
  %41 = call i32 @REG_UPDATE(i32 %39, i32 %40, i32 1)
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @DIG_FE_CNTL, align 4
  %44 = load i32, i32* @TMDS_PIXEL_ENCODING, align 4
  %45 = call i32 @REG_UPDATE(i32 %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @DIG_FE_CNTL, align 4
  %48 = load i32, i32* @TMDS_COLOR_FORMAT, align 4
  %49 = call i32 @REG_UPDATE(i32 %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %46, %27
  br label %51

51:                                               ; preds = %50, %23
  ret void
}

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
