; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_power_containment_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_power_containment_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%struct.rv7xx_power_info = type { i32, i64 }
%struct.evergreen_power_info = type { i64 }
%struct.ni_power_info = type { i32 }
%struct.ni_ps = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NISLANDS_SMC_STATETABLE = common dso_local global i32 0, align 4
@dpm2Params = common dso_local global i32 0, align 4
@PP_NIslands_DPM2Parameters = common dso_local global i32 0, align 4
@PowerBoostLimit = common dso_local global i32 0, align 4
@PPSMC_STATEFLAG_POWERBOOST = common dso_local global i32 0, align 4
@NISLANDS_DPM2_MAXPS_PERCENT_M = common dso_local global i64 0, align 8
@NISLANDS_DPM2_MAXPS_PERCENT_H = common dso_local global i64 0, align 8
@NISLANDS_DPM2_MAX_PULSE_SKIP = common dso_local global i32 0, align 4
@NISLANDS_DPM2_NEAR_TDP_DEC = common dso_local global i32 0, align 4
@NISLANDS_DPM2_ABOVE_SAFE_INC = common dso_local global i32 0, align 4
@NISLANDS_DPM2_BELOW_SAFE_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_13__*)* @ni_populate_power_containment_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_populate_power_containment_values(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.evergreen_power_info*, align 8
  %10 = alloca %struct.ni_power_info*, align 8
  %11 = alloca %struct.ni_ps*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %22 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %21)
  store %struct.rv7xx_power_info* %22, %struct.rv7xx_power_info** %8, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %24 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %23)
  store %struct.evergreen_power_info* %24, %struct.evergreen_power_info** %9, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %26 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %25)
  store %struct.ni_power_info* %26, %struct.ni_power_info** %10, align 8
  %27 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %28 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %27)
  store %struct.ni_ps* %28, %struct.ni_ps** %11, align 8
  %29 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %30 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %293

34:                                               ; preds = %3
  %35 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %36 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %293

42:                                               ; preds = %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %47 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %293

53:                                               ; preds = %42
  %54 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %55 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ni_calculate_adjusted_tdp_limits(%struct.radeon_device* %54, i32 0, i32 %59, i32* %17, i32* %18)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %4, align 4
  br label %293

65:                                               ; preds = %53
  %66 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %67 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @ni_calculate_power_boost_limit(%struct.radeon_device* %66, %struct.radeon_ps* %67, i32 %68)
  store i32 %69, i32* %19, align 4
  %70 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %71 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %72 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @NISLANDS_SMC_STATETABLE, align 4
  %75 = load i32, i32* @dpm2Params, align 4
  %76 = call i64 @offsetof(i32 %74, i32 %75)
  %77 = add nsw i64 %73, %76
  %78 = load i32, i32* @PP_NIslands_DPM2Parameters, align 4
  %79 = load i32, i32* @PowerBoostLimit, align 4
  %80 = call i64 @offsetof(i32 %78, i32 %79)
  %81 = add nsw i64 %77, %80
  %82 = load i32, i32* %19, align 4
  %83 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %84 = call i32 @ni_get_smc_power_scaling_factor(%struct.radeon_device* %83)
  %85 = call i32 @ni_scale_power_for_smc(i32 %82, i32 %84)
  %86 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %87 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @rv770_write_smc_sram_dword(%struct.radeon_device* %70, i64 %81, i32 %85, i32 %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %65
  store i32 0, i32* %19, align 4
  br label %93

93:                                               ; preds = %92, %65
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  store i32 0, i32* %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load i32, i32* %19, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %93
  %121 = load i32, i32* @PPSMC_STATEFLAG_POWERBOOST, align 4
  br label %123

122:                                              ; preds = %93
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ]
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %124
  store i32 %131, i32* %129, align 8
  store i32 1, i32* %15, align 4
  br label %132

132:                                              ; preds = %289, %123
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %135 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %292

138:                                              ; preds = %132
  %139 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %140 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %12, align 4
  %148 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %149 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %148, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %158 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %159, 1
  %161 = icmp ne i32 %156, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %138
  %163 = load i64, i64* @NISLANDS_DPM2_MAXPS_PERCENT_M, align 8
  br label %166

164:                                              ; preds = %138
  %165 = load i64, i64* @NISLANDS_DPM2_MAXPS_PERCENT_H, align 8
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i64 [ %163, %162 ], [ %165, %164 ]
  store i64 %167, i64* %20, align 8
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %293

174:                                              ; preds = %166
  %175 = load i64, i64* %20, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %186, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %186, label %181

181:                                              ; preds = %177
  %182 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %183 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181, %177, %174
  %187 = load i32, i32* %13, align 4
  store i32 %187, i32* %14, align 4
  br label %200

188:                                              ; preds = %181
  %189 = load i32, i32* %15, align 4
  %190 = icmp eq i32 1, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %14, align 4
  br label %199

193:                                              ; preds = %188
  %194 = load i32, i32* %12, align 4
  %195 = load i64, i64* %20, align 8
  %196 = trunc i64 %195 to i32
  %197 = mul nsw i32 %194, %196
  %198 = sdiv i32 %197, 100
  store i32 %198, i32* %14, align 4
  br label %199

199:                                              ; preds = %193, %191
  br label %200

200:                                              ; preds = %199, %186
  %201 = load i32, i32* %14, align 4
  %202 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %203 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %202, i32 0, i32 1
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %201, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %200
  %210 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %211 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %210, i32 0, i32 1
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %14, align 4
  br label %216

216:                                              ; preds = %209, %200
  %217 = load i32, i32* %14, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %4, align 4
  br label %293

222:                                              ; preds = %216
  %223 = load i32, i32* @NISLANDS_DPM2_MAX_PULSE_SKIP, align 4
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %14, align 4
  %226 = sub nsw i32 %224, %225
  %227 = mul nsw i32 %223, %226
  %228 = load i32, i32* %13, align 4
  %229 = sdiv i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 3
  store i64 %230, i64* %238, align 8
  %239 = load i32, i32* @NISLANDS_DPM2_NEAR_TDP_DEC, align 4
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 2
  store i32 %239, i32* %247, align 8
  %248 = load i32, i32* @NISLANDS_DPM2_ABOVE_SAFE_INC, align 4
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = load i32, i32* %15, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  store i32 %248, i32* %256, align 4
  %257 = load i32, i32* @NISLANDS_DPM2_BELOW_SAFE_INC, align 4
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 0
  store i32 %257, i32* %265, align 8
  %266 = load i32, i32* %15, align 4
  %267 = load %struct.ni_ps*, %struct.ni_ps** %11, align 8
  %268 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sub nsw i32 %269, 1
  %271 = icmp ne i32 %266, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %222
  %273 = load i32, i32* %19, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i32, i32* @PPSMC_STATEFLAG_POWERBOOST, align 4
  br label %278

277:                                              ; preds = %272, %222
  br label %278

278:                                              ; preds = %277, %275
  %279 = phi i32 [ %276, %275 ], [ 0, %277 ]
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %281, align 8
  %283 = load i32, i32* %15, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %279
  store i32 %288, i32* %286, align 8
  br label %289

289:                                              ; preds = %278
  %290 = load i32, i32* %15, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %15, align 4
  br label %132

292:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %293

293:                                              ; preds = %292, %219, %171, %63, %50, %39, %33
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @ni_calculate_adjusted_tdp_limits(%struct.radeon_device*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ni_calculate_power_boost_limit(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @rv770_write_smc_sram_dword(%struct.radeon_device*, i64, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @ni_scale_power_for_smc(i32, i32) #1

declare dso_local i32 @ni_get_smc_power_scaling_factor(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
