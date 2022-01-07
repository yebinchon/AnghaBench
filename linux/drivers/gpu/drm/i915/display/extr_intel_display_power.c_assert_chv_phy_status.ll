; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_assert_chv_phy_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_assert_chv_phy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32* }
%struct.i915_power_well = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.drm_i915_private*, %struct.i915_power_well*)* }

@VLV_DISP_PW_DPIO_CMN_BC = common dso_local global i32 0, align 4
@CHV_DISP_PW_DPIO_CMN_D = common dso_local global i32 0, align 4
@DPIO_PHY0 = common dso_local global i64 0, align 8
@DPIO_CH0 = common dso_local global i32 0, align 4
@DPIO_CH1 = common dso_local global i32 0, align 4
@DPIO_PHY1 = common dso_local global i64 0, align 8
@PIPE_B = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@DISPLAY_PHY_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @assert_chv_phy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_chv_phy_status(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.i915_power_well*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = load i32, i32* @VLV_DISP_PW_DPIO_CMN_BC, align 4
  %10 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %8, i32 %9)
  store %struct.i915_power_well* %10, %struct.i915_power_well** %3, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = load i32, i32* @CHV_DISP_PW_DPIO_CMN_D, align 4
  %13 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %11, i32 %12)
  store %struct.i915_power_well* %13, %struct.i915_power_well** %4, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @DPIO_PHY0, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %51, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* @DPIO_PHY0, align 8
  %26 = load i32, i32* @DPIO_CH0, align 4
  %27 = call i32 @PHY_STATUS_CMN_LDO(i64 %25, i32 %26)
  %28 = load i64, i64* @DPIO_PHY0, align 8
  %29 = load i32, i32* @DPIO_CH0, align 4
  %30 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %28, i32 %29, i32 0)
  %31 = or i32 %27, %30
  %32 = load i64, i64* @DPIO_PHY0, align 8
  %33 = load i32, i32* @DPIO_CH0, align 4
  %34 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %32, i32 %33, i32 1)
  %35 = or i32 %31, %34
  %36 = load i64, i64* @DPIO_PHY0, align 8
  %37 = load i32, i32* @DPIO_CH1, align 4
  %38 = call i32 @PHY_STATUS_CMN_LDO(i64 %36, i32 %37)
  %39 = or i32 %35, %38
  %40 = load i64, i64* @DPIO_PHY0, align 8
  %41 = load i32, i32* @DPIO_CH1, align 4
  %42 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %40, i32 %41, i32 0)
  %43 = or i32 %39, %42
  %44 = load i64, i64* @DPIO_PHY0, align 8
  %45 = load i32, i32* @DPIO_CH1, align 4
  %46 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %44, i32 %45, i32 1)
  %47 = or i32 %43, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %24, %1
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @DPIO_PHY1, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %51
  %60 = load i64, i64* @DPIO_PHY1, align 8
  %61 = load i32, i32* @DPIO_CH0, align 4
  %62 = call i32 @PHY_STATUS_CMN_LDO(i64 %60, i32 %61)
  %63 = load i64, i64* @DPIO_PHY1, align 8
  %64 = load i32, i32* @DPIO_CH0, align 4
  %65 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %63, i32 %64, i32 0)
  %66 = or i32 %62, %65
  %67 = load i64, i64* @DPIO_PHY1, align 8
  %68 = load i32, i32* @DPIO_CH0, align 4
  %69 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %67, i32 %68, i32 1)
  %70 = or i32 %66, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %59, %51
  %75 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %76 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64 (%struct.drm_i915_private*, %struct.i915_power_well*)*, i64 (%struct.drm_i915_private*, %struct.i915_power_well*)** %80, align 8
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %83 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %84 = call i64 %81(%struct.drm_i915_private* %82, %struct.i915_power_well* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %206

86:                                               ; preds = %74
  %87 = load i64, i64* @DPIO_PHY0, align 8
  %88 = call i32 @PHY_POWERGOOD(i64 %87)
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i64, i64* @DPIO_PHY0, align 8
  %93 = load i32, i32* @DPIO_CH0, align 4
  %94 = call i32 @PHY_CH_POWER_DOWN_OVRD_EN(i64 %92, i32 %93)
  %95 = and i32 %91, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = load i64, i64* @DPIO_PHY0, align 8
  %99 = load i32, i32* @DPIO_CH0, align 4
  %100 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 15, i64 %98, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %97, %86
  %104 = load i32, i32* %5, align 4
  %105 = load i64, i64* @DPIO_PHY0, align 8
  %106 = load i32, i32* @DPIO_CH1, align 4
  %107 = call i32 @PHY_CH_POWER_DOWN_OVRD_EN(i64 %105, i32 %106)
  %108 = and i32 %104, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i64, i64* @DPIO_PHY0, align 8
  %112 = load i32, i32* @DPIO_CH1, align 4
  %113 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 15, i64 %111, i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %110, %103
  %117 = load i32, i32* %5, align 4
  %118 = load i64, i64* @DPIO_PHY0, align 8
  %119 = load i32, i32* @DPIO_CH0, align 4
  %120 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 15, i64 %118, i32 %119)
  %121 = load i64, i64* @DPIO_PHY0, align 8
  %122 = load i32, i32* @DPIO_CH1, align 4
  %123 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 15, i64 %121, i32 %122)
  %124 = or i32 %120, %123
  %125 = call i64 @BITS_SET(i32 %117, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %116
  %128 = load i64, i64* @DPIO_PHY0, align 8
  %129 = load i32, i32* @DPIO_CH0, align 4
  %130 = call i32 @PHY_STATUS_CMN_LDO(i64 %128, i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %127, %116
  %134 = load i32, i32* %5, align 4
  %135 = load i64, i64* @DPIO_PHY0, align 8
  %136 = load i32, i32* @DPIO_CH1, align 4
  %137 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 15, i64 %135, i32 %136)
  %138 = call i64 @BITS_SET(i32 %134, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %133
  %141 = load i32, i32* @PIPE_B, align 4
  %142 = call i32 @DPLL(i32 %141)
  %143 = call i32 @I915_READ(i32 %142)
  %144 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load i64, i64* @DPIO_PHY0, align 8
  %149 = load i32, i32* @DPIO_CH1, align 4
  %150 = call i32 @PHY_STATUS_CMN_LDO(i64 %148, i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %147, %140, %133
  %154 = load i32, i32* %5, align 4
  %155 = load i64, i64* @DPIO_PHY0, align 8
  %156 = load i32, i32* @DPIO_CH0, align 4
  %157 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 3, i64 %155, i32 %156)
  %158 = call i64 @BITS_SET(i32 %154, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load i64, i64* @DPIO_PHY0, align 8
  %162 = load i32, i32* @DPIO_CH0, align 4
  %163 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %161, i32 %162, i32 0)
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %160, %153
  %167 = load i32, i32* %5, align 4
  %168 = load i64, i64* @DPIO_PHY0, align 8
  %169 = load i32, i32* @DPIO_CH0, align 4
  %170 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 12, i64 %168, i32 %169)
  %171 = call i64 @BITS_SET(i32 %167, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load i64, i64* @DPIO_PHY0, align 8
  %175 = load i32, i32* @DPIO_CH0, align 4
  %176 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %174, i32 %175, i32 1)
  %177 = load i32, i32* %6, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %173, %166
  %180 = load i32, i32* %5, align 4
  %181 = load i64, i64* @DPIO_PHY0, align 8
  %182 = load i32, i32* @DPIO_CH1, align 4
  %183 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 3, i64 %181, i32 %182)
  %184 = call i64 @BITS_SET(i32 %180, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %179
  %187 = load i64, i64* @DPIO_PHY0, align 8
  %188 = load i32, i32* @DPIO_CH1, align 4
  %189 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %187, i32 %188, i32 0)
  %190 = load i32, i32* %6, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %186, %179
  %193 = load i32, i32* %5, align 4
  %194 = load i64, i64* @DPIO_PHY0, align 8
  %195 = load i32, i32* @DPIO_CH1, align 4
  %196 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 12, i64 %194, i32 %195)
  %197 = call i64 @BITS_SET(i32 %193, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = load i64, i64* @DPIO_PHY0, align 8
  %201 = load i32, i32* @DPIO_CH1, align 4
  %202 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %200, i32 %201, i32 1)
  %203 = load i32, i32* %6, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %199, %192
  br label %206

206:                                              ; preds = %205, %74
  %207 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %208 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i64 (%struct.drm_i915_private*, %struct.i915_power_well*)*, i64 (%struct.drm_i915_private*, %struct.i915_power_well*)** %212, align 8
  %214 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %215 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %216 = call i64 %213(%struct.drm_i915_private* %214, %struct.i915_power_well* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %275

218:                                              ; preds = %206
  %219 = load i64, i64* @DPIO_PHY1, align 8
  %220 = call i32 @PHY_POWERGOOD(i64 %219)
  %221 = load i32, i32* %6, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %5, align 4
  %224 = load i64, i64* @DPIO_PHY1, align 8
  %225 = load i32, i32* @DPIO_CH0, align 4
  %226 = call i32 @PHY_CH_POWER_DOWN_OVRD_EN(i64 %224, i32 %225)
  %227 = and i32 %223, %226
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %218
  %230 = load i64, i64* @DPIO_PHY1, align 8
  %231 = load i32, i32* @DPIO_CH0, align 4
  %232 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 15, i64 %230, i32 %231)
  %233 = load i32, i32* %5, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %229, %218
  %236 = load i32, i32* %5, align 4
  %237 = load i64, i64* @DPIO_PHY1, align 8
  %238 = load i32, i32* @DPIO_CH0, align 4
  %239 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 15, i64 %237, i32 %238)
  %240 = call i64 @BITS_SET(i32 %236, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %235
  %243 = load i64, i64* @DPIO_PHY1, align 8
  %244 = load i32, i32* @DPIO_CH0, align 4
  %245 = call i32 @PHY_STATUS_CMN_LDO(i64 %243, i32 %244)
  %246 = load i32, i32* %6, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %6, align 4
  br label %248

248:                                              ; preds = %242, %235
  %249 = load i32, i32* %5, align 4
  %250 = load i64, i64* @DPIO_PHY1, align 8
  %251 = load i32, i32* @DPIO_CH0, align 4
  %252 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 3, i64 %250, i32 %251)
  %253 = call i64 @BITS_SET(i32 %249, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load i64, i64* @DPIO_PHY1, align 8
  %257 = load i32, i32* @DPIO_CH0, align 4
  %258 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %256, i32 %257, i32 0)
  %259 = load i32, i32* %6, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %255, %248
  %262 = load i32, i32* %5, align 4
  %263 = load i64, i64* @DPIO_PHY1, align 8
  %264 = load i32, i32* @DPIO_CH0, align 4
  %265 = call i32 @PHY_CH_POWER_DOWN_OVRD(i32 12, i64 %263, i32 %264)
  %266 = call i64 @BITS_SET(i32 %262, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %261
  %269 = load i64, i64* @DPIO_PHY1, align 8
  %270 = load i32, i32* @DPIO_CH0, align 4
  %271 = call i32 @PHY_STATUS_SPLINE_LDO(i64 %269, i32 %270, i32 1)
  %272 = load i32, i32* %6, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %6, align 4
  br label %274

274:                                              ; preds = %268, %261
  br label %275

275:                                              ; preds = %274, %206
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* %6, align 4
  %278 = and i32 %277, %276
  store i32 %278, i32* %6, align 4
  %279 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %280 = load i32, i32* @DISPLAY_PHY_STATUS, align 4
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* %6, align 4
  %283 = call i64 @intel_de_wait_for_register(%struct.drm_i915_private* %279, i32 %280, i32 %281, i32 %282, i32 10)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %295

285:                                              ; preds = %275
  %286 = load i32, i32* @DISPLAY_PHY_STATUS, align 4
  %287 = call i32 @I915_READ(i32 %286)
  %288 = load i32, i32* %7, align 4
  %289 = and i32 %287, %288
  %290 = load i32, i32* %6, align 4
  %291 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %292 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %289, i32 %290, i32 %293)
  br label %295

295:                                              ; preds = %285, %275
  ret void
}

declare dso_local %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @PHY_STATUS_CMN_LDO(i64, i32) #1

declare dso_local i32 @PHY_STATUS_SPLINE_LDO(i64, i32, i32) #1

declare dso_local i32 @PHY_POWERGOOD(i64) #1

declare dso_local i32 @PHY_CH_POWER_DOWN_OVRD_EN(i64, i32) #1

declare dso_local i32 @PHY_CH_POWER_DOWN_OVRD(i32, i64, i32) #1

declare dso_local i64 @BITS_SET(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i64 @intel_de_wait_for_register(%struct.drm_i915_private*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
