; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { i32* }
%struct.drm_plane_state = type { i32 }
%struct.tegra_plane_state = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.tegra_dc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.tegra_plane = type { i32 }
%struct.tegra_bo = type { i32 }

@VCOUNTER = common dso_local global i32 0, align 4
@DC_WIN_CORE_ACT_CONTROL = common dso_local global i32 0, align 4
@BLEND_FACTOR_DST_ALPHA_ZERO = common dso_local global i32 0, align 4
@BLEND_FACTOR_SRC_ALPHA_K2 = common dso_local global i32 0, align 4
@BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC = common dso_local global i32 0, align 4
@BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC = common dso_local global i32 0, align 4
@DC_WIN_BLEND_MATCH_SELECT = common dso_local global i32 0, align 4
@DC_WIN_BLEND_NOMATCH_SELECT = common dso_local global i32 0, align 4
@DC_WIN_BLEND_LAYER_CONTROL = common dso_local global i32 0, align 4
@HORIZONTAL_TAPS_5 = common dso_local global i32 0, align 4
@VERTICAL_TAPS_5 = common dso_local global i32 0, align 4
@DC_WIN_WINDOWGROUP_SET_CONTROL_INPUT_SCALER = common dso_local global i32 0, align 4
@INPUT_SCALER_VBYPASS = common dso_local global i32 0, align 4
@INPUT_SCALER_HBYPASS = common dso_local global i32 0, align 4
@DC_WIN_WINDOWGROUP_SET_INPUT_SCALER_USAGE = common dso_local global i32 0, align 4
@DC_WINBUF_CDE_CONTROL = common dso_local global i32 0, align 4
@DC_WIN_COLOR_DEPTH = common dso_local global i32 0, align 4
@DC_WIN_PRECOMP_WGRP_PARAMS = common dso_local global i32 0, align 4
@DC_WIN_POSITION = common dso_local global i32 0, align 4
@DC_WIN_SIZE = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@COLOR_EXPAND = common dso_local global i32 0, align 4
@DC_WIN_WIN_OPTIONS = common dso_local global i32 0, align 4
@DC_WIN_CROPPED_SIZE = common dso_local global i32 0, align 4
@DC_WINBUF_START_ADDR_HI = common dso_local global i32 0, align 4
@DC_WINBUF_START_ADDR = common dso_local global i32 0, align 4
@DC_WIN_PLANAR_STORAGE = common dso_local global i32 0, align 4
@CLAMP_BEFORE_BLEND = common dso_local global i32 0, align 4
@DEGAMMA_SRGB = common dso_local global i32 0, align 4
@INPUT_RANGE_FULL = common dso_local global i32 0, align 4
@DC_WIN_SET_PARAMS = common dso_local global i32 0, align 4
@DC_WINBUF_CROPPED_POINT = common dso_local global i32 0, align 4
@DC_WINBUF_SURFACE_KIND_PITCH = common dso_local global i32 0, align 4
@DC_WINBUF_SURFACE_KIND_TILED = common dso_local global i32 0, align 4
@DC_WINBUF_SURFACE_KIND_BLOCK = common dso_local global i32 0, align 4
@DC_WINBUF_SURFACE_KIND = common dso_local global i32 0, align 4
@DC_WIN_WINDOW_SET_CONTROL = common dso_local global i32 0, align 4
@CONTROL_CSC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @tegra_shared_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_shared_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.tegra_plane_state*, align 8
  %6 = alloca %struct.tegra_dc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.tegra_plane*, align 8
  %10 = alloca %struct.tegra_bo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %14 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call %struct.tegra_plane_state* @to_tegra_plane_state(%struct.TYPE_6__* %16)
  store %struct.tegra_plane_state* %17, %struct.tegra_plane_state** %5, align 8
  %18 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.tegra_dc* @to_tegra_dc(i32 %22)
  store %struct.tegra_dc* %23, %struct.tegra_dc** %6, align 8
  %24 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %25 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %30 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 8
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %32, align 8
  store %struct.drm_framebuffer* %33, %struct.drm_framebuffer** %8, align 8
  %34 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %35 = call %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane* %34)
  store %struct.tegra_plane* %35, %struct.tegra_plane** %9, align 8
  %36 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %37 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %44 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 8
  %47 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %46, align 8
  %48 = icmp ne %struct.drm_framebuffer* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42, %2
  br label %290

50:                                               ; preds = %42
  %51 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %52 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %59 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %60 = call i32 @tegra_shared_plane_atomic_disable(%struct.drm_plane* %58, %struct.drm_plane_state* %59)
  br label %290

61:                                               ; preds = %50
  %62 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %63 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pm_runtime_get_sync(i32 %64)
  %66 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %67 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %68 = call i32 @tegra_dc_assign_shared_plane(%struct.tegra_dc* %66, %struct.tegra_plane* %67)
  %69 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %70 = load i32, i32* @VCOUNTER, align 4
  %71 = load i32, i32* @DC_WIN_CORE_ACT_CONTROL, align 4
  %72 = call i32 @tegra_plane_writel(%struct.tegra_plane* %69, i32 %70, i32 %71)
  %73 = load i32, i32* @BLEND_FACTOR_DST_ALPHA_ZERO, align 4
  %74 = load i32, i32* @BLEND_FACTOR_SRC_ALPHA_K2, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @DC_WIN_BLEND_MATCH_SELECT, align 4
  %83 = call i32 @tegra_plane_writel(%struct.tegra_plane* %80, i32 %81, i32 %82)
  %84 = load i32, i32* @BLEND_FACTOR_DST_ALPHA_ZERO, align 4
  %85 = load i32, i32* @BLEND_FACTOR_SRC_ALPHA_K2, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %12, align 4
  %91 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @DC_WIN_BLEND_NOMATCH_SELECT, align 4
  %94 = call i32 @tegra_plane_writel(%struct.tegra_plane* %91, i32 %92, i32 %93)
  %95 = call i32 @K2(i32 255)
  %96 = call i32 @K1(i32 255)
  %97 = or i32 %95, %96
  %98 = load i32, i32* %7, align 4
  %99 = sub i32 255, %98
  %100 = call i32 @WINDOW_LAYER_DEPTH(i32 %99)
  %101 = or i32 %97, %100
  store i32 %101, i32* %12, align 4
  %102 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @DC_WIN_BLEND_LAYER_CONTROL, align 4
  %105 = call i32 @tegra_plane_writel(%struct.tegra_plane* %102, i32 %103, i32 %104)
  %106 = load i32, i32* @HORIZONTAL_TAPS_5, align 4
  %107 = load i32, i32* @VERTICAL_TAPS_5, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %12, align 4
  %109 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @DC_WIN_WINDOWGROUP_SET_CONTROL_INPUT_SCALER, align 4
  %112 = call i32 @tegra_plane_writel(%struct.tegra_plane* %109, i32 %110, i32 %111)
  %113 = load i32, i32* @INPUT_SCALER_VBYPASS, align 4
  %114 = load i32, i32* @INPUT_SCALER_HBYPASS, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %12, align 4
  %116 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @DC_WIN_WINDOWGROUP_SET_INPUT_SCALER_USAGE, align 4
  %119 = call i32 @tegra_plane_writel(%struct.tegra_plane* %116, i32 %117, i32 %118)
  %120 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %121 = load i32, i32* @DC_WINBUF_CDE_CONTROL, align 4
  %122 = call i32 @tegra_plane_writel(%struct.tegra_plane* %120, i32 0, i32 %121)
  %123 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %124 = call %struct.tegra_bo* @tegra_fb_get_plane(%struct.drm_framebuffer* %123, i32 0)
  store %struct.tegra_bo* %124, %struct.tegra_bo** %10, align 8
  %125 = load %struct.tegra_bo*, %struct.tegra_bo** %10, align 8
  %126 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %11, align 4
  %128 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %129 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %5, align 8
  %130 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @DC_WIN_COLOR_DEPTH, align 4
  %133 = call i32 @tegra_plane_writel(%struct.tegra_plane* %128, i32 %131, i32 %132)
  %134 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %135 = load i32, i32* @DC_WIN_PRECOMP_WGRP_PARAMS, align 4
  %136 = call i32 @tegra_plane_writel(%struct.tegra_plane* %134, i32 0, i32 %135)
  %137 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %138 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @V_POSITION(i32 %141)
  %143 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %144 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @H_POSITION(i32 %147)
  %149 = or i32 %142, %148
  store i32 %149, i32* %12, align 4
  %150 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @DC_WIN_POSITION, align 4
  %153 = call i32 @tegra_plane_writel(%struct.tegra_plane* %150, i32 %151, i32 %152)
  %154 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %155 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @V_SIZE(i32 %158)
  %160 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %161 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @H_SIZE(i32 %164)
  %166 = or i32 %159, %165
  store i32 %166, i32* %12, align 4
  %167 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @DC_WIN_SIZE, align 4
  %170 = call i32 @tegra_plane_writel(%struct.tegra_plane* %167, i32 %168, i32 %169)
  %171 = load i32, i32* @WIN_ENABLE, align 4
  %172 = load i32, i32* @COLOR_EXPAND, align 4
  %173 = or i32 %171, %172
  store i32 %173, i32* %12, align 4
  %174 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @DC_WIN_WIN_OPTIONS, align 4
  %177 = call i32 @tegra_plane_writel(%struct.tegra_plane* %174, i32 %175, i32 %176)
  %178 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %179 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %178, i32 0, i32 0
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @V_SIZE(i32 %182)
  %184 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %185 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %184, i32 0, i32 0
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @H_SIZE(i32 %188)
  %190 = or i32 %183, %189
  store i32 %190, i32* %12, align 4
  %191 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* @DC_WIN_CROPPED_SIZE, align 4
  %194 = call i32 @tegra_plane_writel(%struct.tegra_plane* %191, i32 %192, i32 %193)
  %195 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @upper_32_bits(i32 %196)
  %198 = load i32, i32* @DC_WINBUF_START_ADDR_HI, align 4
  %199 = call i32 @tegra_plane_writel(%struct.tegra_plane* %195, i32 %197, i32 %198)
  %200 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @lower_32_bits(i32 %201)
  %203 = load i32, i32* @DC_WINBUF_START_ADDR, align 4
  %204 = call i32 @tegra_plane_writel(%struct.tegra_plane* %200, i32 %202, i32 %203)
  %205 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %206 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @PITCH(i32 %209)
  store i32 %210, i32* %12, align 4
  %211 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* @DC_WIN_PLANAR_STORAGE, align 4
  %214 = call i32 @tegra_plane_writel(%struct.tegra_plane* %211, i32 %212, i32 %213)
  %215 = load i32, i32* @CLAMP_BEFORE_BLEND, align 4
  %216 = load i32, i32* @DEGAMMA_SRGB, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @INPUT_RANGE_FULL, align 4
  %219 = or i32 %217, %218
  store i32 %219, i32* %12, align 4
  %220 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @DC_WIN_SET_PARAMS, align 4
  %223 = call i32 @tegra_plane_writel(%struct.tegra_plane* %220, i32 %221, i32 %222)
  %224 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %225 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %224, i32 0, i32 0
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = ashr i32 %228, 16
  %230 = call i32 @OFFSET_X(i32 %229)
  %231 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %232 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %231, i32 0, i32 0
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = ashr i32 %235, 16
  %237 = call i32 @OFFSET_Y(i32 %236)
  %238 = or i32 %230, %237
  store i32 %238, i32* %12, align 4
  %239 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* @DC_WINBUF_CROPPED_POINT, align 4
  %242 = call i32 @tegra_plane_writel(%struct.tegra_plane* %239, i32 %240, i32 %241)
  %243 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %244 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %243, i32 0, i32 1
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %274

249:                                              ; preds = %61
  %250 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %5, align 8
  %251 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %13, align 8
  %254 = load %struct.tegra_plane_state*, %struct.tegra_plane_state** %5, align 8
  %255 = getelementptr inbounds %struct.tegra_plane_state, %struct.tegra_plane_state* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  switch i32 %257, label %269 [
    i32 129, label %258
    i32 128, label %262
    i32 130, label %264
  ]

258:                                              ; preds = %249
  %259 = call i32 @DC_WINBUF_SURFACE_KIND_BLOCK_HEIGHT(i64 0)
  %260 = load i32, i32* @DC_WINBUF_SURFACE_KIND_PITCH, align 4
  %261 = or i32 %259, %260
  store i32 %261, i32* %12, align 4
  br label %269

262:                                              ; preds = %249
  %263 = load i32, i32* @DC_WINBUF_SURFACE_KIND_TILED, align 4
  store i32 %263, i32* %12, align 4
  br label %269

264:                                              ; preds = %249
  %265 = load i64, i64* %13, align 8
  %266 = call i32 @DC_WINBUF_SURFACE_KIND_BLOCK_HEIGHT(i64 %265)
  %267 = load i32, i32* @DC_WINBUF_SURFACE_KIND_BLOCK, align 4
  %268 = or i32 %266, %267
  store i32 %268, i32* %12, align 4
  br label %269

269:                                              ; preds = %249, %264, %262, %258
  %270 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* @DC_WINBUF_SURFACE_KIND, align 4
  %273 = call i32 @tegra_plane_writel(%struct.tegra_plane* %270, i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %269, %61
  %275 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %276 = load i32, i32* @DC_WIN_WINDOW_SET_CONTROL, align 4
  %277 = call i32 @tegra_plane_readl(%struct.tegra_plane* %275, i32 %276)
  store i32 %277, i32* %12, align 4
  %278 = load i32, i32* @CONTROL_CSC_ENABLE, align 4
  %279 = xor i32 %278, -1
  %280 = load i32, i32* %12, align 4
  %281 = and i32 %280, %279
  store i32 %281, i32* %12, align 4
  %282 = load %struct.tegra_plane*, %struct.tegra_plane** %9, align 8
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* @DC_WIN_WINDOW_SET_CONTROL, align 4
  %285 = call i32 @tegra_plane_writel(%struct.tegra_plane* %282, i32 %283, i32 %284)
  %286 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %287 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @pm_runtime_put(i32 %288)
  br label %290

290:                                              ; preds = %274, %57, %49
  ret void
}

declare dso_local %struct.tegra_plane_state* @to_tegra_plane_state(%struct.TYPE_6__*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(i32) #1

declare dso_local %struct.tegra_plane* @to_tegra_plane(%struct.drm_plane*) #1

declare dso_local i32 @tegra_shared_plane_atomic_disable(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @tegra_dc_assign_shared_plane(%struct.tegra_dc*, %struct.tegra_plane*) #1

declare dso_local i32 @tegra_plane_writel(%struct.tegra_plane*, i32, i32) #1

declare dso_local i32 @K2(i32) #1

declare dso_local i32 @K1(i32) #1

declare dso_local i32 @WINDOW_LAYER_DEPTH(i32) #1

declare dso_local %struct.tegra_bo* @tegra_fb_get_plane(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @V_POSITION(i32) #1

declare dso_local i32 @H_POSITION(i32) #1

declare dso_local i32 @V_SIZE(i32) #1

declare dso_local i32 @H_SIZE(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @PITCH(i32) #1

declare dso_local i32 @OFFSET_X(i32) #1

declare dso_local i32 @OFFSET_Y(i32) #1

declare dso_local i32 @DC_WINBUF_SURFACE_KIND_BLOCK_HEIGHT(i64) #1

declare dso_local i32 @tegra_plane_readl(%struct.tegra_plane*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
