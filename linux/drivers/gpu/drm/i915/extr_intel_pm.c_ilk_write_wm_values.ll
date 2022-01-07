; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_write_wm_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_write_wm_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ilk_wm_values }
%struct.ilk_wm_values = type { i64, i32*, i32*, i64, i32*, i32* }

@PIPE_A = common dso_local global i32 0, align 4
@WM0_PIPEA_ILK = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@WM0_PIPEB_ILK = common dso_local global i32 0, align 4
@PIPE_C = common dso_local global i32 0, align 4
@WM0_PIPEC_IVB = common dso_local global i32 0, align 4
@WM_DIRTY_DDB = common dso_local global i32 0, align 4
@WM_MISC = common dso_local global i32 0, align 4
@INTEL_DDB_PART_1_2 = common dso_local global i64 0, align 8
@WM_MISC_DATA_PARTITION_5_6 = common dso_local global i32 0, align 4
@DISP_ARB_CTL2 = common dso_local global i32 0, align 4
@DISP_DATA_PARTITION_5_6 = common dso_local global i32 0, align 4
@WM_DIRTY_FBC = common dso_local global i32 0, align 4
@DISP_ARB_CTL = common dso_local global i32 0, align 4
@DISP_FBC_WM_DIS = common dso_local global i32 0, align 4
@WM1S_LP_ILK = common dso_local global i32 0, align 4
@WM2S_LP_IVB = common dso_local global i32 0, align 4
@WM3S_LP_IVB = common dso_local global i32 0, align 4
@WM1_LP_ILK = common dso_local global i32 0, align 4
@WM2_LP_ILK = common dso_local global i32 0, align 4
@WM3_LP_ILK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.ilk_wm_values*)* @ilk_write_wm_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_write_wm_values(%struct.drm_i915_private* %0, %struct.ilk_wm_values* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.ilk_wm_values*, align 8
  %5 = alloca %struct.ilk_wm_values*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.ilk_wm_values* %1, %struct.ilk_wm_values** %4, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ilk_wm_values* %10, %struct.ilk_wm_values** %5, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %13 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %14 = call i32 @ilk_compute_wm_dirty(%struct.drm_i915_private* %11, %struct.ilk_wm_values* %12, %struct.ilk_wm_values* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %351

18:                                               ; preds = %2
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @_ilk_disable_lp_wm(%struct.drm_i915_private* %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PIPE_A, align 4
  %24 = call i32 @WM_DIRTY_PIPE(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load i32, i32* @WM0_PIPEA_ILK, align 4
  %29 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %30 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @I915_WRITE(i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %27, %18
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PIPE_B, align 4
  %38 = call i32 @WM_DIRTY_PIPE(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32, i32* @WM0_PIPEB_ILK, align 4
  %43 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %44 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @I915_WRITE(i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %41, %35
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @PIPE_C, align 4
  %52 = call i32 @WM_DIRTY_PIPE(i32 %51)
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* @WM0_PIPEC_IVB, align 4
  %57 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %58 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @I915_WRITE(i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %55, %49
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PIPE_A, align 4
  %66 = call i32 @WM_DIRTY_LINETIME(i32 %65)
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load i32, i32* @PIPE_A, align 4
  %71 = call i32 @PIPE_WM_LINETIME(i32 %70)
  %72 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %73 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @I915_WRITE(i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %69, %63
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @PIPE_B, align 4
  %81 = call i32 @WM_DIRTY_LINETIME(i32 %80)
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load i32, i32* @PIPE_B, align 4
  %86 = call i32 @PIPE_WM_LINETIME(i32 %85)
  %87 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %88 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @I915_WRITE(i32 %86, i32 %91)
  br label %93

93:                                               ; preds = %84, %78
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @PIPE_C, align 4
  %96 = call i32 @WM_DIRTY_LINETIME(i32 %95)
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load i32, i32* @PIPE_C, align 4
  %101 = call i32 @PIPE_WM_LINETIME(i32 %100)
  %102 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %103 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @I915_WRITE(i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %99, %93
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @WM_DIRTY_DDB, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %164

113:                                              ; preds = %108
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %115 = call i64 @IS_HASWELL(%struct.drm_i915_private* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %119 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %117, %113
  %122 = load i32, i32* @WM_MISC, align 4
  %123 = call i32 @I915_READ(i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %125 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @INTEL_DDB_PART_1_2, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load i32, i32* @WM_MISC_DATA_PARTITION_5_6, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %7, align 4
  br label %138

134:                                              ; preds = %121
  %135 = load i32, i32* @WM_MISC_DATA_PARTITION_5_6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %134, %129
  %139 = load i32, i32* @WM_MISC, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @I915_WRITE(i32 %139, i32 %140)
  br label %163

142:                                              ; preds = %117
  %143 = load i32, i32* @DISP_ARB_CTL2, align 4
  %144 = call i32 @I915_READ(i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %146 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @INTEL_DDB_PART_1_2, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load i32, i32* @DISP_DATA_PARTITION_5_6, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %7, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %7, align 4
  br label %159

155:                                              ; preds = %142
  %156 = load i32, i32* @DISP_DATA_PARTITION_5_6, align 4
  %157 = load i32, i32* %7, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i32, i32* @DISP_ARB_CTL2, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @I915_WRITE(i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %138
  br label %164

164:                                              ; preds = %163, %108
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @WM_DIRTY_FBC, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %164
  %170 = load i32, i32* @DISP_ARB_CTL, align 4
  %171 = call i32 @I915_READ(i32 %170)
  store i32 %171, i32* %7, align 4
  %172 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %173 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %169
  %177 = load i32, i32* @DISP_FBC_WM_DIS, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %7, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %7, align 4
  br label %185

181:                                              ; preds = %169
  %182 = load i32, i32* @DISP_FBC_WM_DIS, align 4
  %183 = load i32, i32* %7, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %181, %176
  %186 = load i32, i32* @DISP_ARB_CTL, align 4
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @I915_WRITE(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %164
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @WM_DIRTY_LP(i32 1)
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %189
  %195 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %196 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %201 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %199, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %194
  %207 = load i32, i32* @WM1S_LP_ILK, align 4
  %208 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %209 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @I915_WRITE(i32 %207, i32 %212)
  br label %214

214:                                              ; preds = %206, %194, %189
  %215 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %216 = call i32 @INTEL_GEN(%struct.drm_i915_private* %215)
  %217 = icmp sge i32 %216, 7
  br i1 %217, label %218, label %269

218:                                              ; preds = %214
  %219 = load i32, i32* %6, align 4
  %220 = call i32 @WM_DIRTY_LP(i32 2)
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %243

223:                                              ; preds = %218
  %224 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %225 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %230 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %228, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %223
  %236 = load i32, i32* @WM2S_LP_IVB, align 4
  %237 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %238 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @I915_WRITE(i32 %236, i32 %241)
  br label %243

243:                                              ; preds = %235, %223, %218
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @WM_DIRTY_LP(i32 3)
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %268

248:                                              ; preds = %243
  %249 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %250 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %255 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 2
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %253, %258
  br i1 %259, label %260, label %268

260:                                              ; preds = %248
  %261 = load i32, i32* @WM3S_LP_IVB, align 4
  %262 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %263 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 2
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @I915_WRITE(i32 %261, i32 %266)
  br label %268

268:                                              ; preds = %260, %248, %243
  br label %269

269:                                              ; preds = %268, %214
  %270 = load i32, i32* %6, align 4
  %271 = call i32 @WM_DIRTY_LP(i32 1)
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %294

274:                                              ; preds = %269
  %275 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %276 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %281 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %279, %284
  br i1 %285, label %286, label %294

286:                                              ; preds = %274
  %287 = load i32, i32* @WM1_LP_ILK, align 4
  %288 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %289 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @I915_WRITE(i32 %287, i32 %292)
  br label %294

294:                                              ; preds = %286, %274, %269
  %295 = load i32, i32* %6, align 4
  %296 = call i32 @WM_DIRTY_LP(i32 2)
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %319

299:                                              ; preds = %294
  %300 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %301 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %306 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %304, %309
  br i1 %310, label %311, label %319

311:                                              ; preds = %299
  %312 = load i32, i32* @WM2_LP_ILK, align 4
  %313 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %314 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @I915_WRITE(i32 %312, i32 %317)
  br label %319

319:                                              ; preds = %311, %299, %294
  %320 = load i32, i32* %6, align 4
  %321 = call i32 @WM_DIRTY_LP(i32 3)
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %344

324:                                              ; preds = %319
  %325 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %326 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 2
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %331 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 2
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %329, %334
  br i1 %335, label %336, label %344

336:                                              ; preds = %324
  %337 = load i32, i32* @WM3_LP_ILK, align 4
  %338 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %339 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %338, i32 0, i32 1
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 2
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @I915_WRITE(i32 %337, i32 %342)
  br label %344

344:                                              ; preds = %336, %324, %319
  %345 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %346 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 0
  %348 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %4, align 8
  %349 = bitcast %struct.ilk_wm_values* %347 to i8*
  %350 = bitcast %struct.ilk_wm_values* %348 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %349, i8* align 8 %350, i64 48, i1 false)
  br label %351

351:                                              ; preds = %344, %17
  ret void
}

declare dso_local i32 @ilk_compute_wm_dirty(%struct.drm_i915_private*, %struct.ilk_wm_values*, %struct.ilk_wm_values*) #1

declare dso_local i32 @_ilk_disable_lp_wm(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @WM_DIRTY_PIPE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @WM_DIRTY_LINETIME(i32) #1

declare dso_local i32 @PIPE_WM_LINETIME(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WM_DIRTY_LP(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
