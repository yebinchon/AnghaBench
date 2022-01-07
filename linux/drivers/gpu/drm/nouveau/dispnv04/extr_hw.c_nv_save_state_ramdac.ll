; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nv_save_state_ramdac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nv_save_state_ramdac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_mode_state = type { i8*, i8*, %struct.nv04_crtc_reg* }
%struct.nv04_crtc_reg = type { i32, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@NV_DEVICE_INFO_V0_CELSIUS = common dso_local global i64 0, align 8
@NV_RAMDAC_NV10_CURSYNC = common dso_local global i64 0, align 8
@PLL_VPLL1 = common dso_local global i32 0, align 4
@PLL_VPLL0 = common dso_local global i32 0, align 4
@NV_PRAMDAC_PLL_COEFF_SELECT = common dso_local global i64 0, align 8
@NV_PRAMDAC_SEL_CLK = common dso_local global i64 0, align 8
@NV_RAMDAC_DITHER_NV11 = common dso_local global i64 0, align 8
@NV_PRAMDAC_GENERAL_CONTROL = common dso_local global i64 0, align 8
@NV_PRAMDAC_630 = common dso_local global i64 0, align 8
@NV_PRAMDAC_634 = common dso_local global i64 0, align 8
@NV_PRAMDAC_TV_SETUP = common dso_local global i64 0, align 8
@NV_PRAMDAC_TV_VTOTAL = common dso_local global i64 0, align 8
@NV_PRAMDAC_TV_VSKEW = common dso_local global i64 0, align 8
@NV_PRAMDAC_TV_VSYNC_DELAY = common dso_local global i64 0, align 8
@NV_PRAMDAC_TV_HTOTAL = common dso_local global i64 0, align 8
@NV_PRAMDAC_TV_HSKEW = common dso_local global i64 0, align 8
@NV_PRAMDAC_TV_HSYNC_DELAY = common dso_local global i64 0, align 8
@NV_PRAMDAC_TV_HSYNC_DELAY2 = common dso_local global i64 0, align 8
@NV_PRAMDAC_FP_VDISPLAY_END = common dso_local global i64 0, align 8
@NV_RAMDAC_FP_DITHER = common dso_local global i64 0, align 8
@NV_PRAMDAC_850 = common dso_local global i64 0, align 8
@NV_PRAMDAC_85C = common dso_local global i64 0, align 8
@NV_PRAMDAC_FP_TG_CONTROL = common dso_local global i64 0, align 8
@NV_PRAMDAC_FP_DEBUG_0 = common dso_local global i64 0, align 8
@NV_PRAMDAC_FP_DEBUG_0_PWRDOWN_FPCLK = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_DEBUG_1 = common dso_local global i64 0, align 8
@NV_PRAMDAC_FP_DEBUG_2 = common dso_local global i64 0, align 8
@NV_PRAMDAC_FP_MARGIN_COLOR = common dso_local global i64 0, align 8
@NV_PRAMDAC_8C0 = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_CURIE = common dso_local global i64 0, align 8
@NV_PRAMDAC_A20 = common dso_local global i64 0, align 8
@NV_PRAMDAC_A24 = common dso_local global i64 0, align 8
@NV_PRAMDAC_A34 = common dso_local global i64 0, align 8
@NV_PRAMDAC_CTV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.nv04_mode_state*)* @nv_save_state_ramdac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_save_state_ramdac(%struct.drm_device* %0, i32 %1, %struct.nv04_mode_state* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv04_mode_state*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nv04_crtc_reg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nv04_mode_state* %2, %struct.nv04_mode_state** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %7, align 8
  %13 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %14 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %13, i32 0, i32 2
  %15 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %15, i64 %17
  store %struct.nv04_crtc_reg* %18, %struct.nv04_crtc_reg** %8, align 8
  %19 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %20 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NV_DEVICE_INFO_V0_CELSIUS, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i64, i64* @NV_RAMDAC_NV10_CURSYNC, align 8
  %31 = call i8* @NVReadRAMDAC(%struct.drm_device* %28, i32 %29, i64 %30)
  %32 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %33 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %32, i32 0, i32 26
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %27, %3
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @PLL_VPLL1, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @PLL_VPLL0, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %45 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %44, i32 0, i32 25
  %46 = call i32 @nouveau_hw_get_pllvals(%struct.drm_device* %35, i32 %43, i32* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = load i64, i64* @NV_PRAMDAC_PLL_COEFF_SELECT, align 8
  %49 = call i8* @NVReadRAMDAC(%struct.drm_device* %47, i32 0, i64 %48)
  %50 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %51 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %53 = call i64 @nv_two_heads(%struct.drm_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %42
  %56 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %57 = load i64, i64* @NV_PRAMDAC_SEL_CLK, align 8
  %58 = call i8* @NVReadRAMDAC(%struct.drm_device* %56, i32 0, i64 %57)
  %59 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %60 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %55, %42
  %62 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %63 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 17
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i64, i64* @NV_RAMDAC_DITHER_NV11, align 8
  %73 = call i8* @NVReadRAMDAC(%struct.drm_device* %70, i32 %71, i64 %72)
  %74 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %75 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %74, i32 0, i32 11
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %69, %61
  %77 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i64, i64* @NV_PRAMDAC_GENERAL_CONTROL, align 8
  %80 = call i8* @NVReadRAMDAC(%struct.drm_device* %77, i32 %78, i64 %79)
  %81 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %82 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %81, i32 0, i32 24
  store i8* %80, i8** %82, align 8
  %83 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %84 = call i64 @nv_gf4_disp_arch(%struct.drm_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %76
  %87 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i64, i64* @NV_PRAMDAC_630, align 8
  %90 = call i8* @NVReadRAMDAC(%struct.drm_device* %87, i32 %88, i64 %89)
  %91 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %92 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %91, i32 0, i32 23
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %86, %76
  %94 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %95 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp sge i32 %99, 48
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i64, i64* @NV_PRAMDAC_634, align 8
  %105 = call i8* @NVReadRAMDAC(%struct.drm_device* %102, i32 %103, i64 %104)
  %106 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %107 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %106, i32 0, i32 22
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %101, %93
  %109 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i64, i64* @NV_PRAMDAC_TV_SETUP, align 8
  %112 = call i8* @NVReadRAMDAC(%struct.drm_device* %109, i32 %110, i64 %111)
  %113 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %114 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %113, i32 0, i32 21
  store i8* %112, i8** %114, align 8
  %115 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i64, i64* @NV_PRAMDAC_TV_VTOTAL, align 8
  %118 = call i8* @NVReadRAMDAC(%struct.drm_device* %115, i32 %116, i64 %117)
  %119 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %120 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %119, i32 0, i32 20
  store i8* %118, i8** %120, align 8
  %121 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i64, i64* @NV_PRAMDAC_TV_VSKEW, align 8
  %124 = call i8* @NVReadRAMDAC(%struct.drm_device* %121, i32 %122, i64 %123)
  %125 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %126 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %125, i32 0, i32 19
  store i8* %124, i8** %126, align 8
  %127 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i64, i64* @NV_PRAMDAC_TV_VSYNC_DELAY, align 8
  %130 = call i8* @NVReadRAMDAC(%struct.drm_device* %127, i32 %128, i64 %129)
  %131 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %132 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %131, i32 0, i32 18
  store i8* %130, i8** %132, align 8
  %133 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i64, i64* @NV_PRAMDAC_TV_HTOTAL, align 8
  %136 = call i8* @NVReadRAMDAC(%struct.drm_device* %133, i32 %134, i64 %135)
  %137 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %138 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %137, i32 0, i32 17
  store i8* %136, i8** %138, align 8
  %139 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i64, i64* @NV_PRAMDAC_TV_HSKEW, align 8
  %142 = call i8* @NVReadRAMDAC(%struct.drm_device* %139, i32 %140, i64 %141)
  %143 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %144 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %143, i32 0, i32 16
  store i8* %142, i8** %144, align 8
  %145 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load i64, i64* @NV_PRAMDAC_TV_HSYNC_DELAY, align 8
  %148 = call i8* @NVReadRAMDAC(%struct.drm_device* %145, i32 %146, i64 %147)
  %149 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %150 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %149, i32 0, i32 15
  store i8* %148, i8** %150, align 8
  %151 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load i64, i64* @NV_PRAMDAC_TV_HSYNC_DELAY2, align 8
  %154 = call i8* @NVReadRAMDAC(%struct.drm_device* %151, i32 %152, i64 %153)
  %155 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %156 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %155, i32 0, i32 14
  store i8* %154, i8** %156, align 8
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %187, %108
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %158, 7
  br i1 %159, label %160, label %190

160:                                              ; preds = %157
  %161 = load i64, i64* @NV_PRAMDAC_FP_VDISPLAY_END, align 8
  %162 = load i32, i32* %9, align 4
  %163 = mul nsw i32 %162, 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %161, %164
  store i64 %165, i64* %10, align 8
  %166 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %167 = load i32, i32* %5, align 4
  %168 = load i64, i64* %10, align 8
  %169 = call i8* @NVReadRAMDAC(%struct.drm_device* %166, i32 %167, i64 %168)
  %170 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %171 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %170, i32 0, i32 13
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  store i8* %169, i8** %175, align 8
  %176 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %177 = load i32, i32* %5, align 4
  %178 = load i64, i64* %10, align 8
  %179 = add nsw i64 %178, 32
  %180 = call i8* @NVReadRAMDAC(%struct.drm_device* %176, i32 %177, i64 %179)
  %181 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %182 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %181, i32 0, i32 12
  %183 = load i8**, i8*** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  store i8* %180, i8** %186, align 8
  br label %187

187:                                              ; preds = %160
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %157

190:                                              ; preds = %157
  %191 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %192 = call i64 @nv_gf4_disp_arch(%struct.drm_device* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %238

194:                                              ; preds = %190
  %195 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %196 = load i32, i32* %5, align 4
  %197 = load i64, i64* @NV_RAMDAC_FP_DITHER, align 8
  %198 = call i8* @NVReadRAMDAC(%struct.drm_device* %195, i32 %196, i64 %197)
  %199 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %200 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %199, i32 0, i32 11
  store i8* %198, i8** %200, align 8
  store i32 0, i32* %9, align 4
  br label %201

201:                                              ; preds = %234, %194
  %202 = load i32, i32* %9, align 4
  %203 = icmp slt i32 %202, 3
  br i1 %203, label %204, label %237

204:                                              ; preds = %201
  %205 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load i64, i64* @NV_PRAMDAC_850, align 8
  %208 = load i32, i32* %9, align 4
  %209 = mul nsw i32 %208, 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %207, %210
  %212 = call i8* @NVReadRAMDAC(%struct.drm_device* %205, i32 %206, i64 %211)
  %213 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %214 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %213, i32 0, i32 10
  %215 = load i8**, i8*** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  store i8* %212, i8** %218, align 8
  %219 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i64, i64* @NV_PRAMDAC_85C, align 8
  %222 = load i32, i32* %9, align 4
  %223 = mul nsw i32 %222, 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %221, %224
  %226 = call i8* @NVReadRAMDAC(%struct.drm_device* %219, i32 %220, i64 %225)
  %227 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %228 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %227, i32 0, i32 10
  %229 = load i8**, i8*** %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = add nsw i32 %230, 3
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %229, i64 %232
  store i8* %226, i8** %233, align 8
  br label %234

234:                                              ; preds = %204
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %9, align 4
  br label %201

237:                                              ; preds = %201
  br label %238

238:                                              ; preds = %237, %190
  %239 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %240 = load i32, i32* %5, align 4
  %241 = load i64, i64* @NV_PRAMDAC_FP_TG_CONTROL, align 8
  %242 = call i8* @NVReadRAMDAC(%struct.drm_device* %239, i32 %240, i64 %241)
  %243 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %244 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %243, i32 0, i32 9
  store i8* %242, i8** %244, align 8
  %245 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %246 = load i32, i32* %5, align 4
  %247 = load i64, i64* @NV_PRAMDAC_FP_DEBUG_0, align 8
  %248 = call i8* @NVReadRAMDAC(%struct.drm_device* %245, i32 %246, i64 %247)
  %249 = ptrtoint i8* %248 to i32
  %250 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %251 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  %252 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %253 = call i64 @nv_gf4_disp_arch(%struct.drm_device* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %268, label %255

255:                                              ; preds = %238
  %256 = load i32, i32* %5, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %255
  %259 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %260 = load i64, i64* @NV_PRAMDAC_FP_DEBUG_0, align 8
  %261 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %262 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @NV_PRAMDAC_FP_DEBUG_0_PWRDOWN_FPCLK, align 4
  %265 = xor i32 %264, -1
  %266 = and i32 %263, %265
  %267 = call i32 @NVWriteRAMDAC(%struct.drm_device* %259, i32 0, i64 %260, i32 %266)
  br label %268

268:                                              ; preds = %258, %255, %238
  %269 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %270 = load i32, i32* %5, align 4
  %271 = load i64, i64* @NV_PRAMDAC_FP_DEBUG_1, align 8
  %272 = call i8* @NVReadRAMDAC(%struct.drm_device* %269, i32 %270, i64 %271)
  %273 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %274 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %273, i32 0, i32 8
  store i8* %272, i8** %274, align 8
  %275 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %276 = load i32, i32* %5, align 4
  %277 = load i64, i64* @NV_PRAMDAC_FP_DEBUG_2, align 8
  %278 = call i8* @NVReadRAMDAC(%struct.drm_device* %275, i32 %276, i64 %277)
  %279 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %280 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %279, i32 0, i32 7
  store i8* %278, i8** %280, align 8
  %281 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %282 = load i32, i32* %5, align 4
  %283 = load i64, i64* @NV_PRAMDAC_FP_MARGIN_COLOR, align 8
  %284 = call i8* @NVReadRAMDAC(%struct.drm_device* %281, i32 %282, i64 %283)
  %285 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %286 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %285, i32 0, i32 6
  store i8* %284, i8** %286, align 8
  %287 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %288 = call i64 @nv_gf4_disp_arch(%struct.drm_device* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %268
  %291 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %292 = load i32, i32* %5, align 4
  %293 = load i64, i64* @NV_PRAMDAC_8C0, align 8
  %294 = call i8* @NVReadRAMDAC(%struct.drm_device* %291, i32 %292, i64 %293)
  %295 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %296 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %295, i32 0, i32 5
  store i8* %294, i8** %296, align 8
  br label %297

297:                                              ; preds = %290, %268
  %298 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %299 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @NV_DEVICE_INFO_V0_CURIE, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %347

306:                                              ; preds = %297
  %307 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %308 = load i32, i32* %5, align 4
  %309 = load i64, i64* @NV_PRAMDAC_A20, align 8
  %310 = call i8* @NVReadRAMDAC(%struct.drm_device* %307, i32 %308, i64 %309)
  %311 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %312 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %311, i32 0, i32 4
  store i8* %310, i8** %312, align 8
  %313 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %314 = load i32, i32* %5, align 4
  %315 = load i64, i64* @NV_PRAMDAC_A24, align 8
  %316 = call i8* @NVReadRAMDAC(%struct.drm_device* %313, i32 %314, i64 %315)
  %317 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %318 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %317, i32 0, i32 3
  store i8* %316, i8** %318, align 8
  %319 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %320 = load i32, i32* %5, align 4
  %321 = load i64, i64* @NV_PRAMDAC_A34, align 8
  %322 = call i8* @NVReadRAMDAC(%struct.drm_device* %319, i32 %320, i64 %321)
  %323 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %324 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %323, i32 0, i32 2
  store i8* %322, i8** %324, align 8
  store i32 0, i32* %9, align 4
  br label %325

325:                                              ; preds = %343, %306
  %326 = load i32, i32* %9, align 4
  %327 = icmp slt i32 %326, 38
  br i1 %327, label %328, label %346

328:                                              ; preds = %325
  %329 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %330 = load i32, i32* %5, align 4
  %331 = load i64, i64* @NV_PRAMDAC_CTV, align 8
  %332 = load i32, i32* %9, align 4
  %333 = mul nsw i32 4, %332
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %331, %334
  %336 = call i8* @NVReadRAMDAC(%struct.drm_device* %329, i32 %330, i64 %335)
  %337 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %338 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %337, i32 0, i32 1
  %339 = load i8**, i8*** %338, align 8
  %340 = load i32, i32* %9, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  store i8* %336, i8** %342, align 8
  br label %343

343:                                              ; preds = %328
  %344 = load i32, i32* %9, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %9, align 4
  br label %325

346:                                              ; preds = %325
  br label %347

347:                                              ; preds = %346, %297
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i8* @NVReadRAMDAC(%struct.drm_device*, i32, i64) #1

declare dso_local i32 @nouveau_hw_get_pllvals(%struct.drm_device*, i32, i32*) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i64 @nv_gf4_disp_arch(%struct.drm_device*) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
