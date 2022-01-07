; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_read_wm_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_read_wm_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, %struct.intel_uncore }
%struct.TYPE_2__ = type { i64 }
%struct.intel_uncore = type { i32 }

@GEN9_PCODE_READ_MEM_LATENCY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SKL Mailbox read error = %d\0A\00", align 1
@GEN9_MEM_LATENCY_LEVEL_MASK = common dso_local global i64 0, align 8
@GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT = common dso_local global i64 0, align 8
@GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT = common dso_local global i64 0, align 8
@GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT = common dso_local global i64 0, align 8
@MCH_SSKPD = common dso_local global i32 0, align 4
@SSKPD_WM0_SHIFT = common dso_local global i64 0, align 8
@SSKPD_WM_MASK = common dso_local global i64 0, align 8
@SSKPD_WM1_SHIFT = common dso_local global i64 0, align 8
@SSKPD_WM2_SHIFT = common dso_local global i64 0, align 8
@SSKPD_WM3_SHIFT = common dso_local global i64 0, align 8
@MLTR_ILK = common dso_local global i32 0, align 4
@MLTR_WM1_SHIFT = common dso_local global i64 0, align 8
@ILK_SRLT_MASK = common dso_local global i64 0, align 8
@MLTR_WM2_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i64*)* @intel_read_wm_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_read_wm_latency(%struct.drm_i915_private* %0, i64* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.intel_uncore*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i64* %1, i64** %4, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 1
  store %struct.intel_uncore* %15, %struct.intel_uncore** %5, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = call i32 @INTEL_GEN(%struct.drm_i915_private* %16)
  %18 = icmp sge i32 %17, 9
  br i1 %18, label %19, label %168

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i32 @ilk_wm_max_level(%struct.drm_i915_private* %20)
  store i32 %21, i32* %10, align 4
  store i64 0, i64* %6, align 8
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = load i32, i32* @GEN9_PCODE_READ_MEM_LATENCY, align 4
  %24 = call i32 @sandybridge_pcode_read(%struct.drm_i915_private* %22, i32 %23, i64* %6, i32* null)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %288

30:                                               ; preds = %19
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_MASK, align 8
  %33 = and i64 %31, %32
  %34 = load i64*, i64** %4, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT, align 8
  %38 = ashr i64 %36, %37
  %39 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_MASK, align 8
  %40 = and i64 %38, %39
  %41 = load i64*, i64** %4, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT, align 8
  %45 = ashr i64 %43, %44
  %46 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_MASK, align 8
  %47 = and i64 %45, %46
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT, align 8
  %52 = ashr i64 %50, %51
  %53 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_MASK, align 8
  %54 = and i64 %52, %53
  %55 = load i64*, i64** %4, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 3
  store i64 %54, i64* %56, align 8
  store i64 1, i64* %6, align 8
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = load i32, i32* @GEN9_PCODE_READ_MEM_LATENCY, align 4
  %59 = call i32 @sandybridge_pcode_read(%struct.drm_i915_private* %57, i32 %58, i64* %6, i32* null)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %30
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %288

65:                                               ; preds = %30
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_MASK, align 8
  %68 = and i64 %66, %67
  %69 = load i64*, i64** %4, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 4
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT, align 8
  %73 = ashr i64 %71, %72
  %74 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_MASK, align 8
  %75 = and i64 %73, %74
  %76 = load i64*, i64** %4, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 5
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT, align 8
  %80 = ashr i64 %78, %79
  %81 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_MASK, align 8
  %82 = and i64 %80, %81
  %83 = load i64*, i64** %4, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 6
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT, align 8
  %87 = ashr i64 %85, %86
  %88 = load i64, i64* @GEN9_MEM_LATENCY_LEVEL_MASK, align 8
  %89 = and i64 %87, %88
  %90 = load i64*, i64** %4, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 7
  store i64 %89, i64* %91, align 8
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %120, %65
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %92
  %97 = load i64*, i64** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %115, %103
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i64*, i64** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %106

118:                                              ; preds = %106
  br label %123

119:                                              ; preds = %96
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %92

123:                                              ; preds = %118, %92
  %124 = load i64*, i64** %4, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %123
  %129 = load i64*, i64** %4, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 2
  store i64 %132, i64* %130, align 8
  store i32 1, i32* %9, align 4
  br label %133

133:                                              ; preds = %152, %128
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %133
  %138 = load i64*, i64** %4, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %155

145:                                              ; preds = %137
  %146 = load i64*, i64** %4, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 2
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %133

155:                                              ; preds = %144, %133
  br label %156

156:                                              ; preds = %155, %123
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %158 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load i64*, i64** %4, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %162, %156
  br label %288

168:                                              ; preds = %2
  %169 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %170 = call i64 @IS_HASWELL(%struct.drm_i915_private* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %174 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %221

176:                                              ; preds = %172, %168
  %177 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %178 = load i32, i32* @MCH_SSKPD, align 4
  %179 = call i32 @intel_uncore_read64(%struct.intel_uncore* %177, i32 %178)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = ashr i32 %180, 56
  %182 = and i32 %181, 255
  %183 = sext i32 %182 to i64
  %184 = load i64*, i64** %4, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  store i64 %183, i64* %185, align 8
  %186 = load i64*, i64** %4, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %176
  %191 = load i32, i32* %11, align 4
  %192 = and i32 %191, 15
  %193 = sext i32 %192 to i64
  %194 = load i64*, i64** %4, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %190, %176
  %197 = load i32, i32* %11, align 4
  %198 = ashr i32 %197, 4
  %199 = and i32 %198, 255
  %200 = sext i32 %199 to i64
  %201 = load i64*, i64** %4, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 1
  store i64 %200, i64* %202, align 8
  %203 = load i32, i32* %11, align 4
  %204 = ashr i32 %203, 12
  %205 = and i32 %204, 255
  %206 = sext i32 %205 to i64
  %207 = load i64*, i64** %4, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 2
  store i64 %206, i64* %208, align 8
  %209 = load i32, i32* %11, align 4
  %210 = ashr i32 %209, 20
  %211 = and i32 %210, 511
  %212 = sext i32 %211 to i64
  %213 = load i64*, i64** %4, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 3
  store i64 %212, i64* %214, align 8
  %215 = load i32, i32* %11, align 4
  %216 = ashr i32 %215, 32
  %217 = and i32 %216, 511
  %218 = sext i32 %217 to i64
  %219 = load i64*, i64** %4, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 4
  store i64 %218, i64* %220, align 8
  br label %287

221:                                              ; preds = %172
  %222 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %223 = call i32 @INTEL_GEN(%struct.drm_i915_private* %222)
  %224 = icmp sge i32 %223, 6
  br i1 %224, label %225, label %257

225:                                              ; preds = %221
  %226 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %227 = load i32, i32* @MCH_SSKPD, align 4
  %228 = call i64 @intel_uncore_read(%struct.intel_uncore* %226, i32 %227)
  store i64 %228, i64* %12, align 8
  %229 = load i64, i64* %12, align 8
  %230 = load i64, i64* @SSKPD_WM0_SHIFT, align 8
  %231 = ashr i64 %229, %230
  %232 = load i64, i64* @SSKPD_WM_MASK, align 8
  %233 = and i64 %231, %232
  %234 = load i64*, i64** %4, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 0
  store i64 %233, i64* %235, align 8
  %236 = load i64, i64* %12, align 8
  %237 = load i64, i64* @SSKPD_WM1_SHIFT, align 8
  %238 = ashr i64 %236, %237
  %239 = load i64, i64* @SSKPD_WM_MASK, align 8
  %240 = and i64 %238, %239
  %241 = load i64*, i64** %4, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 1
  store i64 %240, i64* %242, align 8
  %243 = load i64, i64* %12, align 8
  %244 = load i64, i64* @SSKPD_WM2_SHIFT, align 8
  %245 = ashr i64 %243, %244
  %246 = load i64, i64* @SSKPD_WM_MASK, align 8
  %247 = and i64 %245, %246
  %248 = load i64*, i64** %4, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 2
  store i64 %247, i64* %249, align 8
  %250 = load i64, i64* %12, align 8
  %251 = load i64, i64* @SSKPD_WM3_SHIFT, align 8
  %252 = ashr i64 %250, %251
  %253 = load i64, i64* @SSKPD_WM_MASK, align 8
  %254 = and i64 %252, %253
  %255 = load i64*, i64** %4, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 3
  store i64 %254, i64* %256, align 8
  br label %286

257:                                              ; preds = %221
  %258 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %259 = call i32 @INTEL_GEN(%struct.drm_i915_private* %258)
  %260 = icmp sge i32 %259, 5
  br i1 %260, label %261, label %281

261:                                              ; preds = %257
  %262 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %263 = load i32, i32* @MLTR_ILK, align 4
  %264 = call i64 @intel_uncore_read(%struct.intel_uncore* %262, i32 %263)
  store i64 %264, i64* %13, align 8
  %265 = load i64*, i64** %4, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 0
  store i64 7, i64* %266, align 8
  %267 = load i64, i64* %13, align 8
  %268 = load i64, i64* @MLTR_WM1_SHIFT, align 8
  %269 = ashr i64 %267, %268
  %270 = load i64, i64* @ILK_SRLT_MASK, align 8
  %271 = and i64 %269, %270
  %272 = load i64*, i64** %4, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 1
  store i64 %271, i64* %273, align 8
  %274 = load i64, i64* %13, align 8
  %275 = load i64, i64* @MLTR_WM2_SHIFT, align 8
  %276 = ashr i64 %274, %275
  %277 = load i64, i64* @ILK_SRLT_MASK, align 8
  %278 = and i64 %276, %277
  %279 = load i64*, i64** %4, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 2
  store i64 %278, i64* %280, align 8
  br label %285

281:                                              ; preds = %257
  %282 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %283 = call i32 @INTEL_DEVID(%struct.drm_i915_private* %282)
  %284 = call i32 @MISSING_CASE(i32 %283)
  br label %285

285:                                              ; preds = %281, %261
  br label %286

286:                                              ; preds = %285, %225
  br label %287

287:                                              ; preds = %286, %196
  br label %288

288:                                              ; preds = %27, %62, %287, %167
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @ilk_wm_max_level(%struct.drm_i915_private*) #1

declare dso_local i32 @sandybridge_pcode_read(%struct.drm_i915_private*, i32, i64*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_read64(%struct.intel_uncore*, i32) #1

declare dso_local i64 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @INTEL_DEVID(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
