; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_config_AVI.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_config_AVI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_display_mode = type { i32 }
%struct.hdmi_avi_infoframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@HDMI_COLORSPACE_YUV444 = common dso_local global i32 0, align 4
@HDMI_COLORSPACE_YUV422 = common dso_local global i32 0, align 4
@HDMI_COLORSPACE_YUV420 = common dso_local global i32 0, align 4
@HDMI_COLORSPACE_RGB = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_XV601 = common dso_local global i32 0, align 4
@HDMI_COLORIMETRY_EXTENDED = common dso_local global i8* null, align 8
@HDMI_COLORIMETRY_ITU_601 = common dso_local global i8* null, align 8
@HDMI_EXTENDED_COLORIMETRY_XV_YCC_601 = common dso_local global i8* null, align 8
@V4L2_YCBCR_ENC_XV709 = common dso_local global i32 0, align 4
@HDMI_COLORIMETRY_ITU_709 = common dso_local global i32 0, align 4
@HDMI_EXTENDED_COLORIMETRY_XV_YCC_709 = common dso_local global i32 0, align 4
@HDMI_SCAN_MODE_NONE = common dso_local global i32 0, align 4
@HDMI_FC_AVICONF0_ACTIVE_FMT_INFO_PRESENT = common dso_local global i32 0, align 4
@HDMI_FC_AVICONF0_BAR_DATA_HORIZ_BAR = common dso_local global i32 0, align 4
@HDMI_FC_AVICONF0_BAR_DATA_VERT_BAR = common dso_local global i32 0, align 4
@HDMI_FC_AVICONF0 = common dso_local global i32 0, align 4
@HDMI_FC_AVICONF1 = common dso_local global i32 0, align 4
@HDMI_FC_AVICONF2_IT_CONTENT_VALID = common dso_local global i32 0, align 4
@HDMI_FC_AVICONF2 = common dso_local global i32 0, align 4
@HDMI_FC_AVIVID = common dso_local global i32 0, align 4
@HDMI_FC_PRCONF_INCOMING_PR_FACTOR_OFFSET = common dso_local global i32 0, align 4
@HDMI_FC_PRCONF_INCOMING_PR_FACTOR_MASK = common dso_local global i32 0, align 4
@HDMI_FC_PRCONF_OUTPUT_PR_FACTOR_OFFSET = common dso_local global i32 0, align 4
@HDMI_FC_PRCONF_OUTPUT_PR_FACTOR_MASK = common dso_local global i32 0, align 4
@HDMI_FC_PRCONF = common dso_local global i32 0, align 4
@HDMI_FC_AVICONF3 = common dso_local global i32 0, align 4
@HDMI_FC_AVIETB0 = common dso_local global i32 0, align 4
@HDMI_FC_AVIETB1 = common dso_local global i32 0, align 4
@HDMI_FC_AVISBB0 = common dso_local global i32 0, align 4
@HDMI_FC_AVISBB1 = common dso_local global i32 0, align 4
@HDMI_FC_AVIELB0 = common dso_local global i32 0, align 4
@HDMI_FC_AVIELB1 = common dso_local global i32 0, align 4
@HDMI_FC_AVISRB0 = common dso_local global i32 0, align 4
@HDMI_FC_AVISRB1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*, %struct.drm_display_mode*)* @hdmi_config_AVI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_config_AVI(%struct.dw_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.hdmi_avi_infoframe, align 8
  %6 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %7 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %7, i32 0, i32 1
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %10 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %5, i32* %8, %struct.drm_display_mode* %9)
  %11 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %12 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @hdmi_bus_fmt_is_yuv444(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @HDMI_COLORSPACE_YUV444, align 4
  %19 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %22 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @hdmi_bus_fmt_is_yuv422(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @HDMI_COLORSPACE_YUV422, align 4
  %29 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  br label %44

30:                                               ; preds = %20
  %31 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %32 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @hdmi_bus_fmt_is_yuv420(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @HDMI_COLORSPACE_YUV420, align 4
  %39 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @HDMI_COLORSPACE_RGB, align 4
  %42 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %44, %17
  %46 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %47 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %86 [
    i32 129, label %50
    i32 128, label %69
  ]

50:                                               ; preds = %45
  %51 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %52 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @V4L2_YCBCR_ENC_XV601, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i8*, i8** @HDMI_COLORIMETRY_EXTENDED, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  br label %65

61:                                               ; preds = %50
  %62 = load i8*, i8** @HDMI_COLORIMETRY_ITU_601, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i8*, i8** @HDMI_EXTENDED_COLORIMETRY_XV_YCC_601, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  br label %93

69:                                               ; preds = %45
  %70 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %71 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @V4L2_YCBCR_ENC_XV709, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i8*, i8** @HDMI_COLORIMETRY_EXTENDED, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  br label %83

80:                                               ; preds = %69
  %81 = load i32, i32* @HDMI_COLORIMETRY_ITU_709, align 4
  %82 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* @HDMI_EXTENDED_COLORIMETRY_XV_YCC_709, align 4
  %85 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  br label %93

86:                                               ; preds = %45
  %87 = load i8*, i8** @HDMI_COLORIMETRY_ITU_601, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load i8*, i8** @HDMI_EXTENDED_COLORIMETRY_XV_YCC_601, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  br label %93

93:                                               ; preds = %86, %83, %65
  %94 = load i32, i32* @HDMI_SCAN_MODE_NONE, align 4
  %95 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 3
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 3
  %99 = shl i32 %98, 4
  %100 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 3
  %103 = or i32 %99, %102
  store i32 %103, i32* %6, align 4
  %104 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 15
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %93
  %109 = load i32, i32* @HDMI_FC_AVICONF0_ACTIVE_FMT_INFO_PRESENT, align 4
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %108, %93
  %113 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116, %112
  %121 = load i32, i32* @HDMI_FC_AVICONF0_BAR_DATA_HORIZ_BAR, align 4
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %120, %116
  %125 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128, %124
  %133 = load i32, i32* @HDMI_FC_AVICONF0_BAR_DATA_VERT_BAR, align 4
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %132, %128
  %137 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @HDMI_FC_AVICONF0, align 4
  %140 = call i32 @hdmi_writeb(%struct.dw_hdmi* %137, i32 %138, i32 %139)
  %141 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 3
  %144 = shl i32 %143, 6
  %145 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 3
  %148 = shl i32 %147, 4
  %149 = or i32 %144, %148
  %150 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, 15
  %153 = or i32 %149, %152
  store i32 %153, i32* %6, align 4
  %154 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @HDMI_FC_AVICONF1, align 4
  %157 = call i32 @hdmi_writeb(%struct.dw_hdmi* %154, i32 %155, i32 %156)
  %158 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, 7
  %161 = shl i32 %160, 4
  %162 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 10
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, 3
  %165 = shl i32 %164, 2
  %166 = or i32 %161, %165
  %167 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 11
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 3
  %170 = or i32 %166, %169
  store i32 %170, i32* %6, align 4
  %171 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 15
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %136
  %175 = load i32, i32* @HDMI_FC_AVICONF2_IT_CONTENT_VALID, align 4
  %176 = load i32, i32* %6, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %174, %136
  %179 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @HDMI_FC_AVICONF2, align 4
  %182 = call i32 @hdmi_writeb(%struct.dw_hdmi* %179, i32 %180, i32 %181)
  %183 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 12
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, 127
  store i32 %185, i32* %6, align 4
  %186 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @HDMI_FC_AVIVID, align 4
  %189 = call i32 @hdmi_writeb(%struct.dw_hdmi* %186, i32 %187, i32 %188)
  %190 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %191 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  %196 = load i32, i32* @HDMI_FC_PRCONF_INCOMING_PR_FACTOR_OFFSET, align 4
  %197 = shl i32 %195, %196
  %198 = load i32, i32* @HDMI_FC_PRCONF_INCOMING_PR_FACTOR_MASK, align 4
  %199 = and i32 %197, %198
  %200 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %201 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @HDMI_FC_PRCONF_OUTPUT_PR_FACTOR_OFFSET, align 4
  %206 = shl i32 %204, %205
  %207 = load i32, i32* @HDMI_FC_PRCONF_OUTPUT_PR_FACTOR_MASK, align 4
  %208 = and i32 %206, %207
  %209 = or i32 %199, %208
  store i32 %209, i32* %6, align 4
  %210 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @HDMI_FC_PRCONF, align 4
  %213 = call i32 @hdmi_writeb(%struct.dw_hdmi* %210, i32 %211, i32 %212)
  %214 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 13
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, 3
  %217 = shl i32 %216, 2
  %218 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 14
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, 3
  %221 = or i32 %217, %220
  store i32 %221, i32* %6, align 4
  %222 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @HDMI_FC_AVICONF3, align 4
  %225 = call i32 @hdmi_writeb(%struct.dw_hdmi* %222, i32 %223, i32 %224)
  %226 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %227 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, 255
  %230 = load i32, i32* @HDMI_FC_AVIETB0, align 4
  %231 = call i32 @hdmi_writeb(%struct.dw_hdmi* %226, i32 %229, i32 %230)
  %232 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %233 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = ashr i32 %234, 8
  %236 = and i32 %235, 255
  %237 = load i32, i32* @HDMI_FC_AVIETB1, align 4
  %238 = call i32 @hdmi_writeb(%struct.dw_hdmi* %232, i32 %236, i32 %237)
  %239 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %240 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = and i32 %241, 255
  %243 = load i32, i32* @HDMI_FC_AVISBB0, align 4
  %244 = call i32 @hdmi_writeb(%struct.dw_hdmi* %239, i32 %242, i32 %243)
  %245 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %246 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = ashr i32 %247, 8
  %249 = and i32 %248, 255
  %250 = load i32, i32* @HDMI_FC_AVISBB1, align 4
  %251 = call i32 @hdmi_writeb(%struct.dw_hdmi* %245, i32 %249, i32 %250)
  %252 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %253 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 7
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, 255
  %256 = load i32, i32* @HDMI_FC_AVIELB0, align 4
  %257 = call i32 @hdmi_writeb(%struct.dw_hdmi* %252, i32 %255, i32 %256)
  %258 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %259 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = ashr i32 %260, 8
  %262 = and i32 %261, 255
  %263 = load i32, i32* @HDMI_FC_AVIELB1, align 4
  %264 = call i32 @hdmi_writeb(%struct.dw_hdmi* %258, i32 %262, i32 %263)
  %265 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %266 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = and i32 %267, 255
  %269 = load i32, i32* @HDMI_FC_AVISRB0, align 4
  %270 = call i32 @hdmi_writeb(%struct.dw_hdmi* %265, i32 %268, i32 %269)
  %271 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %272 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = ashr i32 %273, 8
  %275 = and i32 %274, 255
  %276 = load i32, i32* @HDMI_FC_AVISRB1, align 4
  %277 = call i32 @hdmi_writeb(%struct.dw_hdmi* %271, i32 %275, i32 %276)
  ret void
}

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, i32*, %struct.drm_display_mode*) #1

declare dso_local i64 @hdmi_bus_fmt_is_yuv444(i32) #1

declare dso_local i64 @hdmi_bus_fmt_is_yuv422(i32) #1

declare dso_local i64 @hdmi_bus_fmt_is_yuv420(i32) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
