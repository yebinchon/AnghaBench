; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_crtc_state = type { i32 }
%struct.zx_crtc = type { i32, i64, %struct.zx_crtc_bits*, %struct.zx_crtc_regs*, %struct.zx_vou_hw* }
%struct.zx_crtc_bits = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.zx_crtc_regs = type { i64, i64, i64, i64, i64, i64 }
%struct.zx_vou_hw = type { i32, i64 }
%struct.videomode = type { i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@SEC_V_ACTIVE = common dso_local global i64 0, align 8
@DISPLAY_FLAGS_VSYNC_LOW = common dso_local global i32 0, align 4
@POL_VSYNC_SHIFT = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_HSYNC_LOW = common dso_local global i32 0, align 4
@POL_HSYNC_SHIFT = common dso_local global i32 0, align 4
@TIMING_CTRL = common dso_local global i64 0, align 8
@H_SHIFT_VAL = common dso_local global i32 0, align 4
@V_SHIFT_VAL = common dso_local global i32 0, align 4
@H_PI_SHIFT_VAL = common dso_local global i32 0, align 4
@SCAN_CTRL = common dso_local global i64 0, align 8
@TIMING_TC_ENABLE = common dso_local global i64 0, align 8
@CHN_CTRL1 = common dso_local global i64 0, align 8
@CHN_SCREEN_W_MASK = common dso_local global i32 0, align 4
@CHN_SCREEN_W_SHIFT = common dso_local global i32 0, align 4
@CHN_SCREEN_H_MASK = common dso_local global i32 0, align 4
@CHN_SCREEN_H_SHIFT = common dso_local global i32 0, align 4
@CHN_INTERLACE_BUF_CTRL = common dso_local global i64 0, align 8
@CHN_INTERLACE_EN = common dso_local global i32 0, align 4
@CHN_CTRL0 = common dso_local global i64 0, align 8
@CHN_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to set pixclk rate: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to enable pixclk: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @zx_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zx_crtc*, align 8
  %8 = alloca %struct.zx_vou_hw*, align 8
  %9 = alloca %struct.zx_crtc_regs*, align 8
  %10 = alloca %struct.zx_crtc_bits*, align 8
  %11 = alloca %struct.videomode, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.drm_display_mode* %21, %struct.drm_display_mode** %5, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %28 = call %struct.zx_crtc* @to_zx_crtc(%struct.drm_crtc* %27)
  store %struct.zx_crtc* %28, %struct.zx_crtc** %7, align 8
  %29 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %30 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %29, i32 0, i32 4
  %31 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %30, align 8
  store %struct.zx_vou_hw* %31, %struct.zx_vou_hw** %8, align 8
  %32 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %33 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %32, i32 0, i32 3
  %34 = load %struct.zx_crtc_regs*, %struct.zx_crtc_regs** %33, align 8
  store %struct.zx_crtc_regs* %34, %struct.zx_crtc_regs** %9, align 8
  %35 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %36 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %35, i32 0, i32 2
  %37 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %36, align 8
  store %struct.zx_crtc_bits* %37, %struct.zx_crtc_bits** %10, align 8
  store i32 0, i32* %13, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = call i32 @drm_display_mode_to_videomode(%struct.drm_display_mode* %38, %struct.videomode* %11)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %44, 2
  br label %49

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i32 [ %45, %42 ], [ %48, %46 ]
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @V_ACTIVE(i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @H_ACTIVE(i32 %55)
  %57 = load i32, i32* %14, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %14, align 4
  %59 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %60 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.zx_crtc_regs*, %struct.zx_crtc_regs** %9, align 8
  %63 = getelementptr inbounds %struct.zx_crtc_regs, %struct.zx_crtc_regs* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @zx_writel(i64 %65, i32 %66)
  %68 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, 1
  %71 = call i32 @SYNC_WIDE(i64 %70)
  store i32 %71, i32* %14, align 4
  %72 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 1
  %75 = call i32 @BACK_PORCH(i64 %74)
  %76 = load i32, i32* %14, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %14, align 4
  %78 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %79, 1
  %81 = call i32 @FRONT_PORCH(i64 %80)
  %82 = load i32, i32* %14, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %85 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.zx_crtc_regs*, %struct.zx_crtc_regs** %9, align 8
  %88 = getelementptr inbounds %struct.zx_crtc_regs, %struct.zx_crtc_regs* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @zx_writel(i64 %90, i32 %91)
  %93 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 1
  %96 = call i32 @SYNC_WIDE(i64 %95)
  store i32 %96, i32* %14, align 4
  %97 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 1
  %100 = call i32 @BACK_PORCH(i64 %99)
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  %103 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 1
  %106 = call i32 @FRONT_PORCH(i64 %105)
  %107 = load i32, i32* %14, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %14, align 4
  %109 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %110 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.zx_crtc_regs*, %struct.zx_crtc_regs** %9, align 8
  %113 = getelementptr inbounds %struct.zx_crtc_regs, %struct.zx_crtc_regs* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @zx_writel(i64 %115, i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %178

120:                                              ; preds = %49
  %121 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %10, align 8
  %122 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %16, align 4
  %124 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %10, align 8
  %125 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %17, align 4
  %127 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %128 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SEC_V_ACTIVE, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @zx_readl(i64 %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %17, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %14, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %14, align 4
  %137 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sdiv i32 %138, 2
  %140 = sub nsw i32 %139, 1
  %141 = load i32, i32* %16, align 4
  %142 = shl i32 %140, %141
  %143 = load i32, i32* %17, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* %14, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %14, align 4
  %147 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %148 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SEC_V_ACTIVE, align 8
  %151 = add nsw i64 %149, %150
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @zx_writel(i64 %151, i32 %152)
  %154 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, 1
  %157 = call i32 @SYNC_WIDE(i64 %156)
  store i32 %157, i32* %14, align 4
  %158 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @BACK_PORCH(i64 %159)
  %161 = load i32, i32* %14, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %14, align 4
  %163 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %164, 1
  %166 = call i32 @FRONT_PORCH(i64 %165)
  %167 = load i32, i32* %14, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %14, align 4
  %169 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %170 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.zx_crtc_regs*, %struct.zx_crtc_regs** %9, align 8
  %173 = getelementptr inbounds %struct.zx_crtc_regs, %struct.zx_crtc_regs* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %171, %174
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @zx_writel(i64 %175, i32 %176)
  br label %178

178:                                              ; preds = %120, %49
  %179 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @DISPLAY_FLAGS_VSYNC_LOW, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load i32, i32* @POL_VSYNC_SHIFT, align 4
  %186 = shl i32 1, %185
  %187 = load i32, i32* %13, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %13, align 4
  br label %189

189:                                              ; preds = %184, %178
  %190 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @DISPLAY_FLAGS_HSYNC_LOW, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load i32, i32* @POL_HSYNC_SHIFT, align 4
  %197 = shl i32 1, %196
  %198 = load i32, i32* %13, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %195, %189
  %201 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %202 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @TIMING_CTRL, align 8
  %205 = add nsw i64 %203, %204
  %206 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %10, align 8
  %207 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %10, align 8
  %211 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %209, %212
  %214 = call i32 @zx_writel_mask(i64 %205, i32 %208, i32 %213)
  %215 = load i32, i32* @H_SHIFT_VAL, align 4
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %200
  %219 = load i32, i32* @V_SHIFT_VAL, align 4
  %220 = shl i32 %219, 16
  %221 = load i32, i32* %14, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %14, align 4
  br label %223

223:                                              ; preds = %218, %200
  %224 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %225 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.zx_crtc_regs*, %struct.zx_crtc_regs** %9, align 8
  %228 = getelementptr inbounds %struct.zx_crtc_regs, %struct.zx_crtc_regs* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %226, %229
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @zx_writel(i64 %230, i32 %231)
  %233 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %234 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.zx_crtc_regs*, %struct.zx_crtc_regs** %9, align 8
  %237 = getelementptr inbounds %struct.zx_crtc_regs, %struct.zx_crtc_regs* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %235, %238
  %240 = load i32, i32* @H_PI_SHIFT_VAL, align 4
  %241 = call i32 @zx_writel(i64 %239, i32 %240)
  %242 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %10, align 8
  %243 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %10, align 8
  %246 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %244, %247
  store i32 %248, i32* %12, align 4
  %249 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %250 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @SCAN_CTRL, align 8
  %253 = add nsw i64 %251, %252
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* %6, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %223
  %258 = load i32, i32* %12, align 4
  br label %260

259:                                              ; preds = %223
  br label %260

260:                                              ; preds = %259, %257
  %261 = phi i32 [ %258, %257 ], [ 0, %259 ]
  %262 = call i32 @zx_writel_mask(i64 %253, i32 %254, i32 %261)
  %263 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %264 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @TIMING_TC_ENABLE, align 8
  %267 = add nsw i64 %265, %266
  %268 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %10, align 8
  %269 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %10, align 8
  %272 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @zx_writel_mask(i64 %267, i32 %270, i32 %273)
  %275 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %276 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @CHN_CTRL1, align 8
  %279 = add nsw i64 %277, %278
  %280 = load i32, i32* @CHN_SCREEN_W_MASK, align 4
  %281 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @CHN_SCREEN_W_SHIFT, align 4
  %284 = shl i32 %282, %283
  %285 = call i32 @zx_writel_mask(i64 %279, i32 %280, i32 %284)
  %286 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %287 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @CHN_CTRL1, align 8
  %290 = add nsw i64 %288, %289
  %291 = load i32, i32* @CHN_SCREEN_H_MASK, align 4
  %292 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @CHN_SCREEN_H_SHIFT, align 4
  %295 = shl i32 %293, %294
  %296 = call i32 @zx_writel_mask(i64 %290, i32 %291, i32 %295)
  %297 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %298 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @CHN_INTERLACE_BUF_CTRL, align 8
  %301 = add nsw i64 %299, %300
  %302 = load i32, i32* @CHN_INTERLACE_EN, align 4
  %303 = load i32, i32* %6, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %260
  %306 = load i32, i32* @CHN_INTERLACE_EN, align 4
  br label %308

307:                                              ; preds = %260
  br label %308

308:                                              ; preds = %307, %305
  %309 = phi i32 [ %306, %305 ], [ 0, %307 ]
  %310 = call i32 @zx_writel_mask(i64 %301, i32 %302, i32 %309)
  %311 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %312 = call i32 @vou_chn_set_update(%struct.zx_crtc* %311)
  %313 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %314 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @CHN_CTRL0, align 8
  %317 = add nsw i64 %315, %316
  %318 = load i32, i32* @CHN_ENABLE, align 4
  %319 = load i32, i32* @CHN_ENABLE, align 4
  %320 = call i32 @zx_writel_mask(i64 %317, i32 %318, i32 %319)
  %321 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %322 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %321)
  %323 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %324 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %327 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = mul nsw i32 %328, 1000
  %330 = call i32 @clk_set_rate(i32 %325, i32 %329)
  store i32 %330, i32* %15, align 4
  %331 = load i32, i32* %15, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %308
  %334 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %335 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %15, align 4
  %338 = call i32 @DRM_DEV_ERROR(i32 %336, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %337)
  br label %352

339:                                              ; preds = %308
  %340 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %341 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @clk_prepare_enable(i32 %342)
  store i32 %343, i32* %15, align 4
  %344 = load i32, i32* %15, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %339
  %347 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %348 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* %15, align 4
  %351 = call i32 @DRM_DEV_ERROR(i32 %349, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %350)
  br label %352

352:                                              ; preds = %333, %346, %339
  ret void
}

declare dso_local %struct.zx_crtc* @to_zx_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @drm_display_mode_to_videomode(%struct.drm_display_mode*, %struct.videomode*) #1

declare dso_local i32 @V_ACTIVE(i32) #1

declare dso_local i32 @H_ACTIVE(i32) #1

declare dso_local i32 @zx_writel(i64, i32) #1

declare dso_local i32 @SYNC_WIDE(i64) #1

declare dso_local i32 @BACK_PORCH(i64) #1

declare dso_local i32 @FRONT_PORCH(i64) #1

declare dso_local i32 @zx_readl(i64) #1

declare dso_local i32 @zx_writel_mask(i64, i32, i32) #1

declare dso_local i32 @vou_chn_set_update(%struct.zx_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
