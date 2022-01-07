; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nv_load_state_ramdac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nv_load_state_ramdac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_mode_state = type { i32, i32, %struct.nv04_crtc_reg* }
%struct.nv04_crtc_reg = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.nvkm_clk = type { i32 (%struct.nvkm_clk*, i64, i32*)* }

@NV_RAMDAC_VPLL2 = common dso_local global i64 0, align 8
@NV_PRAMDAC_VPLL_COEFF = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_CELSIUS = common dso_local global i64 0, align 8
@NV_RAMDAC_NV10_CURSYNC = common dso_local global i64 0, align 8
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
@NV_PRAMDAC_FP_DEBUG_1 = common dso_local global i64 0, align 8
@NV_PRAMDAC_FP_DEBUG_2 = common dso_local global i64 0, align 8
@NV_PRAMDAC_FP_MARGIN_COLOR = common dso_local global i64 0, align 8
@NV_PRAMDAC_8C0 = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_CURIE = common dso_local global i64 0, align 8
@NV_PRAMDAC_A20 = common dso_local global i64 0, align 8
@NV_PRAMDAC_A24 = common dso_local global i64 0, align 8
@NV_PRAMDAC_A34 = common dso_local global i64 0, align 8
@NV_PRAMDAC_CTV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.nv04_mode_state*)* @nv_load_state_ramdac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_load_state_ramdac(%struct.drm_device* %0, i32 %1, %struct.nv04_mode_state* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv04_mode_state*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nvkm_clk*, align 8
  %9 = alloca %struct.nv04_crtc_reg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nv04_mode_state* %2, %struct.nv04_mode_state** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %13)
  store %struct.nouveau_drm* %14, %struct.nouveau_drm** %7, align 8
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call %struct.nvkm_clk* @nvxx_clk(%struct.TYPE_6__* %17)
  store %struct.nvkm_clk* %18, %struct.nvkm_clk** %8, align 8
  %19 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %20 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %19, i32 0, i32 2
  %21 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %21, i64 %23
  store %struct.nv04_crtc_reg* %24, %struct.nv04_crtc_reg** %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* @NV_RAMDAC_VPLL2, align 8
  br label %31

29:                                               ; preds = %3
  %30 = load i64, i64* @NV_PRAMDAC_VPLL_COEFF, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i64 [ %28, %27 ], [ %30, %29 ]
  store i64 %32, i64* %10, align 8
  %33 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %34 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NV_DEVICE_INFO_V0_CELSIUS, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i64, i64* @NV_RAMDAC_NV10_CURSYNC, align 8
  %45 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %46 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %45, i32 0, i32 26
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @NVWriteRAMDAC(%struct.drm_device* %42, i32 %43, i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %41, %31
  %50 = load %struct.nvkm_clk*, %struct.nvkm_clk** %8, align 8
  %51 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %50, i32 0, i32 0
  %52 = load i32 (%struct.nvkm_clk*, i64, i32*)*, i32 (%struct.nvkm_clk*, i64, i32*)** %51, align 8
  %53 = load %struct.nvkm_clk*, %struct.nvkm_clk** %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %56 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %55, i32 0, i32 25
  %57 = call i32 %52(%struct.nvkm_clk* %53, i64 %54, i32* %56)
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = load i64, i64* @NV_PRAMDAC_PLL_COEFF_SELECT, align 8
  %60 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %61 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @NVWriteRAMDAC(%struct.drm_device* %58, i32 0, i64 %59, i32 %62)
  %64 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %65 = call i64 @nv_two_heads(%struct.drm_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %49
  %68 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %69 = load i64, i64* @NV_PRAMDAC_SEL_CLK, align 8
  %70 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %71 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @NVWriteRAMDAC(%struct.drm_device* %68, i32 0, i64 %69, i32 %72)
  br label %74

74:                                               ; preds = %67, %49
  %75 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %76 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 17
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i64, i64* @NV_RAMDAC_DITHER_NV11, align 8
  %86 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %87 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @NVWriteRAMDAC(%struct.drm_device* %83, i32 %84, i64 %85, i32 %88)
  br label %90

90:                                               ; preds = %82, %74
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i64, i64* @NV_PRAMDAC_GENERAL_CONTROL, align 8
  %94 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %95 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %94, i32 0, i32 24
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @NVWriteRAMDAC(%struct.drm_device* %91, i32 %92, i64 %93, i32 %96)
  %98 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %99 = call i64 @nv_gf4_disp_arch(%struct.drm_device* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %90
  %102 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i64, i64* @NV_PRAMDAC_630, align 8
  %105 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %106 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %105, i32 0, i32 23
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @NVWriteRAMDAC(%struct.drm_device* %102, i32 %103, i64 %104, i32 %107)
  br label %109

109:                                              ; preds = %101, %90
  %110 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %111 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %115, 48
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i64, i64* @NV_PRAMDAC_634, align 8
  %121 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %122 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %121, i32 0, i32 22
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @NVWriteRAMDAC(%struct.drm_device* %118, i32 %119, i64 %120, i32 %123)
  br label %125

125:                                              ; preds = %117, %109
  %126 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i64, i64* @NV_PRAMDAC_TV_SETUP, align 8
  %129 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %130 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %129, i32 0, i32 21
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @NVWriteRAMDAC(%struct.drm_device* %126, i32 %127, i64 %128, i32 %131)
  %133 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i64, i64* @NV_PRAMDAC_TV_VTOTAL, align 8
  %136 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %137 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %136, i32 0, i32 20
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @NVWriteRAMDAC(%struct.drm_device* %133, i32 %134, i64 %135, i32 %138)
  %140 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load i64, i64* @NV_PRAMDAC_TV_VSKEW, align 8
  %143 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %144 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %143, i32 0, i32 19
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @NVWriteRAMDAC(%struct.drm_device* %140, i32 %141, i64 %142, i32 %145)
  %147 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load i64, i64* @NV_PRAMDAC_TV_VSYNC_DELAY, align 8
  %150 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %151 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %150, i32 0, i32 18
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @NVWriteRAMDAC(%struct.drm_device* %147, i32 %148, i64 %149, i32 %152)
  %154 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load i64, i64* @NV_PRAMDAC_TV_HTOTAL, align 8
  %157 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %158 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %157, i32 0, i32 17
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @NVWriteRAMDAC(%struct.drm_device* %154, i32 %155, i64 %156, i32 %159)
  %161 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load i64, i64* @NV_PRAMDAC_TV_HSKEW, align 8
  %164 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %165 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %164, i32 0, i32 16
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @NVWriteRAMDAC(%struct.drm_device* %161, i32 %162, i64 %163, i32 %166)
  %168 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load i64, i64* @NV_PRAMDAC_TV_HSYNC_DELAY, align 8
  %171 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %172 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %171, i32 0, i32 15
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @NVWriteRAMDAC(%struct.drm_device* %168, i32 %169, i64 %170, i32 %173)
  %175 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load i64, i64* @NV_PRAMDAC_TV_HSYNC_DELAY2, align 8
  %178 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %179 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %178, i32 0, i32 14
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @NVWriteRAMDAC(%struct.drm_device* %175, i32 %176, i64 %177, i32 %180)
  store i32 0, i32* %11, align 4
  br label %182

182:                                              ; preds = %214, %125
  %183 = load i32, i32* %11, align 4
  %184 = icmp slt i32 %183, 7
  br i1 %184, label %185, label %217

185:                                              ; preds = %182
  %186 = load i64, i64* @NV_PRAMDAC_FP_VDISPLAY_END, align 8
  %187 = load i32, i32* %11, align 4
  %188 = mul nsw i32 %187, 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %186, %189
  store i64 %190, i64* %12, align 8
  %191 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %192 = load i32, i32* %5, align 4
  %193 = load i64, i64* %12, align 8
  %194 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %195 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %194, i32 0, i32 13
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @NVWriteRAMDAC(%struct.drm_device* %191, i32 %192, i64 %193, i32 %200)
  %202 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %203 = load i32, i32* %5, align 4
  %204 = load i64, i64* %12, align 8
  %205 = add nsw i64 %204, 32
  %206 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %207 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %206, i32 0, i32 12
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @NVWriteRAMDAC(%struct.drm_device* %202, i32 %203, i64 %205, i32 %212)
  br label %214

214:                                              ; preds = %185
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %11, align 4
  br label %182

217:                                              ; preds = %182
  %218 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %219 = call i64 @nv_gf4_disp_arch(%struct.drm_device* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %268

221:                                              ; preds = %217
  %222 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %223 = load i32, i32* %5, align 4
  %224 = load i64, i64* @NV_RAMDAC_FP_DITHER, align 8
  %225 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %226 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %225, i32 0, i32 11
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @NVWriteRAMDAC(%struct.drm_device* %222, i32 %223, i64 %224, i32 %227)
  store i32 0, i32* %11, align 4
  br label %229

229:                                              ; preds = %264, %221
  %230 = load i32, i32* %11, align 4
  %231 = icmp slt i32 %230, 3
  br i1 %231, label %232, label %267

232:                                              ; preds = %229
  %233 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %234 = load i32, i32* %5, align 4
  %235 = load i64, i64* @NV_PRAMDAC_850, align 8
  %236 = load i32, i32* %11, align 4
  %237 = mul nsw i32 %236, 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %235, %238
  %240 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %241 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %240, i32 0, i32 10
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @NVWriteRAMDAC(%struct.drm_device* %233, i32 %234, i64 %239, i32 %246)
  %248 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %249 = load i32, i32* %5, align 4
  %250 = load i64, i64* @NV_PRAMDAC_85C, align 8
  %251 = load i32, i32* %11, align 4
  %252 = mul nsw i32 %251, 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %250, %253
  %255 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %256 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %255, i32 0, i32 10
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 3
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @NVWriteRAMDAC(%struct.drm_device* %248, i32 %249, i64 %254, i32 %262)
  br label %264

264:                                              ; preds = %232
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %11, align 4
  br label %229

267:                                              ; preds = %229
  br label %268

268:                                              ; preds = %267, %217
  %269 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %270 = load i32, i32* %5, align 4
  %271 = load i64, i64* @NV_PRAMDAC_FP_TG_CONTROL, align 8
  %272 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %273 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %272, i32 0, i32 9
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @NVWriteRAMDAC(%struct.drm_device* %269, i32 %270, i64 %271, i32 %274)
  %276 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %277 = load i32, i32* %5, align 4
  %278 = load i64, i64* @NV_PRAMDAC_FP_DEBUG_0, align 8
  %279 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %280 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %279, i32 0, i32 8
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @NVWriteRAMDAC(%struct.drm_device* %276, i32 %277, i64 %278, i32 %281)
  %283 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %284 = load i32, i32* %5, align 4
  %285 = load i64, i64* @NV_PRAMDAC_FP_DEBUG_1, align 8
  %286 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %287 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @NVWriteRAMDAC(%struct.drm_device* %283, i32 %284, i64 %285, i32 %288)
  %290 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %291 = load i32, i32* %5, align 4
  %292 = load i64, i64* @NV_PRAMDAC_FP_DEBUG_2, align 8
  %293 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %294 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @NVWriteRAMDAC(%struct.drm_device* %290, i32 %291, i64 %292, i32 %295)
  %297 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %298 = load i32, i32* %5, align 4
  %299 = load i64, i64* @NV_PRAMDAC_FP_MARGIN_COLOR, align 8
  %300 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %301 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @NVWriteRAMDAC(%struct.drm_device* %297, i32 %298, i64 %299, i32 %302)
  %304 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %305 = call i64 @nv_gf4_disp_arch(%struct.drm_device* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %268
  %308 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %309 = load i32, i32* %5, align 4
  %310 = load i64, i64* @NV_PRAMDAC_8C0, align 8
  %311 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %312 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @NVWriteRAMDAC(%struct.drm_device* %308, i32 %309, i64 %310, i32 %313)
  br label %315

315:                                              ; preds = %307, %268
  %316 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %317 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @NV_DEVICE_INFO_V0_CURIE, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %369

324:                                              ; preds = %315
  %325 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %326 = load i32, i32* %5, align 4
  %327 = load i64, i64* @NV_PRAMDAC_A20, align 8
  %328 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %329 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @NVWriteRAMDAC(%struct.drm_device* %325, i32 %326, i64 %327, i32 %330)
  %332 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %333 = load i32, i32* %5, align 4
  %334 = load i64, i64* @NV_PRAMDAC_A24, align 8
  %335 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %336 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @NVWriteRAMDAC(%struct.drm_device* %332, i32 %333, i64 %334, i32 %337)
  %339 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %340 = load i32, i32* %5, align 4
  %341 = load i64, i64* @NV_PRAMDAC_A34, align 8
  %342 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %343 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @NVWriteRAMDAC(%struct.drm_device* %339, i32 %340, i64 %341, i32 %344)
  store i32 0, i32* %11, align 4
  br label %346

346:                                              ; preds = %365, %324
  %347 = load i32, i32* %11, align 4
  %348 = icmp slt i32 %347, 38
  br i1 %348, label %349, label %368

349:                                              ; preds = %346
  %350 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %351 = load i32, i32* %5, align 4
  %352 = load i64, i64* @NV_PRAMDAC_CTV, align 8
  %353 = load i32, i32* %11, align 4
  %354 = mul nsw i32 4, %353
  %355 = sext i32 %354 to i64
  %356 = add nsw i64 %352, %355
  %357 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  %358 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %11, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @NVWriteRAMDAC(%struct.drm_device* %350, i32 %351, i64 %356, i32 %363)
  br label %365

365:                                              ; preds = %349
  %366 = load i32, i32* %11, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %11, align 4
  br label %346

368:                                              ; preds = %346
  br label %369

369:                                              ; preds = %368, %315
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_clk* @nvxx_clk(%struct.TYPE_6__*) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i64, i32) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i64 @nv_gf4_disp_arch(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
