; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_dpm_force_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_dpm_force_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ci_power_info = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@RADEON_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@TARGET_AND_CURRENT_PROFILE_INDEX_1 = common dso_local global i32 0, align 4
@CURR_PCIE_INDEX_MASK = common dso_local global i32 0, align 4
@CURR_PCIE_INDEX_SHIFT = common dso_local global i32 0, align 4
@TARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@CURR_SCLK_INDEX_MASK = common dso_local global i32 0, align 4
@CURR_SCLK_INDEX_SHIFT = common dso_local global i32 0, align 4
@CURR_MCLK_INDEX_MASK = common dso_local global i32 0, align 4
@CURR_MCLK_INDEX_SHIFT = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_AUTO = common dso_local global i32 0, align 4
@PPSMC_MSG_PCIeDPM_UnForceLevel = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ci_dpm_force_performance_level(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ci_power_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %12)
  store %struct.ci_power_info* %13, %struct.ci_power_info** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_HIGH, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %195

17:                                               ; preds = %2
  %18 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %19 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %76, label %22

22:                                               ; preds = %17
  %23 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %24 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %29 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %30 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %37, %28
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %33

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %40
  %44 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ci_dpm_force_state_pcie(%struct.radeon_device* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %383

51:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX_1, align 4
  %60 = call i32 @RREG32_SMC(i32 %59)
  %61 = load i32, i32* @CURR_PCIE_INDEX_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @CURR_PCIE_INDEX_SHIFT, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %74

69:                                               ; preds = %58
  %70 = call i32 @udelay(i32 1)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %52

74:                                               ; preds = %68, %52
  br label %75

75:                                               ; preds = %74, %40
  br label %76

76:                                               ; preds = %75, %22, %17
  %77 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %78 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %135, label %81

81:                                               ; preds = %76
  %82 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %83 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %135

87:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  %88 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %89 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %96, %87
  %93 = load i32, i32* %7, align 4
  %94 = ashr i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %92

99:                                               ; preds = %92
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %99
  %103 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @ci_dpm_force_state_sclk(%struct.radeon_device* %103, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %383

110:                                              ; preds = %102
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %130, %110
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %111
  %118 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %119 = call i32 @RREG32_SMC(i32 %118)
  %120 = load i32, i32* @CURR_SCLK_INDEX_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @CURR_SCLK_INDEX_SHIFT, align 4
  %123 = ashr i32 %121, %122
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %133

128:                                              ; preds = %117
  %129 = call i32 @udelay(i32 1)
  br label %130

130:                                              ; preds = %128
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %111

133:                                              ; preds = %127, %111
  br label %134

134:                                              ; preds = %133, %99
  br label %135

135:                                              ; preds = %134, %81, %76
  %136 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %137 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %194, label %140

140:                                              ; preds = %135
  %141 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %142 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %194

146:                                              ; preds = %140
  store i32 0, i32* %8, align 4
  %147 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %148 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %155, %146
  %152 = load i32, i32* %7, align 4
  %153 = ashr i32 %152, 1
  store i32 %153, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %151

158:                                              ; preds = %151
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %193

161:                                              ; preds = %158
  %162 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @ci_dpm_force_state_mclk(%struct.radeon_device* %162, i32 %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %3, align 4
  br label %383

169:                                              ; preds = %161
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %189, %169
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %170
  %177 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %178 = call i32 @RREG32_SMC(i32 %177)
  %179 = load i32, i32* @CURR_MCLK_INDEX_MASK, align 4
  %180 = and i32 %178, %179
  %181 = load i32, i32* @CURR_MCLK_INDEX_SHIFT, align 4
  %182 = ashr i32 %180, %181
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  br label %192

187:                                              ; preds = %176
  %188 = call i32 @udelay(i32 1)
  br label %189

189:                                              ; preds = %187
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %170

192:                                              ; preds = %186, %170
  br label %193

193:                                              ; preds = %192, %158
  br label %194

194:                                              ; preds = %193, %140, %135
  br label %377

195:                                              ; preds = %2
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_LOW, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %347

199:                                              ; preds = %195
  %200 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %201 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %248, label %204

204:                                              ; preds = %199
  %205 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %206 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %248

210:                                              ; preds = %204
  %211 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %212 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %213 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @ci_get_lowest_enabled_level(%struct.radeon_device* %211, i32 %215)
  store i32 %216, i32* %8, align 4
  %217 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @ci_dpm_force_state_sclk(%struct.radeon_device* %217, i32 %218)
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %210
  %223 = load i32, i32* %10, align 4
  store i32 %223, i32* %3, align 4
  br label %383

224:                                              ; preds = %210
  store i32 0, i32* %9, align 4
  br label %225

225:                                              ; preds = %244, %224
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %247

231:                                              ; preds = %225
  %232 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %233 = call i32 @RREG32_SMC(i32 %232)
  %234 = load i32, i32* @CURR_SCLK_INDEX_MASK, align 4
  %235 = and i32 %233, %234
  %236 = load i32, i32* @CURR_SCLK_INDEX_SHIFT, align 4
  %237 = ashr i32 %235, %236
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %231
  br label %247

242:                                              ; preds = %231
  %243 = call i32 @udelay(i32 1)
  br label %244

244:                                              ; preds = %242
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %9, align 4
  br label %225

247:                                              ; preds = %241, %225
  br label %248

248:                                              ; preds = %247, %204, %199
  %249 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %250 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %297, label %253

253:                                              ; preds = %248
  %254 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %255 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %297

259:                                              ; preds = %253
  %260 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %261 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %262 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @ci_get_lowest_enabled_level(%struct.radeon_device* %260, i32 %264)
  store i32 %265, i32* %8, align 4
  %266 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %267 = load i32, i32* %8, align 4
  %268 = call i32 @ci_dpm_force_state_mclk(%struct.radeon_device* %266, i32 %267)
  store i32 %268, i32* %10, align 4
  %269 = load i32, i32* %10, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %259
  %272 = load i32, i32* %10, align 4
  store i32 %272, i32* %3, align 4
  br label %383

273:                                              ; preds = %259
  store i32 0, i32* %9, align 4
  br label %274

274:                                              ; preds = %293, %273
  %275 = load i32, i32* %9, align 4
  %276 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %277 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %296

280:                                              ; preds = %274
  %281 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %282 = call i32 @RREG32_SMC(i32 %281)
  %283 = load i32, i32* @CURR_MCLK_INDEX_MASK, align 4
  %284 = and i32 %282, %283
  %285 = load i32, i32* @CURR_MCLK_INDEX_SHIFT, align 4
  %286 = ashr i32 %284, %285
  store i32 %286, i32* %7, align 4
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* %8, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %280
  br label %296

291:                                              ; preds = %280
  %292 = call i32 @udelay(i32 1)
  br label %293

293:                                              ; preds = %291
  %294 = load i32, i32* %9, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %9, align 4
  br label %274

296:                                              ; preds = %290, %274
  br label %297

297:                                              ; preds = %296, %253, %248
  %298 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %299 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %346, label %302

302:                                              ; preds = %297
  %303 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %304 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %346

308:                                              ; preds = %302
  %309 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %310 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %311 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @ci_get_lowest_enabled_level(%struct.radeon_device* %309, i32 %313)
  store i32 %314, i32* %8, align 4
  %315 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %316 = load i32, i32* %8, align 4
  %317 = call i32 @ci_dpm_force_state_pcie(%struct.radeon_device* %315, i32 %316)
  store i32 %317, i32* %10, align 4
  %318 = load i32, i32* %10, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %308
  %321 = load i32, i32* %10, align 4
  store i32 %321, i32* %3, align 4
  br label %383

322:                                              ; preds = %308
  store i32 0, i32* %9, align 4
  br label %323

323:                                              ; preds = %342, %322
  %324 = load i32, i32* %9, align 4
  %325 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %326 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp slt i32 %324, %327
  br i1 %328, label %329, label %345

329:                                              ; preds = %323
  %330 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX_1, align 4
  %331 = call i32 @RREG32_SMC(i32 %330)
  %332 = load i32, i32* @CURR_PCIE_INDEX_MASK, align 4
  %333 = and i32 %331, %332
  %334 = load i32, i32* @CURR_PCIE_INDEX_SHIFT, align 4
  %335 = ashr i32 %333, %334
  store i32 %335, i32* %7, align 4
  %336 = load i32, i32* %7, align 4
  %337 = load i32, i32* %8, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %329
  br label %345

340:                                              ; preds = %329
  %341 = call i32 @udelay(i32 1)
  br label %342

342:                                              ; preds = %340
  %343 = load i32, i32* %9, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %9, align 4
  br label %323

345:                                              ; preds = %339, %323
  br label %346

346:                                              ; preds = %345, %302, %297
  br label %376

347:                                              ; preds = %195
  %348 = load i32, i32* %5, align 4
  %349 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_AUTO, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %375

351:                                              ; preds = %347
  %352 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %353 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %367, label %356

356:                                              ; preds = %351
  %357 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %358 = load i32, i32* @PPSMC_MSG_PCIeDPM_UnForceLevel, align 4
  %359 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %357, i32 %358)
  store i64 %359, i64* %11, align 8
  %360 = load i64, i64* %11, align 8
  %361 = load i64, i64* @PPSMC_Result_OK, align 8
  %362 = icmp ne i64 %360, %361
  br i1 %362, label %363, label %366

363:                                              ; preds = %356
  %364 = load i32, i32* @EINVAL, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %3, align 4
  br label %383

366:                                              ; preds = %356
  br label %367

367:                                              ; preds = %366, %351
  %368 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %369 = call i32 @ci_upload_dpm_level_enable_mask(%struct.radeon_device* %368)
  store i32 %369, i32* %10, align 4
  %370 = load i32, i32* %10, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %367
  %373 = load i32, i32* %10, align 4
  store i32 %373, i32* %3, align 4
  br label %383

374:                                              ; preds = %367
  br label %375

375:                                              ; preds = %374, %347
  br label %376

376:                                              ; preds = %375, %346
  br label %377

377:                                              ; preds = %376, %194
  %378 = load i32, i32* %5, align 4
  %379 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %380 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 0
  store i32 %378, i32* %382, align 4
  store i32 0, i32* %3, align 4
  br label %383

383:                                              ; preds = %377, %372, %363, %320, %271, %222, %167, %108, %49
  %384 = load i32, i32* %3, align 4
  ret i32 %384
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_dpm_force_state_pcie(%struct.radeon_device*, i32) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ci_dpm_force_state_sclk(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_dpm_force_state_mclk(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_get_lowest_enabled_level(%struct.radeon_device*, i32) #1

declare dso_local i64 @ci_send_msg_to_smc(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_upload_dpm_level_enable_mask(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
