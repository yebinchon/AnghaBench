; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_dcn10_link_encoder_validate_hdmi_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_dcn10_link_encoder_validate_hdmi_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_link_encoder = type { %struct.TYPE_14__ }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcn10_link_encoder*, %struct.dc_crtc_timing*, i32)* @dcn10_link_encoder_validate_hdmi_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn10_link_encoder_validate_hdmi_output(%struct.dcn10_link_encoder* %0, %struct.dc_crtc_timing* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn10_link_encoder*, align 8
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dcn10_link_encoder* %0, %struct.dcn10_link_encoder** %5, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %5, align 8
  %10 = getelementptr inbounds %struct.dcn10_link_encoder, %struct.dcn10_link_encoder* %9, i32 0, i32 0
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
  br label %93

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
  br label %93

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @TMDS_MIN_PIXEL_CLOCK, align 4
  %31 = mul nsw i32 %30, 10
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %93

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %5, align 8
  %40 = getelementptr inbounds %struct.dcn10_link_encoder, %struct.dcn10_link_encoder* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 10
  %45 = icmp sgt i32 %38, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37, %34
  store i32 0, i32* %4, align 4
  br label %93

47:                                               ; preds = %37
  %48 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %5, align 8
  %49 = getelementptr inbounds %struct.dcn10_link_encoder, %struct.dcn10_link_encoder* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %56 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %93

61:                                               ; preds = %54, %47
  %62 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %5, align 8
  %63 = getelementptr inbounds %struct.dcn10_link_encoder, %struct.dcn10_link_encoder* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  %72 = icmp sge i32 %71, 3000000
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %93

74:                                               ; preds = %70, %61
  %75 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %5, align 8
  %76 = getelementptr inbounds %struct.dcn10_link_encoder, %struct.dcn10_link_encoder* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %74
  %86 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %87 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %93

92:                                               ; preds = %85, %74
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %91, %73, %60, %46, %33, %27, %19
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
