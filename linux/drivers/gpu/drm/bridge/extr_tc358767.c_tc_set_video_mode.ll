; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_data = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TU_SIZE_RECOMMENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"set mode %dx%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"H margin %d,%d sync %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"V margin %d,%d sync %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"total: %dx%d\0A\00", align 1
@VPCTRL0 = common dso_local global i32 0, align 4
@VSDELAY = common dso_local global i32 0, align 4
@OPXLFMT_RGB888 = common dso_local global i32 0, align 4
@FRMSYNC_DISABLED = common dso_local global i32 0, align 4
@MSF_DISABLED = common dso_local global i32 0, align 4
@HTIM01 = common dso_local global i32 0, align 4
@HBPR = common dso_local global i32 0, align 4
@HPW = common dso_local global i32 0, align 4
@HTIM02 = common dso_local global i32 0, align 4
@HDISPR = common dso_local global i32 0, align 4
@HFPR = common dso_local global i32 0, align 4
@VTIM01 = common dso_local global i32 0, align 4
@VBPR = common dso_local global i32 0, align 4
@VSPR = common dso_local global i32 0, align 4
@VTIM02 = common dso_local global i32 0, align 4
@VFPR = common dso_local global i32 0, align 4
@VDISPR = common dso_local global i32 0, align 4
@VFUEN0 = common dso_local global i32 0, align 4
@VFUEN = common dso_local global i32 0, align 4
@TSTCTL = common dso_local global i32 0, align 4
@COLOR_R = common dso_local global i32 0, align 4
@COLOR_G = common dso_local global i32 0, align 4
@COLOR_B = common dso_local global i32 0, align 4
@ENI2CFILTER = common dso_local global i32 0, align 4
@COLOR_BAR_MODE = common dso_local global i32 0, align 4
@COLOR_BAR_MODE_BARS = common dso_local global i32 0, align 4
@DP0_VIDSYNCDELAY = common dso_local global i32 0, align 4
@THRESH_DLY = common dso_local global i32 0, align 4
@VID_SYNC_DLY = common dso_local global i32 0, align 4
@DP0_TOTALVAL = common dso_local global i32 0, align 4
@H_TOTAL = common dso_local global i32 0, align 4
@V_TOTAL = common dso_local global i32 0, align 4
@DP0_STARTVAL = common dso_local global i32 0, align 4
@H_START = common dso_local global i32 0, align 4
@V_START = common dso_local global i32 0, align 4
@DP0_ACTIVEVAL = common dso_local global i32 0, align 4
@V_ACT = common dso_local global i32 0, align 4
@H_ACT = common dso_local global i32 0, align 4
@VS_WIDTH = common dso_local global i32 0, align 4
@HS_WIDTH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@SYNCVAL_VS_POL_ACTIVE_LOW = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@SYNCVAL_HS_POL_ACTIVE_LOW = common dso_local global i32 0, align 4
@DP0_SYNCVAL = common dso_local global i32 0, align 4
@DPIPXLFMT = common dso_local global i32 0, align 4
@VS_POL_ACTIVE_LOW = common dso_local global i32 0, align 4
@HS_POL_ACTIVE_LOW = common dso_local global i32 0, align 4
@DE_POL_ACTIVE_HIGH = common dso_local global i32 0, align 4
@SUB_CFG_TYPE_CONFIG1 = common dso_local global i32 0, align 4
@DPI_BPP_RGB888 = common dso_local global i32 0, align 4
@DP0_MISC = common dso_local global i32 0, align 4
@MAX_TU_SYMBOL = common dso_local global i32 0, align 4
@TU_SIZE = common dso_local global i32 0, align 4
@BPC_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_data*, %struct.drm_display_mode*)* @tc_set_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_set_video_mode(%struct.tc_data* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tc_data*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tc_data* %0, %struct.tc_data** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %12, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %13, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  store i32 %60, i32* %14, align 4
  store i32 24, i32* %16, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %16, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sdiv i32 %65, 8
  store i32 %66, i32* %17, align 4
  %67 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %68 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %73 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %71, %76
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @TU_SIZE_RECOMMENDED, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @DIV_ROUND_UP(i32 %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %84 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %94 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97, i32 %98)
  %100 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %101 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  %107 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %108 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %111 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %115)
  %117 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %118 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @VPCTRL0, align 4
  %121 = load i32, i32* @VSDELAY, align 4
  %122 = call i32 @FIELD_PREP(i32 %121, i32 0)
  %123 = load i32, i32* @OPXLFMT_RGB888, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @FRMSYNC_DISABLED, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @MSF_DISABLED, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @regmap_write(i32 %119, i32 %120, i32 %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %2
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %3, align 4
  br label %406

134:                                              ; preds = %2
  %135 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %136 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @HTIM01, align 4
  %139 = load i32, i32* @HBPR, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @ALIGN(i32 %140, i32 2)
  %142 = call i32 @FIELD_PREP(i32 %139, i32 %141)
  %143 = load i32, i32* @HPW, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @ALIGN(i32 %144, i32 2)
  %146 = call i32 @FIELD_PREP(i32 %143, i32 %145)
  %147 = or i32 %142, %146
  %148 = call i32 @regmap_write(i32 %137, i32 %138, i32 %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %134
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %3, align 4
  br label %406

153:                                              ; preds = %134
  %154 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %155 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @HTIM02, align 4
  %158 = load i32, i32* @HDISPR, align 4
  %159 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %160 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ALIGN(i32 %161, i32 2)
  %163 = call i32 @FIELD_PREP(i32 %158, i32 %162)
  %164 = load i32, i32* @HFPR, align 4
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @ALIGN(i32 %165, i32 2)
  %167 = call i32 @FIELD_PREP(i32 %164, i32 %166)
  %168 = or i32 %163, %167
  %169 = call i32 @regmap_write(i32 %156, i32 %157, i32 %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %153
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %3, align 4
  br label %406

174:                                              ; preds = %153
  %175 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %176 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @VTIM01, align 4
  %179 = load i32, i32* @VBPR, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @FIELD_PREP(i32 %179, i32 %180)
  %182 = load i32, i32* @VSPR, align 4
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @FIELD_PREP(i32 %182, i32 %183)
  %185 = or i32 %181, %184
  %186 = call i32 @regmap_write(i32 %177, i32 %178, i32 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %174
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %3, align 4
  br label %406

191:                                              ; preds = %174
  %192 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %193 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @VTIM02, align 4
  %196 = load i32, i32* @VFPR, align 4
  %197 = load i32, i32* %13, align 4
  %198 = call i32 @FIELD_PREP(i32 %196, i32 %197)
  %199 = load i32, i32* @VDISPR, align 4
  %200 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %201 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @FIELD_PREP(i32 %199, i32 %202)
  %204 = or i32 %198, %203
  %205 = call i32 @regmap_write(i32 %194, i32 %195, i32 %204)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %191
  %209 = load i32, i32* %6, align 4
  store i32 %209, i32* %3, align 4
  br label %406

210:                                              ; preds = %191
  %211 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %212 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @VFUEN0, align 4
  %215 = load i32, i32* @VFUEN, align 4
  %216 = call i32 @regmap_write(i32 %213, i32 %214, i32 %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %210
  %220 = load i32, i32* %6, align 4
  store i32 %220, i32* %3, align 4
  br label %406

221:                                              ; preds = %210
  %222 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %223 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @TSTCTL, align 4
  %226 = load i32, i32* @COLOR_R, align 4
  %227 = call i32 @FIELD_PREP(i32 %226, i32 120)
  %228 = load i32, i32* @COLOR_G, align 4
  %229 = call i32 @FIELD_PREP(i32 %228, i32 20)
  %230 = or i32 %227, %229
  %231 = load i32, i32* @COLOR_B, align 4
  %232 = call i32 @FIELD_PREP(i32 %231, i32 99)
  %233 = or i32 %230, %232
  %234 = load i32, i32* @ENI2CFILTER, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @COLOR_BAR_MODE, align 4
  %237 = load i32, i32* @COLOR_BAR_MODE_BARS, align 4
  %238 = call i32 @FIELD_PREP(i32 %236, i32 %237)
  %239 = or i32 %235, %238
  %240 = call i32 @regmap_write(i32 %224, i32 %225, i32 %239)
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* %6, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %221
  %244 = load i32, i32* %6, align 4
  store i32 %244, i32* %3, align 4
  br label %406

245:                                              ; preds = %221
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %246, %247
  %249 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %250 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %248, %251
  store i32 %252, i32* %7, align 4
  %253 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %254 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @DP0_VIDSYNCDELAY, align 4
  %257 = load i32, i32* @THRESH_DLY, align 4
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @FIELD_PREP(i32 %257, i32 %258)
  %260 = load i32, i32* @VID_SYNC_DLY, align 4
  %261 = load i32, i32* %7, align 4
  %262 = call i32 @FIELD_PREP(i32 %260, i32 %261)
  %263 = or i32 %259, %262
  %264 = call i32 @regmap_write(i32 %255, i32 %256, i32 %263)
  store i32 %264, i32* %6, align 4
  %265 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %266 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @DP0_TOTALVAL, align 4
  %269 = load i32, i32* @H_TOTAL, align 4
  %270 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %271 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @FIELD_PREP(i32 %269, i32 %272)
  %274 = load i32, i32* @V_TOTAL, align 4
  %275 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %276 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @FIELD_PREP(i32 %274, i32 %277)
  %279 = or i32 %273, %278
  %280 = call i32 @regmap_write(i32 %267, i32 %268, i32 %279)
  store i32 %280, i32* %6, align 4
  %281 = load i32, i32* %6, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %245
  %284 = load i32, i32* %6, align 4
  store i32 %284, i32* %3, align 4
  br label %406

285:                                              ; preds = %245
  %286 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %287 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @DP0_STARTVAL, align 4
  %290 = load i32, i32* @H_START, align 4
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %11, align 4
  %293 = add nsw i32 %291, %292
  %294 = call i32 @FIELD_PREP(i32 %290, i32 %293)
  %295 = load i32, i32* @V_START, align 4
  %296 = load i32, i32* %12, align 4
  %297 = load i32, i32* %14, align 4
  %298 = add nsw i32 %296, %297
  %299 = call i32 @FIELD_PREP(i32 %295, i32 %298)
  %300 = or i32 %294, %299
  %301 = call i32 @regmap_write(i32 %288, i32 %289, i32 %300)
  store i32 %301, i32* %6, align 4
  %302 = load i32, i32* %6, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %285
  %305 = load i32, i32* %6, align 4
  store i32 %305, i32* %3, align 4
  br label %406

306:                                              ; preds = %285
  %307 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %308 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @DP0_ACTIVEVAL, align 4
  %311 = load i32, i32* @V_ACT, align 4
  %312 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %313 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %312, i32 0, i32 7
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @FIELD_PREP(i32 %311, i32 %314)
  %316 = load i32, i32* @H_ACT, align 4
  %317 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %318 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @FIELD_PREP(i32 %316, i32 %319)
  %321 = or i32 %315, %320
  %322 = call i32 @regmap_write(i32 %309, i32 %310, i32 %321)
  store i32 %322, i32* %6, align 4
  %323 = load i32, i32* %6, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %306
  %326 = load i32, i32* %6, align 4
  store i32 %326, i32* %3, align 4
  br label %406

327:                                              ; preds = %306
  %328 = load i32, i32* @VS_WIDTH, align 4
  %329 = load i32, i32* %14, align 4
  %330 = call i32 @FIELD_PREP(i32 %328, i32 %329)
  %331 = load i32, i32* @HS_WIDTH, align 4
  %332 = load i32, i32* %11, align 4
  %333 = call i32 @FIELD_PREP(i32 %331, i32 %332)
  %334 = or i32 %330, %333
  store i32 %334, i32* %15, align 4
  %335 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %336 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %335, i32 0, i32 9
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %327
  %342 = load i32, i32* @SYNCVAL_VS_POL_ACTIVE_LOW, align 4
  %343 = load i32, i32* %15, align 4
  %344 = or i32 %343, %342
  store i32 %344, i32* %15, align 4
  br label %345

345:                                              ; preds = %341, %327
  %346 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %347 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %346, i32 0, i32 9
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %345
  %353 = load i32, i32* @SYNCVAL_HS_POL_ACTIVE_LOW, align 4
  %354 = load i32, i32* %15, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* %15, align 4
  br label %356

356:                                              ; preds = %352, %345
  %357 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %358 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @DP0_SYNCVAL, align 4
  %361 = load i32, i32* %15, align 4
  %362 = call i32 @regmap_write(i32 %359, i32 %360, i32 %361)
  store i32 %362, i32* %6, align 4
  %363 = load i32, i32* %6, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %356
  %366 = load i32, i32* %6, align 4
  store i32 %366, i32* %3, align 4
  br label %406

367:                                              ; preds = %356
  %368 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %369 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @DPIPXLFMT, align 4
  %372 = load i32, i32* @VS_POL_ACTIVE_LOW, align 4
  %373 = load i32, i32* @HS_POL_ACTIVE_LOW, align 4
  %374 = or i32 %372, %373
  %375 = load i32, i32* @DE_POL_ACTIVE_HIGH, align 4
  %376 = or i32 %374, %375
  %377 = load i32, i32* @SUB_CFG_TYPE_CONFIG1, align 4
  %378 = or i32 %376, %377
  %379 = load i32, i32* @DPI_BPP_RGB888, align 4
  %380 = or i32 %378, %379
  %381 = call i32 @regmap_write(i32 %370, i32 %371, i32 %380)
  store i32 %381, i32* %6, align 4
  %382 = load i32, i32* %6, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %367
  %385 = load i32, i32* %6, align 4
  store i32 %385, i32* %3, align 4
  br label %406

386:                                              ; preds = %367
  %387 = load %struct.tc_data*, %struct.tc_data** %4, align 8
  %388 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @DP0_MISC, align 4
  %391 = load i32, i32* @MAX_TU_SYMBOL, align 4
  %392 = load i32, i32* %8, align 4
  %393 = call i32 @FIELD_PREP(i32 %391, i32 %392)
  %394 = load i32, i32* @TU_SIZE, align 4
  %395 = load i32, i32* @TU_SIZE_RECOMMENDED, align 4
  %396 = call i32 @FIELD_PREP(i32 %394, i32 %395)
  %397 = or i32 %393, %396
  %398 = load i32, i32* @BPC_8, align 4
  %399 = or i32 %397, %398
  %400 = call i32 @regmap_write(i32 %389, i32 %390, i32 %399)
  store i32 %400, i32* %6, align 4
  %401 = load i32, i32* %6, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %386
  %404 = load i32, i32* %6, align 4
  store i32 %404, i32* %3, align 4
  br label %406

405:                                              ; preds = %386
  store i32 0, i32* %3, align 4
  br label %406

406:                                              ; preds = %405, %403, %384, %365, %325, %304, %283, %243, %219, %208, %189, %172, %151, %132
  %407 = load i32, i32* %3, align 4
  ret i32 %407
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
