; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_validate_hdmi_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_validate_hdmi_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_link_encoder = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.dc_crtc_timing = type { i32, i64 }

@COLOR_DEPTH_888 = common dso_local global i64 0, align 8
@TMDS_MIN_PIXEL_CLOCK = common dso_local global i32 0, align 4
@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce110_link_encoder*, %struct.dc_crtc_timing*, i32)* @dce110_link_encoder_validate_hdmi_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce110_link_encoder_validate_hdmi_output(%struct.dce110_link_encoder* %0, %struct.dc_crtc_timing* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dce110_link_encoder*, align 8
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dce110_link_encoder* %0, %struct.dce110_link_encoder** %5, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %10 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %16 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

20:                                               ; preds = %3
  %21 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %22 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @COLOR_DEPTH_888, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %91

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @TMDS_MIN_PIXEL_CLOCK, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %91

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %39 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %33
  store i32 0, i32* %4, align 4
  br label %91

45:                                               ; preds = %36
  %46 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %47 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %54 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %91

59:                                               ; preds = %52, %45
  %60 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %61 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %7, align 4
  %70 = icmp sge i32 %69, 300000
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %91

72:                                               ; preds = %68, %59
  %73 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %5, align 8
  %74 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %85 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %91

90:                                               ; preds = %83, %72
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %89, %71, %58, %44, %32, %27, %19
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
