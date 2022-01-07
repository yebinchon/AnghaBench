; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_validate_dvi_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_validate_dvi_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_link_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dc_crtc_timing = type { i64, i32, i32 }

@TMDS_MAX_PIXEL_CLOCK = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DVI_DUAL_LINK = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DVI_SINGLE_LINK = common dso_local global i32 0, align 4
@PIXEL_ENCODING_RGB = common dso_local global i64 0, align 8
@SIGNAL_TYPE_HDMI_TYPE_A = common dso_local global i32 0, align 4
@TMDS_MIN_PIXEL_CLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_link_encoder_validate_dvi_output(%struct.dce110_link_encoder* %0, i32 %1, i32 %2, %struct.dc_crtc_timing* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dce110_link_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_crtc_timing*, align 8
  %10 = alloca i32, align 4
  store %struct.dce110_link_encoder* %0, %struct.dce110_link_encoder** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dc_crtc_timing* %3, %struct.dc_crtc_timing** %9, align 8
  %11 = load i32, i32* @TMDS_MAX_PIXEL_CLOCK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SIGNAL_TYPE_DVI_DUAL_LINK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SIGNAL_TYPE_DVI_DUAL_LINK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %6, align 8
  %28 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %26, %22, %18
  %33 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %9, align 8
  %34 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PIXEL_ENCODING_RGB, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %88

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SIGNAL_TYPE_HDMI_TYPE_A, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SIGNAL_TYPE_HDMI_TYPE_A, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %9, align 8
  %53 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TMDS_MAX_PIXEL_CLOCK, align 4
  %56 = mul nsw i32 %55, 10
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %88

59:                                               ; preds = %51, %47, %43
  %60 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %9, align 8
  %61 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TMDS_MIN_PIXEL_CLOCK, align 4
  %64 = mul nsw i32 %63, 10
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %88

67:                                               ; preds = %59
  %68 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %9, align 8
  %69 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 10
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %88

75:                                               ; preds = %67
  %76 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %9, align 8
  %77 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %86 [
    i32 129, label %79
    i32 128, label %79
    i32 131, label %80
    i32 130, label %80
  ]

79:                                               ; preds = %75, %75
  br label %87

80:                                               ; preds = %75, %75
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @SIGNAL_TYPE_DVI_DUAL_LINK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %88

85:                                               ; preds = %80
  br label %87

86:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %88

87:                                               ; preds = %85, %79
  store i32 1, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %86, %84, %74, %66, %58, %38
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
