; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_mode_set_nofb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_mode_set_nofb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atmel_hlcdc_crtc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.atmel_hlcdc_crtc_state = type { i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32 }

@ATMEL_HLCDC_CLKDIV_MASK = common dso_local global i32 0, align 4
@ATMEL_HLCDC_CLKPOL = common dso_local global i32 0, align 4
@ATMEL_HLCDC_CLKSEL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@ATMEL_HLCDC_VSPOL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@ATMEL_HLCDC_HSPOL = common dso_local global i32 0, align 4
@ATMEL_HLCDC_VSPDLYS = common dso_local global i32 0, align 4
@ATMEL_HLCDC_VSPDLYE = common dso_local global i32 0, align 4
@ATMEL_HLCDC_DISPPOL = common dso_local global i32 0, align 4
@ATMEL_HLCDC_DISPDLY = common dso_local global i32 0, align 4
@ATMEL_HLCDC_VSPSU = common dso_local global i32 0, align 4
@ATMEL_HLCDC_VSPHO = common dso_local global i32 0, align 4
@ATMEL_HLCDC_GUARDTIME_MASK = common dso_local global i32 0, align 4
@ATMEL_HLCDC_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @atmel_hlcdc_crtc_mode_set_nofb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_crtc_mode_set_nofb(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.atmel_hlcdc_crtc*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.atmel_hlcdc_crtc_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.videomode, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = call %struct.atmel_hlcdc_crtc* @drm_crtc_to_atmel_hlcdc_crtc(%struct.drm_crtc* %14)
  store %struct.atmel_hlcdc_crtc* %15, %struct.atmel_hlcdc_crtc** %3, align 8
  %16 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.regmap*, %struct.regmap** %21, align 8
  store %struct.regmap* %22, %struct.regmap** %4, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %24 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store %struct.drm_display_mode* %26, %struct.drm_display_mode** %5, align 8
  %27 = load i32, i32* @ATMEL_HLCDC_CLKDIV_MASK, align 4
  %28 = load i32, i32* @ATMEL_HLCDC_CLKPOL, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  %53 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  %61 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 4
  store i32 %68, i32* %69, align 4
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %72, %75
  %77 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 5
  store i32 %76, i32* %77, align 4
  %78 = load %struct.regmap*, %struct.regmap** %4, align 8
  %79 = call i32 @ATMEL_HLCDC_CFG(i32 1)
  %80 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = shl i32 %85, 16
  %87 = or i32 %82, %86
  %88 = call i32 @regmap_write(%struct.regmap* %78, i32 %79, i32 %87)
  %89 = load %struct.regmap*, %struct.regmap** %4, align 8
  %90 = call i32 @ATMEL_HLCDC_CFG(i32 2)
  %91 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 16
  %97 = or i32 %93, %96
  %98 = call i32 @regmap_write(%struct.regmap* %89, i32 %90, i32 %97)
  %99 = load %struct.regmap*, %struct.regmap** %4, align 8
  %100 = call i32 @ATMEL_HLCDC_CFG(i32 3)
  %101 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 1
  %104 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 1
  %107 = shl i32 %106, 16
  %108 = or i32 %103, %107
  %109 = call i32 @regmap_write(%struct.regmap* %99, i32 %100, i32 %108)
  %110 = load %struct.regmap*, %struct.regmap** %4, align 8
  %111 = call i32 @ATMEL_HLCDC_CFG(i32 4)
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %117 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  %120 = shl i32 %119, 16
  %121 = or i32 %115, %120
  %122 = call i32 @regmap_write(%struct.regmap* %110, i32 %111, i32 %121)
  %123 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %3, align 8
  %124 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %1
  %132 = load i32, i32* @ATMEL_HLCDC_CLKSEL, align 4
  %133 = load i32, i32* %11, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* @ATMEL_HLCDC_CLKSEL, align 4
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %131, %1
  %139 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %3, align 8
  %140 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @clk_get_rate(i32 %145)
  %147 = mul nsw i32 2, %146
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %9, align 8
  %149 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %150 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %151, 1000
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %7, align 8
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* %7, align 8
  %156 = call i32 @DIV_ROUND_UP(i64 %154, i64 %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %159, label %160

159:                                              ; preds = %138
  store i32 2, i32* %12, align 4
  br label %212

160:                                              ; preds = %138
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @ATMEL_HLCDC_CLKDIV(i32 %161)
  %163 = load i32, i32* @ATMEL_HLCDC_CLKDIV_MASK, align 4
  %164 = xor i32 %163, -1
  %165 = and i32 %162, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %160
  %168 = load i32, i32* @ATMEL_HLCDC_CLKSEL, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %11, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %11, align 4
  %172 = load i64, i64* %9, align 8
  %173 = udiv i64 %172, 2
  store i64 %173, i64* %9, align 8
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %7, align 8
  %176 = call i32 @DIV_ROUND_UP(i64 %174, i64 %175)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @ATMEL_HLCDC_CLKDIV(i32 %177)
  %179 = load i32, i32* @ATMEL_HLCDC_CLKDIV_MASK, align 4
  %180 = xor i32 %179, -1
  %181 = and i32 %178, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %167
  %184 = load i32, i32* @ATMEL_HLCDC_CLKDIV_MASK, align 4
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %183, %167
  br label %211

186:                                              ; preds = %160
  %187 = load i64, i64* %9, align 8
  %188 = load i64, i64* %7, align 8
  %189 = udiv i64 %187, %188
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp sge i32 %191, 2
  br i1 %192, label %193, label %210

193:                                              ; preds = %186
  %194 = load i64, i64* %9, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = udiv i64 %194, %196
  %198 = load i64, i64* %7, align 8
  %199 = sub i64 %197, %198
  %200 = load i64, i64* %7, align 8
  %201 = load i64, i64* %9, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = udiv i64 %201, %203
  %205 = sub i64 %200, %204
  %206 = mul i64 10, %205
  %207 = icmp ult i64 %199, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %193
  %209 = load i32, i32* %13, align 4
  store i32 %209, i32* %12, align 4
  br label %210

210:                                              ; preds = %208, %193, %186
  br label %211

211:                                              ; preds = %210, %185
  br label %212

212:                                              ; preds = %211, %159
  %213 = load i32, i32* %12, align 4
  %214 = call i32 @ATMEL_HLCDC_CLKDIV(i32 %213)
  %215 = load i32, i32* %11, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %11, align 4
  %217 = load %struct.regmap*, %struct.regmap** %4, align 8
  %218 = call i32 @ATMEL_HLCDC_CFG(i32 0)
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @regmap_update_bits(%struct.regmap* %217, i32 %218, i32 %219, i32 %220)
  %222 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %223 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %222, i32 0, i32 0
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  %225 = call %struct.atmel_hlcdc_crtc_state* @drm_crtc_state_to_atmel_hlcdc_crtc_state(%struct.TYPE_8__* %224)
  store %struct.atmel_hlcdc_crtc_state* %225, %struct.atmel_hlcdc_crtc_state** %6, align 8
  %226 = load %struct.atmel_hlcdc_crtc_state*, %struct.atmel_hlcdc_crtc_state** %6, align 8
  %227 = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, %struct.atmel_hlcdc_crtc_state* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %228, 8
  store i32 %229, i32* %11, align 4
  %230 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %231 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %212
  %237 = load i32, i32* @ATMEL_HLCDC_VSPOL, align 4
  %238 = load i32, i32* %11, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %11, align 4
  br label %240

240:                                              ; preds = %236, %212
  %241 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %242 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %241, i32 0, i32 9
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %240
  %248 = load i32, i32* @ATMEL_HLCDC_HSPOL, align 4
  %249 = load i32, i32* %11, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %11, align 4
  br label %251

251:                                              ; preds = %247, %240
  %252 = load %struct.regmap*, %struct.regmap** %4, align 8
  %253 = call i32 @ATMEL_HLCDC_CFG(i32 5)
  %254 = load i32, i32* @ATMEL_HLCDC_HSPOL, align 4
  %255 = load i32, i32* @ATMEL_HLCDC_VSPOL, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @ATMEL_HLCDC_VSPDLYS, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @ATMEL_HLCDC_VSPDLYE, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @ATMEL_HLCDC_DISPPOL, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @ATMEL_HLCDC_DISPDLY, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @ATMEL_HLCDC_VSPSU, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @ATMEL_HLCDC_VSPHO, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @ATMEL_HLCDC_GUARDTIME_MASK, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @ATMEL_HLCDC_MODE_MASK, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* %11, align 4
  %274 = call i32 @regmap_update_bits(%struct.regmap* %252, i32 %253, i32 %272, i32 %273)
  ret void
}

declare dso_local %struct.atmel_hlcdc_crtc* @drm_crtc_to_atmel_hlcdc_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @ATMEL_HLCDC_CFG(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @ATMEL_HLCDC_CLKDIV(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local %struct.atmel_hlcdc_crtc_state* @drm_crtc_state_to_atmel_hlcdc_crtc_state(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
