; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.nouveau_drm = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.nv04_crtc_reg = type { i32*, i32, i32, i32, i32*, i32, i32, i32, i64, i64*, i32* }
%struct.nv17_tv_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.nv17_tv_norm_params = type { i64, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32*, %struct.drm_display_mode }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.nv04_crtc_reg* }
%struct.TYPE_16__ = type { %struct.nv17_tv_state }

@NV_CIO_CRE_53 = common dso_local global i64 0, align 8
@NV_CIO_CRE_54 = common dso_local global i64 0, align 8
@TV_ENC_MODE = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_RANKINE = common dso_local global i64 0, align 8
@FP_DISPLAY_END = common dso_local global i64 0, align 8
@FP_TOTAL = common dso_local global i64 0, align 8
@FP_SYNC_START = common dso_local global i64 0, align 8
@FP_SYNC_END = common dso_local global i64 0, align 8
@FP_CRTC = common dso_local global i64 0, align 8
@NV_PRAMDAC_FP_TG_CONTROL_DISPEN_POS = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_READ_PROG = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_WIDTH_12 = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_VSYNC_POS = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_HSYNC_POS = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_DEBUG_0_YWEIGHT_ROUND = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_DEBUG_0_XWEIGHT_ROUND = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_DEBUG_0_YINTERP_BILINEAR = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_DEBUG_0_XINTERP_BILINEAR = common dso_local global i32 0, align 4
@NV_RAMDAC_FP_DEBUG_0_TMDS_ENABLED = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_DEBUG_0_YSCALE_ENABLE = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_DEBUG_0_XSCALE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @nv17_tv_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv17_tv_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nv04_crtc_reg*, align 8
  %11 = alloca %struct.nv17_tv_state*, align 8
  %12 = alloca %struct.nv17_tv_norm_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 1
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %7, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %19 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %18)
  store %struct.nouveau_drm* %19, %struct.nouveau_drm** %8, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_18__* @nouveau_crtc(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %27 = call %struct.TYPE_17__* @nv04_display(%struct.drm_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %30, i64 %32
  store %struct.nv04_crtc_reg* %33, %struct.nv04_crtc_reg** %10, align 8
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %35 = call %struct.TYPE_16__* @to_tv_enc(%struct.drm_encoder* %34)
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store %struct.nv17_tv_state* %36, %struct.nv17_tv_state** %11, align 8
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %38 = call %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder* %37)
  store %struct.nv17_tv_norm_params* %38, %struct.nv17_tv_norm_params** %12, align 8
  %39 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %40 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @NV_CIO_CRE_53, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 64, i32* %43, align 4
  %44 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %45 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @NV_CIO_CRE_54, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %50 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %49, i32 0, i32 1
  store i32 2, i32* %50, align 8
  %51 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %52 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  %53 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %54 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %53, i32 0, i32 3
  store i32 0, i32* %54, align 8
  %55 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %12, align 8
  %56 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TV_ENC_MODE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %176

60:                                               ; preds = %3
  %61 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %62 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %61, i32 0, i32 0
  store i32 319885568, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %67 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, 16
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %72 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %71, i32 0, i32 1
  store i32 8421392, i32* %72, align 4
  %73 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %74 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %73, i32 0, i32 2
  store i32 47185920, i32* %74, align 8
  %75 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %76 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %78 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %77, i32 0, i32 4
  store i32 0, i32* %78, align 8
  %79 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %80 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %79, i32 0, i32 5
  store i32 31457280, i32* %80, align 4
  %81 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %12, align 8
  %82 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 576
  br i1 %85, label %86, label %91

86:                                               ; preds = %70
  %87 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %88 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %87, i32 0, i32 6
  store i32 18874368, i32* %88, align 8
  %89 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %90 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %89, i32 0, i32 7
  store i32 51, i32* %90, align 4
  br label %103

91:                                               ; preds = %70
  %92 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %12, align 8
  %93 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 480
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %99 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %98, i32 0, i32 6
  store i32 15728640, i32* %99, align 8
  %100 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %101 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %100, i32 0, i32 7
  store i32 19, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %91
  br label %103

103:                                              ; preds = %102, %86
  %104 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %105 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @NV_DEVICE_INFO_V0_RANKINE, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %103
  %113 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %114 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %113, i32 0, i32 8
  store i32 59616, i32* %114, align 8
  %115 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %116 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %115, i32 0, i32 9
  store i32 5904, i32* %116, align 4
  %117 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %118 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %117, i32 0, i32 10
  store i32 0, i32* %118, align 8
  %119 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %120 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %119, i32 0, i32 11
  store i32 0, i32* %120, align 4
  br label %153

121:                                              ; preds = %103
  %122 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %12, align 8
  %123 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 576
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %129 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %128, i32 0, i32 10
  store i32 32, i32* %129, align 8
  %130 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %131 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %130, i32 0, i32 11
  store i32 16, i32* %131, align 4
  %132 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %133 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %132, i32 0, i32 8
  store i32 104208, i32* %133, align 8
  %134 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %135 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %134, i32 0, i32 9
  store i32 26864, i32* %135, align 4
  br label %152

136:                                              ; preds = %121
  %137 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %12, align 8
  %138 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 480
  br i1 %141, label %142, label %151

142:                                              ; preds = %136
  %143 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %144 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %143, i32 0, i32 10
  store i32 16, i32* %144, align 8
  %145 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %146 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %145, i32 0, i32 11
  store i32 32, i32* %146, align 4
  %147 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %148 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %147, i32 0, i32 8
  store i32 19344, i32* %148, align 8
  %149 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %150 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %149, i32 0, i32 9
  store i32 111744, i32* %150, align 4
  br label %151

151:                                              ; preds = %142, %136
  br label %152

152:                                              ; preds = %151, %127
  br label %153

153:                                              ; preds = %152, %112
  store i32 0, i32* %13, align 4
  br label %154

154:                                              ; preds = %172, %153
  %155 = load i32, i32* %13, align 4
  %156 = icmp slt i32 %155, 64
  br i1 %156, label %157, label %175

157:                                              ; preds = %154
  %158 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %12, align 8
  %159 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.nv17_tv_state*, %struct.nv17_tv_state** %11, align 8
  %167 = getelementptr inbounds %struct.nv17_tv_state, %struct.nv17_tv_state* %166, i32 0, i32 12
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  br label %172

172:                                              ; preds = %157
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  br label %154

175:                                              ; preds = %154
  br label %351

176:                                              ; preds = %3
  %177 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %12, align 8
  %178 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  store %struct.drm_display_mode* %179, %struct.drm_display_mode** %14, align 8
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %198, %176
  %181 = load i32, i32* %13, align 4
  %182 = icmp slt i32 %181, 38
  br i1 %182, label %183, label %201

183:                                              ; preds = %180
  %184 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %12, align 8
  %185 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %193 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %192, i32 0, i32 10
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 %191, i32* %197, align 4
  br label %198

198:                                              ; preds = %183
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %180

201:                                              ; preds = %180
  %202 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %203 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %204, 1
  %206 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %207 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* @FP_DISPLAY_END, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32 %205, i32* %210, align 4
  %211 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %212 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %213, 1
  %215 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %216 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* @FP_TOTAL, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32 %214, i32* %219, align 4
  %220 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %221 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %222, 1
  %224 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %225 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* @FP_SYNC_START, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32 %223, i32* %228, align 4
  %229 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %230 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 %231, 1
  %233 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %234 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %233, i32 0, i32 4
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @FP_SYNC_END, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32 %232, i32* %237, align 4
  %238 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %239 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %242 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sub nsw i32 %243, 600
  %245 = sdiv i32 %244, 40
  %246 = sub nsw i32 %245, 1
  %247 = call i32 @max(i32 %246, i32 1)
  %248 = add nsw i32 %240, %247
  %249 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %250 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* @FP_CRTC, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 %248, i32* %253, align 4
  %254 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %255 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %254, i32 0, i32 5
  %256 = load i64, i64* %255, align 8
  %257 = sub nsw i64 %256, 1
  %258 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %259 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %258, i32 0, i32 9
  %260 = load i64*, i64** %259, align 8
  %261 = load i64, i64* @FP_DISPLAY_END, align 8
  %262 = getelementptr inbounds i64, i64* %260, i64 %261
  store i64 %257, i64* %262, align 8
  %263 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %264 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %263, i32 0, i32 8
  %265 = load i64, i64* %264, align 8
  %266 = sub nsw i64 %265, 1
  %267 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %268 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %267, i32 0, i32 9
  %269 = load i64*, i64** %268, align 8
  %270 = load i64, i64* @FP_TOTAL, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  store i64 %266, i64* %271, align 8
  %272 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %273 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %272, i32 0, i32 7
  %274 = load i64, i64* %273, align 8
  %275 = sub nsw i64 %274, 1
  %276 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %277 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %276, i32 0, i32 9
  %278 = load i64*, i64** %277, align 8
  %279 = load i64, i64* @FP_SYNC_START, align 8
  %280 = getelementptr inbounds i64, i64* %278, i64 %279
  store i64 %275, i64* %280, align 8
  %281 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %282 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %281, i32 0, i32 6
  %283 = load i64, i64* %282, align 8
  %284 = sub nsw i64 %283, 1
  %285 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %286 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %285, i32 0, i32 9
  %287 = load i64*, i64** %286, align 8
  %288 = load i64, i64* @FP_SYNC_END, align 8
  %289 = getelementptr inbounds i64, i64* %287, i64 %288
  store i64 %284, i64* %289, align 8
  %290 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %291 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %290, i32 0, i32 5
  %292 = load i64, i64* %291, align 8
  %293 = sub nsw i64 %292, 1
  %294 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %295 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %294, i32 0, i32 9
  %296 = load i64*, i64** %295, align 8
  %297 = load i64, i64* @FP_CRTC, align 8
  %298 = getelementptr inbounds i64, i64* %296, i64 %297
  store i64 %293, i64* %298, align 8
  %299 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_DISPEN_POS, align 4
  %300 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_READ_PROG, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_WIDTH_12, align 4
  %303 = or i32 %301, %302
  %304 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %305 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %304, i32 0, i32 5
  store i32 %303, i32* %305, align 8
  %306 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %307 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %201
  %313 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_VSYNC_POS, align 4
  %314 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %315 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 8
  br label %318

318:                                              ; preds = %312, %201
  %319 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %320 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %318
  %326 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_HSYNC_POS, align 4
  %327 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %328 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 8
  br label %331

331:                                              ; preds = %325, %318
  %332 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_0_YWEIGHT_ROUND, align 4
  %333 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_0_XWEIGHT_ROUND, align 4
  %334 = or i32 %332, %333
  %335 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_0_YINTERP_BILINEAR, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_0_XINTERP_BILINEAR, align 4
  %338 = or i32 %336, %337
  %339 = load i32, i32* @NV_RAMDAC_FP_DEBUG_0_TMDS_ENABLED, align 4
  %340 = or i32 %338, %339
  %341 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_0_YSCALE_ENABLE, align 4
  %342 = or i32 %340, %341
  %343 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_0_XSCALE_ENABLE, align 4
  %344 = or i32 %342, %343
  %345 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %346 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %345, i32 0, i32 6
  store i32 %344, i32* %346, align 4
  %347 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %348 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %347, i32 0, i32 8
  store i64 0, i64* %348, align 8
  %349 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %350 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %349, i32 0, i32 7
  store i32 8392832, i32* %350, align 8
  br label %351

351:                                              ; preds = %331, %175
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.TYPE_18__* @nouveau_crtc(i32) #1

declare dso_local %struct.TYPE_17__* @nv04_display(%struct.drm_device*) #1

declare dso_local %struct.TYPE_16__* @to_tv_enc(%struct.drm_encoder*) #1

declare dso_local %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
