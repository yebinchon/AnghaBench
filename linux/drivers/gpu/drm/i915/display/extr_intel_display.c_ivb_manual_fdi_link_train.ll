; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ivb_manual_fdi_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ivb_manual_fdi_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@FDI_RX_SYMBOL_LOCK = common dso_local global i32 0, align 4
@FDI_RX_BIT_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"FDI_RX_IIR before link train 0x%x\0A\00", align 1
@snb_b_fdi_train_param = common dso_local global i32* null, align 8
@FDI_LINK_TRAIN_AUTO = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_NONE_IVB = common dso_local global i32 0, align 4
@FDI_TX_ENABLE = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_MASK_CPT = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@FDI_DP_PORT_WIDTH_MASK = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1_IVB = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_VOL_EMP_MASK = common dso_local global i32 0, align 4
@FDI_COMPOSITE_SYNC = common dso_local global i32 0, align 4
@FDI_RX_TP1_TO_TP2_48 = common dso_local global i32 0, align 4
@FDI_RX_FDI_DELAY_90 = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1_CPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"FDI_RX_IIR 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"FDI train 1 done, level %i.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"FDI train 1 fail on vswing %d\0A\00", align 1
@FDI_LINK_TRAIN_PATTERN_2_IVB = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_2_CPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"FDI train 2 done, level %i.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"FDI train 2 fail on vswing %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"FDI train done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @ivb_manual_fdi_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivb_manual_fdi_link_train(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @FDI_RX_IMR(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @I915_READ(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @I915_WRITE(i32 %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @POSTING_READ(i32 %36)
  %38 = call i32 @udelay(i32 150)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @FDI_RX_IIR(i32 %39)
  %41 = call i32 @I915_READ(i32 %40)
  %42 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %260, %2
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** @snb_b_fdi_train_param, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = mul nsw i32 %46, 2
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %263

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @FDI_TX_CTL(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @I915_READ(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @FDI_LINK_TRAIN_AUTO, align 4
  %55 = load i32, i32* @FDI_LINK_TRAIN_NONE_IVB, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @FDI_TX_ENABLE, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @I915_WRITE(i32 %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @FDI_RX_CTL(i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @I915_READ(i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @FDI_LINK_TRAIN_AUTO, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_MASK_CPT, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @FDI_RX_ENABLE, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @I915_WRITE(i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @FDI_TX_CTL(i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @I915_READ(i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* @FDI_DP_PORT_WIDTH_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %95 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @FDI_DP_PORT_WIDTH(i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1_IVB, align 4
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* @FDI_LINK_TRAIN_VOL_EMP_MASK, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32*, i32** @snb_b_fdi_train_param, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sdiv i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* @FDI_COMPOSITE_SYNC, align 4
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @FDI_TX_ENABLE, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @I915_WRITE(i32 %118, i32 %121)
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @FDI_RX_MISC(i32 %123)
  %125 = load i32, i32* @FDI_RX_TP1_TO_TP2_48, align 4
  %126 = load i32, i32* @FDI_RX_FDI_DELAY_90, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @I915_WRITE(i32 %124, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @FDI_RX_CTL(i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @I915_READ(i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1_CPT, align 4
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* @FDI_COMPOSITE_SYNC, align 4
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @FDI_RX_ENABLE, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @I915_WRITE(i32 %139, i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @POSTING_READ(i32 %144)
  %146 = call i32 @udelay(i32 1)
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %177, %49
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %148, 4
  br i1 %149, label %150, label %180

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @FDI_RX_IIR(i32 %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @I915_READ(i32 %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %150
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @I915_READ(i32 %162)
  %164 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %161, %150
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @I915_WRITE(i32 %168, i32 %171)
  %173 = load i32, i32* %10, align 4
  %174 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  br label %180

175:                                              ; preds = %161
  %176 = call i32 @udelay(i32 1)
  br label %177

177:                                              ; preds = %175
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %147

180:                                              ; preds = %167, %147
  %181 = load i32, i32* %10, align 4
  %182 = icmp eq i32 %181, 4
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* %11, align 4
  %185 = sdiv i32 %184, 2
  %186 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %185)
  br label %260

187:                                              ; preds = %180
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @FDI_TX_CTL(i32 %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @I915_READ(i32 %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* @FDI_LINK_TRAIN_NONE_IVB, align 4
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %9, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2_IVB, align 4
  %197 = load i32, i32* %9, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @I915_WRITE(i32 %199, i32 %200)
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @FDI_RX_CTL(i32 %202)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @I915_READ(i32 %204)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_MASK_CPT, align 4
  %207 = xor i32 %206, -1
  %208 = load i32, i32* %9, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2_CPT, align 4
  %211 = load i32, i32* %9, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @I915_WRITE(i32 %213, i32 %214)
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @POSTING_READ(i32 %216)
  %218 = call i32 @udelay(i32 2)
  store i32 0, i32* %10, align 4
  br label %219

219:                                              ; preds = %249, %187
  %220 = load i32, i32* %10, align 4
  %221 = icmp slt i32 %220, 4
  br i1 %221, label %222, label %252

222:                                              ; preds = %219
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @FDI_RX_IIR(i32 %223)
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @I915_READ(i32 %225)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %222
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @I915_READ(i32 %234)
  %236 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %233, %222
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @I915_WRITE(i32 %240, i32 %243)
  %245 = load i32, i32* %10, align 4
  %246 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %245)
  br label %264

247:                                              ; preds = %233
  %248 = call i32 @udelay(i32 2)
  br label %249

249:                                              ; preds = %247
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %219

252:                                              ; preds = %219
  %253 = load i32, i32* %10, align 4
  %254 = icmp eq i32 %253, 4
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i32, i32* %11, align 4
  %257 = sdiv i32 %256, 2
  %258 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %255, %252
  br label %260

260:                                              ; preds = %259, %183
  %261 = load i32, i32* %11, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %11, align 4
  br label %43

263:                                              ; preds = %43
  br label %264

264:                                              ; preds = %263, %239
  %265 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @FDI_RX_IMR(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @FDI_RX_IIR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @FDI_DP_PORT_WIDTH(i32) #1

declare dso_local i32 @FDI_RX_MISC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
