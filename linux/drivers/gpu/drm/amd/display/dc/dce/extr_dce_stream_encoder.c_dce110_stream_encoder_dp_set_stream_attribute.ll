; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_dp_set_stream_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_dp_set_stream_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.dce110_stream_encoder = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@DP_PIXEL_FORMAT = common dso_local global i32 0, align 4
@DP_PIXEL_ENCODING = common dso_local global i32 0, align 4
@DP_PIXEL_ENCODING_TYPE_YCBCR422 = common dso_local global i32 0, align 4
@DP_PIXEL_ENCODING_TYPE_YCBCR444 = common dso_local global i32 0, align 4
@DP_PIXEL_ENCODING_TYPE_Y_ONLY = common dso_local global i32 0, align 4
@DP_PIXEL_ENCODING_TYPE_YCBCR420 = common dso_local global i32 0, align 4
@DP_VID_TIMING = common dso_local global i32 0, align 4
@DP_VID_M_DOUBLE_VALUE_EN = common dso_local global i32 0, align 4
@DP_PIXEL_ENCODING_TYPE_RGB444 = common dso_local global i32 0, align 4
@DP_COMPONENT_DEPTH = common dso_local global i32 0, align 4
@DP_COMPONENT_PIXEL_DEPTH_8BPC = common dso_local global i32 0, align 4
@DP_COMPONENT_PIXEL_DEPTH_10BPC = common dso_local global i32 0, align 4
@DP_COMPONENT_PIXEL_DEPTH_12BPC = common dso_local global i32 0, align 4
@DP_COMPONENT_PIXEL_DEPTH_6BPC = common dso_local global i32 0, align 4
@DP_DYN_RANGE = common dso_local global i32 0, align 4
@DP_MSA_COLORIMETRY = common dso_local global i32 0, align 4
@DP_MSA_HSTART = common dso_local global i32 0, align 4
@DP_MSA_HSYNCPOLARITY = common dso_local global i32 0, align 4
@DP_MSA_HSYNCWIDTH = common dso_local global i32 0, align 4
@DP_MSA_HTOTAL = common dso_local global i32 0, align 4
@DP_MSA_HWIDTH = common dso_local global i32 0, align 4
@DP_MSA_MISC = common dso_local global i32 0, align 4
@DP_MSA_MISC0 = common dso_local global i32 0, align 4
@DP_MSA_TIMING_PARAM1 = common dso_local global i32 0, align 4
@DP_MSA_TIMING_PARAM2 = common dso_local global i32 0, align 4
@DP_MSA_TIMING_PARAM3 = common dso_local global i32 0, align 4
@DP_MSA_TIMING_PARAM4 = common dso_local global i32 0, align 4
@DP_MSA_VHEIGHT = common dso_local global i32 0, align 4
@DP_MSA_VSTART = common dso_local global i32 0, align 4
@DP_MSA_VSYNCPOLARITY = common dso_local global i32 0, align 4
@DP_MSA_VSYNCWIDTH = common dso_local global i32 0, align 4
@DP_MSA_VTOTAL = common dso_local global i32 0, align 4
@DP_VID_N_MUL = common dso_local global i32 0, align 4
@DP_YCBCR_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*, %struct.dc_crtc_timing*, i32, i32)* @dce110_stream_encoder_dp_set_stream_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_stream_encoder_dp_set_stream_attribute(%struct.stream_encoder* %0, %struct.dc_crtc_timing* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stream_encoder*, align 8
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce110_stream_encoder*, align 8
  %10 = alloca %struct.dc_crtc_timing, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %5, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.stream_encoder*, %struct.stream_encoder** %5, align 8
  %12 = call %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder* %11)
  store %struct.dce110_stream_encoder* %12, %struct.dce110_stream_encoder** %9, align 8
  %13 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %14 = bitcast %struct.dc_crtc_timing* %10 to i8*
  %15 = bitcast %struct.dc_crtc_timing* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 80, i1 false)
  %16 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %10, i32 0, i32 14
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %10, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %10, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %10, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %10, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %33, align 8
  %36 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %10, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %20, %4
  %40 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %10, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %83 [
    i32 129, label %42
    i32 128, label %47
    i32 130, label %67
  ]

42:                                               ; preds = %39
  %43 = load i32, i32* @DP_PIXEL_FORMAT, align 4
  %44 = load i32, i32* @DP_PIXEL_ENCODING, align 4
  %45 = load i32, i32* @DP_PIXEL_ENCODING_TYPE_YCBCR422, align 4
  %46 = call i32 @REG_UPDATE(i32 %43, i32 %44, i32 %45)
  br label %88

47:                                               ; preds = %39
  %48 = load i32, i32* @DP_PIXEL_FORMAT, align 4
  %49 = load i32, i32* @DP_PIXEL_ENCODING, align 4
  %50 = load i32, i32* @DP_PIXEL_ENCODING_TYPE_YCBCR444, align 4
  %51 = call i32 @REG_UPDATE(i32 %48, i32 %49, i32 %50)
  %52 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %10, i32 0, i32 14
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %10, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 153
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* @DP_PIXEL_FORMAT, align 4
  %62 = load i32, i32* @DP_PIXEL_ENCODING, align 4
  %63 = load i32, i32* @DP_PIXEL_ENCODING_TYPE_Y_ONLY, align 4
  %64 = call i32 @REG_UPDATE(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  br label %66

66:                                               ; preds = %65, %47
  br label %88

67:                                               ; preds = %39
  %68 = load i32, i32* @DP_PIXEL_FORMAT, align 4
  %69 = load i32, i32* @DP_PIXEL_ENCODING, align 4
  %70 = load i32, i32* @DP_PIXEL_ENCODING_TYPE_YCBCR420, align 4
  %71 = call i32 @REG_UPDATE(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.dce110_stream_encoder*, %struct.dce110_stream_encoder** %9, align 8
  %73 = getelementptr inbounds %struct.dce110_stream_encoder, %struct.dce110_stream_encoder* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load i32, i32* @DP_VID_TIMING, align 4
  %80 = load i32, i32* @DP_VID_M_DOUBLE_VALUE_EN, align 4
  %81 = call i32 @REG_UPDATE(i32 %79, i32 %80, i32 1)
  br label %82

82:                                               ; preds = %78, %67
  br label %88

83:                                               ; preds = %39
  %84 = load i32, i32* @DP_PIXEL_FORMAT, align 4
  %85 = load i32, i32* @DP_PIXEL_ENCODING, align 4
  %86 = load i32, i32* @DP_PIXEL_ENCODING_TYPE_RGB444, align 4
  %87 = call i32 @REG_UPDATE(i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %82, %66, %42
  %89 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %10, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %110 [
    i32 153, label %91
    i32 152, label %95
    i32 155, label %100
    i32 154, label %105
  ]

91:                                               ; preds = %88
  %92 = load i32, i32* @DP_PIXEL_FORMAT, align 4
  %93 = load i32, i32* @DP_COMPONENT_DEPTH, align 4
  %94 = call i32 @REG_UPDATE(i32 %92, i32 %93, i32 0)
  br label %115

95:                                               ; preds = %88
  %96 = load i32, i32* @DP_PIXEL_FORMAT, align 4
  %97 = load i32, i32* @DP_COMPONENT_DEPTH, align 4
  %98 = load i32, i32* @DP_COMPONENT_PIXEL_DEPTH_8BPC, align 4
  %99 = call i32 @REG_UPDATE(i32 %96, i32 %97, i32 %98)
  br label %115

100:                                              ; preds = %88
  %101 = load i32, i32* @DP_PIXEL_FORMAT, align 4
  %102 = load i32, i32* @DP_COMPONENT_DEPTH, align 4
  %103 = load i32, i32* @DP_COMPONENT_PIXEL_DEPTH_10BPC, align 4
  %104 = call i32 @REG_UPDATE(i32 %101, i32 %102, i32 %103)
  br label %115

105:                                              ; preds = %88
  %106 = load i32, i32* @DP_PIXEL_FORMAT, align 4
  %107 = load i32, i32* @DP_COMPONENT_DEPTH, align 4
  %108 = load i32, i32* @DP_COMPONENT_PIXEL_DEPTH_12BPC, align 4
  %109 = call i32 @REG_UPDATE(i32 %106, i32 %107, i32 %108)
  br label %115

110:                                              ; preds = %88
  %111 = load i32, i32* @DP_PIXEL_FORMAT, align 4
  %112 = load i32, i32* @DP_COMPONENT_DEPTH, align 4
  %113 = load i32, i32* @DP_COMPONENT_PIXEL_DEPTH_6BPC, align 4
  %114 = call i32 @REG_UPDATE(i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %105, %100, %95, %91
  ret void
}

declare dso_local %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
