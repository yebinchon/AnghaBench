; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_validate_v_prime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_validate_v_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdcp_shim = type { i32 (%struct.intel_digital_port.0*, i32, i32*)* }
%struct.intel_digital_port.0 = type opaque

@DRM_HDCP_V_PRIME_NUM_PARTS = common dso_local global i32 0, align 4
@HDCP_REP_CTL = common dso_local global i32 0, align 4
@HDCP_SHA1_TEXT_32 = common dso_local global i32 0, align 4
@DRM_HDCP_KSV_LEN = common dso_local global i32 0, align 4
@HDCP_SHA1_TEXT_16 = common dso_local global i32 0, align 4
@HDCP_SHA1_TEXT_0 = common dso_local global i32 0, align 4
@HDCP_SHA1_TEXT_24 = common dso_local global i32 0, align 4
@HDCP_SHA1_TEXT_8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid number of leftovers %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HDCP_SHA1_COMPLETE_HASH = common dso_local global i32 0, align 4
@HDCP_SHA1_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Timed out waiting for SHA1 complete\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@HDCP_SHA1_V_MATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"SHA-1 mismatch, HDCP failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, %struct.intel_hdcp_shim*, i32*, i32, i32*)* @intel_hdcp_validate_v_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdcp_validate_v_prime(%struct.intel_digital_port* %0, %struct.intel_hdcp_shim* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.intel_hdcp_shim*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.drm_i915_private*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %7, align 8
  store %struct.intel_hdcp_shim* %1, %struct.intel_hdcp_shim** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %23 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %24 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %28, align 8
  store %struct.drm_i915_private* %29, %struct.drm_i915_private** %12, align 8
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %51, %5
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* @DRM_HDCP_V_PRIME_NUM_PARTS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %8, align 8
  %36 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %35, i32 0, i32 0
  %37 = load i32 (%struct.intel_digital_port.0*, i32, i32*)*, i32 (%struct.intel_digital_port.0*, i32, i32*)** %36, align 8
  %38 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %39 = bitcast %struct.intel_digital_port* %38 to %struct.intel_digital_port.0*
  %40 = load i32, i32* %18, align 4
  %41 = call i32 %37(%struct.intel_digital_port.0* %39, i32 %40, i32* %13)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %6, align 4
  br label %500

46:                                               ; preds = %34
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @HDCP_SHA_V_PRIME(i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @I915_WRITE(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %18, align 4
  br label %30

54:                                               ; preds = %30
  store i32 0, i32* %20, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %55 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %56 = call i32 @intel_hdcp_get_repeater_ctl(%struct.intel_digital_port* %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* @HDCP_REP_CTL, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @HDCP_SHA1_TEXT_32, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @I915_WRITE(i32 %57, i32 %60)
  store i32 0, i32* %18, align 4
  br label %62

62:                                               ; preds = %167, %54
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %170

66:                                               ; preds = %62
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* @DRM_HDCP_KSV_LEN, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  store i32* %72, i32** %22, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 4, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %77

77:                                               ; preds = %96, %66
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %21, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load i32*, i32** %22, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 4, %88
  %90 = sub i64 %89, 1
  %91 = mul i64 %90, 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %86, %92
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %81
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %19, align 4
  br label %77

99:                                               ; preds = %77
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %100, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %17, align 4
  store i32 %106, i32* %6, align 4
  br label %500

107:                                              ; preds = %99
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, 4
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %20, align 4
  %113 = srem i32 %112, 64
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %107
  %116 = load i32, i32* @HDCP_REP_CTL, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @HDCP_SHA1_TEXT_32, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @I915_WRITE(i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %115, %107
  %122 = load i32, i32* @DRM_HDCP_KSV_LEN, align 4
  %123 = load i32, i32* %21, align 4
  %124 = sub i32 %122, %123
  store i32 %124, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %19, align 4
  br label %125

125:                                              ; preds = %146, %121
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %125
  %130 = load i32*, i32** %22, align 8
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %19, align 4
  %133 = add i32 %131, %132
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %19, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 4, %138
  %140 = sub i64 %139, 1
  %141 = mul i64 %140, 8
  %142 = trunc i64 %141 to i32
  %143 = shl i32 %136, %142
  %144 = load i32, i32* %14, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %129
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %19, align 4
  br label %125

149:                                              ; preds = %125
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ugt i64 4, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %167

154:                                              ; preds = %149
  %155 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %155, i32 %156)
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %17, align 4
  store i32 %161, i32* %6, align 4
  br label %500

162:                                              ; preds = %154
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %163 = load i32, i32* %20, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 %164, 4
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %20, align 4
  br label %167

167:                                              ; preds = %162, %153
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %18, align 4
  br label %62

170:                                              ; preds = %62
  %171 = load i32, i32* %15, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %230

173:                                              ; preds = %170
  %174 = load i32, i32* @HDCP_REP_CTL, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* @HDCP_SHA1_TEXT_16, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @I915_WRITE(i32 %174, i32 %177)
  %179 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 8
  %184 = load i32*, i32** %11, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %183, %186
  %188 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %179, i32 %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %173
  %192 = load i32, i32* %17, align 4
  store i32 %192, i32* %6, align 4
  br label %500

193:                                              ; preds = %173
  %194 = load i32, i32* %20, align 4
  %195 = sext i32 %194 to i64
  %196 = add i64 %195, 4
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %20, align 4
  %198 = load i32, i32* @HDCP_REP_CTL, align 4
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* @HDCP_SHA1_TEXT_0, align 4
  %201 = or i32 %199, %200
  %202 = call i32 @I915_WRITE(i32 %198, i32 %201)
  %203 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %204 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %203, i32 0)
  store i32 %204, i32* %17, align 4
  %205 = load i32, i32* %17, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %193
  %208 = load i32, i32* %17, align 4
  store i32 %208, i32* %6, align 4
  br label %500

209:                                              ; preds = %193
  %210 = load i32, i32* %20, align 4
  %211 = sext i32 %210 to i64
  %212 = add i64 %211, 4
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %20, align 4
  %214 = load i32, i32* @HDCP_REP_CTL, align 4
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* @HDCP_SHA1_TEXT_16, align 4
  %217 = or i32 %215, %216
  %218 = call i32 @I915_WRITE(i32 %214, i32 %217)
  %219 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %220 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %219, i32 0)
  store i32 %220, i32* %17, align 4
  %221 = load i32, i32* %17, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %209
  %224 = load i32, i32* %17, align 4
  store i32 %224, i32* %6, align 4
  br label %500

225:                                              ; preds = %209
  %226 = load i32, i32* %20, align 4
  %227 = sext i32 %226 to i64
  %228 = add i64 %227, 4
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %20, align 4
  br label %439

230:                                              ; preds = %170
  %231 = load i32, i32* %15, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %297

233:                                              ; preds = %230
  %234 = load i32, i32* @HDCP_REP_CTL, align 4
  %235 = load i32, i32* %16, align 4
  %236 = load i32, i32* @HDCP_SHA1_TEXT_24, align 4
  %237 = or i32 %235, %236
  %238 = call i32 @I915_WRITE(i32 %234, i32 %237)
  %239 = load i32*, i32** %11, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = shl i32 %241, 16
  %243 = load i32*, i32** %11, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = shl i32 %245, 8
  %247 = or i32 %242, %246
  %248 = load i32, i32* %14, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %14, align 4
  %250 = load i32, i32* %14, align 4
  %251 = and i32 %250, -256
  %252 = lshr i32 %251, 8
  store i32 %252, i32* %14, align 4
  %253 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %253, i32 %254)
  store i32 %255, i32* %17, align 4
  %256 = load i32, i32* %17, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %233
  %259 = load i32, i32* %17, align 4
  store i32 %259, i32* %6, align 4
  br label %500

260:                                              ; preds = %233
  %261 = load i32, i32* %20, align 4
  %262 = sext i32 %261 to i64
  %263 = add i64 %262, 4
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %20, align 4
  %265 = load i32, i32* @HDCP_REP_CTL, align 4
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* @HDCP_SHA1_TEXT_0, align 4
  %268 = or i32 %266, %267
  %269 = call i32 @I915_WRITE(i32 %265, i32 %268)
  %270 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %271 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %270, i32 0)
  store i32 %271, i32* %17, align 4
  %272 = load i32, i32* %17, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %260
  %275 = load i32, i32* %17, align 4
  store i32 %275, i32* %6, align 4
  br label %500

276:                                              ; preds = %260
  %277 = load i32, i32* %20, align 4
  %278 = sext i32 %277 to i64
  %279 = add i64 %278, 4
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %20, align 4
  %281 = load i32, i32* @HDCP_REP_CTL, align 4
  %282 = load i32, i32* %16, align 4
  %283 = load i32, i32* @HDCP_SHA1_TEXT_8, align 4
  %284 = or i32 %282, %283
  %285 = call i32 @I915_WRITE(i32 %281, i32 %284)
  %286 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %287 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %286, i32 0)
  store i32 %287, i32* %17, align 4
  %288 = load i32, i32* %17, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %276
  %291 = load i32, i32* %17, align 4
  store i32 %291, i32* %6, align 4
  br label %500

292:                                              ; preds = %276
  %293 = load i32, i32* %20, align 4
  %294 = sext i32 %293 to i64
  %295 = add i64 %294, 4
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %20, align 4
  br label %438

297:                                              ; preds = %230
  %298 = load i32, i32* %15, align 4
  %299 = icmp eq i32 %298, 2
  br i1 %299, label %300, label %353

300:                                              ; preds = %297
  %301 = load i32, i32* @HDCP_REP_CTL, align 4
  %302 = load i32, i32* %16, align 4
  %303 = load i32, i32* @HDCP_SHA1_TEXT_32, align 4
  %304 = or i32 %302, %303
  %305 = call i32 @I915_WRITE(i32 %301, i32 %304)
  %306 = load i32*, i32** %11, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  %308 = load i32, i32* %307, align 4
  %309 = shl i32 %308, 24
  %310 = load i32*, i32** %11, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 1
  %312 = load i32, i32* %311, align 4
  %313 = shl i32 %312, 16
  %314 = or i32 %309, %313
  %315 = load i32, i32* %14, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %14, align 4
  %317 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %318 = load i32, i32* %14, align 4
  %319 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %317, i32 %318)
  store i32 %319, i32* %17, align 4
  %320 = load i32, i32* %17, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %300
  %323 = load i32, i32* %17, align 4
  store i32 %323, i32* %6, align 4
  br label %500

324:                                              ; preds = %300
  %325 = load i32, i32* %20, align 4
  %326 = sext i32 %325 to i64
  %327 = add i64 %326, 4
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %20, align 4
  %329 = load i32, i32* @HDCP_REP_CTL, align 4
  %330 = load i32, i32* %16, align 4
  %331 = load i32, i32* @HDCP_SHA1_TEXT_0, align 4
  %332 = or i32 %330, %331
  %333 = call i32 @I915_WRITE(i32 %329, i32 %332)
  store i32 0, i32* %18, align 4
  br label %334

334:                                              ; preds = %349, %324
  %335 = load i32, i32* %18, align 4
  %336 = icmp slt i32 %335, 2
  br i1 %336, label %337, label %352

337:                                              ; preds = %334
  %338 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %339 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %338, i32 0)
  store i32 %339, i32* %17, align 4
  %340 = load i32, i32* %17, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = load i32, i32* %17, align 4
  store i32 %343, i32* %6, align 4
  br label %500

344:                                              ; preds = %337
  %345 = load i32, i32* %20, align 4
  %346 = sext i32 %345 to i64
  %347 = add i64 %346, 4
  %348 = trunc i64 %347 to i32
  store i32 %348, i32* %20, align 4
  br label %349

349:                                              ; preds = %344
  %350 = load i32, i32* %18, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %18, align 4
  br label %334

352:                                              ; preds = %334
  br label %437

353:                                              ; preds = %297
  %354 = load i32, i32* %15, align 4
  %355 = icmp eq i32 %354, 3
  br i1 %355, label %356, label %431

356:                                              ; preds = %353
  %357 = load i32, i32* @HDCP_REP_CTL, align 4
  %358 = load i32, i32* %16, align 4
  %359 = load i32, i32* @HDCP_SHA1_TEXT_32, align 4
  %360 = or i32 %358, %359
  %361 = call i32 @I915_WRITE(i32 %357, i32 %360)
  %362 = load i32*, i32** %11, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 0
  %364 = load i32, i32* %363, align 4
  %365 = shl i32 %364, 24
  %366 = load i32, i32* %14, align 4
  %367 = or i32 %366, %365
  store i32 %367, i32* %14, align 4
  %368 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %369 = load i32, i32* %14, align 4
  %370 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %368, i32 %369)
  store i32 %370, i32* %17, align 4
  %371 = load i32, i32* %17, align 4
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %356
  %374 = load i32, i32* %17, align 4
  store i32 %374, i32* %6, align 4
  br label %500

375:                                              ; preds = %356
  %376 = load i32, i32* %20, align 4
  %377 = sext i32 %376 to i64
  %378 = add i64 %377, 4
  %379 = trunc i64 %378 to i32
  store i32 %379, i32* %20, align 4
  %380 = load i32, i32* @HDCP_REP_CTL, align 4
  %381 = load i32, i32* %16, align 4
  %382 = load i32, i32* @HDCP_SHA1_TEXT_8, align 4
  %383 = or i32 %381, %382
  %384 = call i32 @I915_WRITE(i32 %380, i32 %383)
  %385 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %386 = load i32*, i32** %11, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 1
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %385, i32 %388)
  store i32 %389, i32* %17, align 4
  %390 = load i32, i32* %17, align 4
  %391 = icmp slt i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %375
  %393 = load i32, i32* %17, align 4
  store i32 %393, i32* %6, align 4
  br label %500

394:                                              ; preds = %375
  %395 = load i32, i32* %20, align 4
  %396 = sext i32 %395 to i64
  %397 = add i64 %396, 4
  %398 = trunc i64 %397 to i32
  store i32 %398, i32* %20, align 4
  %399 = load i32, i32* @HDCP_REP_CTL, align 4
  %400 = load i32, i32* %16, align 4
  %401 = load i32, i32* @HDCP_SHA1_TEXT_0, align 4
  %402 = or i32 %400, %401
  %403 = call i32 @I915_WRITE(i32 %399, i32 %402)
  %404 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %405 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %404, i32 0)
  store i32 %405, i32* %17, align 4
  %406 = load i32, i32* %17, align 4
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %394
  %409 = load i32, i32* %17, align 4
  store i32 %409, i32* %6, align 4
  br label %500

410:                                              ; preds = %394
  %411 = load i32, i32* %20, align 4
  %412 = sext i32 %411 to i64
  %413 = add i64 %412, 4
  %414 = trunc i64 %413 to i32
  store i32 %414, i32* %20, align 4
  %415 = load i32, i32* @HDCP_REP_CTL, align 4
  %416 = load i32, i32* %16, align 4
  %417 = load i32, i32* @HDCP_SHA1_TEXT_24, align 4
  %418 = or i32 %416, %417
  %419 = call i32 @I915_WRITE(i32 %415, i32 %418)
  %420 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %421 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %420, i32 0)
  store i32 %421, i32* %17, align 4
  %422 = load i32, i32* %17, align 4
  %423 = icmp slt i32 %422, 0
  br i1 %423, label %424, label %426

424:                                              ; preds = %410
  %425 = load i32, i32* %17, align 4
  store i32 %425, i32* %6, align 4
  br label %500

426:                                              ; preds = %410
  %427 = load i32, i32* %20, align 4
  %428 = sext i32 %427 to i64
  %429 = add i64 %428, 4
  %430 = trunc i64 %429 to i32
  store i32 %430, i32* %20, align 4
  br label %436

431:                                              ; preds = %353
  %432 = load i32, i32* %15, align 4
  %433 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %432)
  %434 = load i32, i32* @EINVAL, align 4
  %435 = sub nsw i32 0, %434
  store i32 %435, i32* %6, align 4
  br label %500

436:                                              ; preds = %426
  br label %437

437:                                              ; preds = %436, %352
  br label %438

438:                                              ; preds = %437, %292
  br label %439

439:                                              ; preds = %438, %225
  %440 = load i32, i32* @HDCP_REP_CTL, align 4
  %441 = load i32, i32* %16, align 4
  %442 = load i32, i32* @HDCP_SHA1_TEXT_32, align 4
  %443 = or i32 %441, %442
  %444 = call i32 @I915_WRITE(i32 %440, i32 %443)
  br label %445

445:                                              ; preds = %457, %439
  %446 = load i32, i32* %20, align 4
  %447 = srem i32 %446, 64
  %448 = sext i32 %447 to i64
  %449 = icmp ult i64 %448, 60
  br i1 %449, label %450, label %462

450:                                              ; preds = %445
  %451 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %452 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %451, i32 0)
  store i32 %452, i32* %17, align 4
  %453 = load i32, i32* %17, align 4
  %454 = icmp slt i32 %453, 0
  br i1 %454, label %455, label %457

455:                                              ; preds = %450
  %456 = load i32, i32* %17, align 4
  store i32 %456, i32* %6, align 4
  br label %500

457:                                              ; preds = %450
  %458 = load i32, i32* %20, align 4
  %459 = sext i32 %458 to i64
  %460 = add i64 %459, 4
  %461 = trunc i64 %460 to i32
  store i32 %461, i32* %20, align 4
  br label %445

462:                                              ; preds = %445
  %463 = load i32, i32* %10, align 4
  %464 = mul nsw i32 %463, 5
  %465 = add nsw i32 %464, 10
  %466 = mul nsw i32 %465, 8
  store i32 %466, i32* %14, align 4
  %467 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %468 = load i32, i32* %14, align 4
  %469 = call i32 @intel_write_sha_text(%struct.drm_i915_private* %467, i32 %468)
  store i32 %469, i32* %17, align 4
  %470 = load i32, i32* %17, align 4
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %472, label %474

472:                                              ; preds = %462
  %473 = load i32, i32* %17, align 4
  store i32 %473, i32* %6, align 4
  br label %500

474:                                              ; preds = %462
  %475 = load i32, i32* @HDCP_REP_CTL, align 4
  %476 = load i32, i32* %16, align 4
  %477 = load i32, i32* @HDCP_SHA1_COMPLETE_HASH, align 4
  %478 = or i32 %476, %477
  %479 = call i32 @I915_WRITE(i32 %475, i32 %478)
  %480 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %481 = load i32, i32* @HDCP_REP_CTL, align 4
  %482 = load i32, i32* @HDCP_SHA1_COMPLETE, align 4
  %483 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %480, i32 %481, i32 %482, i32 1)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %489

485:                                              ; preds = %474
  %486 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %487 = load i32, i32* @ETIMEDOUT, align 4
  %488 = sub nsw i32 0, %487
  store i32 %488, i32* %6, align 4
  br label %500

489:                                              ; preds = %474
  %490 = load i32, i32* @HDCP_REP_CTL, align 4
  %491 = call i32 @I915_READ(i32 %490)
  %492 = load i32, i32* @HDCP_SHA1_V_MATCH, align 4
  %493 = and i32 %491, %492
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %499, label %495

495:                                              ; preds = %489
  %496 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %497 = load i32, i32* @ENXIO, align 4
  %498 = sub nsw i32 0, %497
  store i32 %498, i32* %6, align 4
  br label %500

499:                                              ; preds = %489
  store i32 0, i32* %6, align 4
  br label %500

500:                                              ; preds = %499, %495, %485, %472, %455, %431, %424, %408, %392, %373, %342, %322, %290, %274, %258, %223, %207, %191, %160, %105, %44
  %501 = load i32, i32* %6, align 4
  ret i32 %501
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @HDCP_SHA_V_PRIME(i32) #1

declare dso_local i32 @intel_hdcp_get_repeater_ctl(%struct.intel_digital_port*) #1

declare dso_local i32 @intel_write_sha_text(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
