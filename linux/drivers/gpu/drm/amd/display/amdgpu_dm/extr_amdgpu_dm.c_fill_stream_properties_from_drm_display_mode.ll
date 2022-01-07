; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_stream_properties_from_drm_display_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_stream_properties_from_drm_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i64, i64, i64, i32, i64, i64, i64, i32 }
%struct.drm_connector = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.dc_stream_state = type { i64, %struct.TYPE_4__*, i32, %struct.dc_crtc_timing }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dc_crtc_timing = type { i32, i32, i64, i64, i64, i32, i64, i64, i32, i64, %struct.TYPE_3__, i32, i64, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@SIGNAL_TYPE_HDMI_TYPE_A = common dso_local global i64 0, align 8
@PIXEL_ENCODING_YCBCR420 = common dso_local global i32 0, align 4
@DRM_COLOR_FORMAT_YCRCB444 = common dso_local global i32 0, align 4
@PIXEL_ENCODING_YCBCR444 = common dso_local global i32 0, align 4
@PIXEL_ENCODING_RGB = common dso_local global i32 0, align 4
@TIMING_3D_FORMAT_NONE = common dso_local global i32 0, align 4
@SCANNING_TYPE_NODATA = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@TF_TYPE_PREDEFINED = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_stream_state*, %struct.drm_display_mode*, %struct.drm_connector*, %struct.drm_connector_state*, %struct.dc_stream_state*)* @fill_stream_properties_from_drm_display_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_stream_properties_from_drm_display_mode(%struct.dc_stream_state* %0, %struct.drm_display_mode* %1, %struct.drm_connector* %2, %struct.drm_connector_state* %3, %struct.dc_stream_state* %4) #0 {
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.drm_connector_state*, align 8
  %10 = alloca %struct.dc_stream_state*, align 8
  %11 = alloca %struct.dc_crtc_timing*, align 8
  %12 = alloca %struct.drm_display_info*, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %6, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %7, align 8
  store %struct.drm_connector* %2, %struct.drm_connector** %8, align 8
  store %struct.drm_connector_state* %3, %struct.drm_connector_state** %9, align 8
  store %struct.dc_stream_state* %4, %struct.dc_stream_state** %10, align 8
  %13 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %14 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %13, i32 0, i32 3
  store %struct.dc_crtc_timing* %14, %struct.dc_crtc_timing** %11, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  store %struct.drm_display_info* %16, %struct.drm_display_info** %12, align 8
  %17 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %18 = call i32 @memset(%struct.dc_crtc_timing* %17, i32 0, i32 144)
  %19 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %20 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %19, i32 0, i32 20
  store i64 0, i64* %20, align 8
  %21 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %22 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %21, i32 0, i32 19
  store i64 0, i64* %22, align 8
  %23 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %24 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %23, i32 0, i32 18
  store i64 0, i64* %24, align 8
  %25 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %26 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %25, i32 0, i32 17
  store i64 0, i64* %26, align 8
  %27 = load %struct.drm_display_info*, %struct.drm_display_info** %12, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %29 = call i64 @drm_mode_is_420_only(%struct.drm_display_info* %27, %struct.drm_display_mode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %5
  %32 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %33 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SIGNAL_TYPE_HDMI_TYPE_A, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @PIXEL_ENCODING_YCBCR420, align 4
  %39 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %40 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %39, i32 0, i32 16
  store i32 %38, i32* %40, align 4
  br label %64

41:                                               ; preds = %31, %5
  %42 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB444, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %51 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SIGNAL_TYPE_HDMI_TYPE_A, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @PIXEL_ENCODING_YCBCR444, align 4
  %57 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %58 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %57, i32 0, i32 16
  store i32 %56, i32* %58, align 4
  br label %63

59:                                               ; preds = %49, %41
  %60 = load i32, i32* @PIXEL_ENCODING_RGB, align 4
  %61 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %62 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %61, i32 0, i32 16
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i32, i32* @TIMING_3D_FORMAT_NONE, align 4
  %66 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %67 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %66, i32 0, i32 15
  store i32 %65, i32* %67, align 8
  %68 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %69 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %70 = call i32 @convert_color_depth_from_display_info(%struct.drm_connector* %68, %struct.drm_connector_state* %69)
  %71 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %72 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %71, i32 0, i32 14
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @SCANNING_TYPE_NODATA, align 4
  %74 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %75 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 8
  %76 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %77 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %76, i32 0, i32 12
  store i64 0, i64* %77, align 8
  %78 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %79 = icmp ne %struct.dc_stream_state* %78, null
  br i1 %79, label %80, label %103

80:                                               ; preds = %64
  %81 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %82 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %86 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 8
  %87 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %88 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %88, i32 0, i32 10
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %93 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %92, i32 0, i32 10
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %96 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %96, i32 0, i32 10
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %101 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %100, i32 0, i32 10
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  br label %130

103:                                              ; preds = %64
  %104 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %105 = call i32 @drm_match_cea_mode(%struct.drm_display_mode* %104)
  %106 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %107 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %106, i32 0, i32 11
  store i32 %105, i32* %107, align 8
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %109 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %116 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %115, i32 0, i32 10
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %114, %103
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %127 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %118
  br label %130

130:                                              ; preds = %129, %80
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %135 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %134, i32 0, i32 9
  store i64 %133, i64* %135, align 8
  %136 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %137 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %140 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %139, i32 0, i32 8
  store i32 %138, i32* %140, align 8
  %141 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %142 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %141, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %145 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %143, %146
  %148 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %149 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %148, i32 0, i32 7
  store i64 %147, i64* %149, align 8
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 7
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %154 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %152, %155
  %157 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %158 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %157, i32 0, i32 6
  store i64 %156, i64* %158, align 8
  %159 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %160 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %163 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 8
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %168 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %167, i32 0, i32 4
  store i64 %166, i64* %168, align 8
  %169 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %170 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %173 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %171, %174
  %176 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %177 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %176, i32 0, i32 3
  store i64 %175, i64* %177, align 8
  %178 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %179 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %182 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %180, %183
  %185 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %186 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %185, i32 0, i32 2
  store i64 %184, i64* %186, align 8
  %187 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %188 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %189, 10
  %191 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %192 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %194 = call i32 @get_aspect_ratio(%struct.drm_display_mode* %193)
  %195 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %196 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %198 = call i32 @get_output_color_space(%struct.dc_crtc_timing* %197)
  %199 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %200 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* @TF_TYPE_PREDEFINED, align 4
  %202 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %203 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %202, i32 0, i32 1
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  store i32 %201, i32* %205, align 4
  %206 = load i32, i32* @TRANSFER_FUNCTION_SRGB, align 4
  %207 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %208 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %207, i32 0, i32 1
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  store i32 %206, i32* %210, align 4
  %211 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %212 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @SIGNAL_TYPE_HDMI_TYPE_A, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %130
  %217 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %11, align 8
  %218 = load %struct.drm_display_info*, %struct.drm_display_info** %12, align 8
  %219 = call i32 @adjust_colour_depth_from_display_info(%struct.dc_crtc_timing* %217, %struct.drm_display_info* %218)
  br label %220

220:                                              ; preds = %216, %130
  ret void
}

declare dso_local i32 @memset(%struct.dc_crtc_timing*, i32, i32) #1

declare dso_local i64 @drm_mode_is_420_only(%struct.drm_display_info*, %struct.drm_display_mode*) #1

declare dso_local i32 @convert_color_depth_from_display_info(%struct.drm_connector*, %struct.drm_connector_state*) #1

declare dso_local i32 @drm_match_cea_mode(%struct.drm_display_mode*) #1

declare dso_local i32 @get_aspect_ratio(%struct.drm_display_mode*) #1

declare dso_local i32 @get_output_color_space(%struct.dc_crtc_timing*) #1

declare dso_local i32 @adjust_colour_depth_from_display_info(%struct.dc_crtc_timing*, %struct.drm_display_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
