; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_common_set_clockgating_state_by_smu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_common_set_clockgating_state_by_smu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@AMD_CG_SUPPORT_MC_LS = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_MC_MGCG = common dso_local global i32 0, align 4
@PP_STATE_SUPPORT_LS = common dso_local global i32 0, align 4
@PP_STATE_LS = common dso_local global i32 0, align 4
@PP_STATE_SUPPORT_CG = common dso_local global i32 0, align 4
@PP_STATE_CG = common dso_local global i32 0, align 4
@AMD_CG_STATE_UNGATE = common dso_local global i32 0, align 4
@PP_GROUP_SYS = common dso_local global i32 0, align 4
@PP_BLOCK_SYS_MC = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_SDMA_LS = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_SDMA_MGCG = common dso_local global i32 0, align 4
@PP_BLOCK_SYS_SDMA = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_LS = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_MGCG = common dso_local global i32 0, align 4
@PP_BLOCK_SYS_HDP = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_BIF_LS = common dso_local global i32 0, align 4
@PP_BLOCK_SYS_BIF = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_BIF_MGCG = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_DRM_LS = common dso_local global i32 0, align 4
@PP_BLOCK_SYS_DRM = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_ROM_MGCG = common dso_local global i32 0, align 4
@PP_BLOCK_SYS_ROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @vi_common_set_clockgating_state_by_smu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vi_common_set_clockgating_state_by_smu(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %8, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AMD_CG_SUPPORT_MC_LS, align 4
  %15 = load i32, i32* @AMD_CG_SUPPORT_MC_MGCG, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %2
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AMD_CG_SUPPORT_MC_LS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @PP_STATE_LS, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AMD_CG_SUPPORT_MC_MGCG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @PP_STATE_CG, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %36, %29
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32, i32* @PP_GROUP_SYS, align 4
  %50 = load i32, i32* @PP_BLOCK_SYS_MC, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @PP_CG_MSG_ID(i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @amdgpu_dpm_set_clockgating_by_smu(%struct.amdgpu_device* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %48
  br label %66

66:                                               ; preds = %65, %2
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AMD_CG_SUPPORT_SDMA_LS, align 4
  %71 = load i32, i32* @AMD_CG_SUPPORT_SDMA_MGCG, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %122

75:                                               ; preds = %66
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @AMD_CG_SUPPORT_SDMA_LS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* @PP_STATE_LS, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %82, %75
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @AMD_CG_SUPPORT_SDMA_MGCG, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* @PP_STATE_CG, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %92, %85
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %99
  %105 = load i32, i32* @PP_GROUP_SYS, align 4
  %106 = load i32, i32* @PP_BLOCK_SYS_SDMA, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @PP_CG_MSG_ID(i32 %105, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %104
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @amdgpu_dpm_set_clockgating_by_smu(%struct.amdgpu_device* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %104
  br label %122

122:                                              ; preds = %121, %66
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @AMD_CG_SUPPORT_HDP_LS, align 4
  %127 = load i32, i32* @AMD_CG_SUPPORT_HDP_MGCG, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %178

131:                                              ; preds = %122
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @AMD_CG_SUPPORT_HDP_LS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* @PP_STATE_LS, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %138, %131
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %143 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @AMD_CG_SUPPORT_HDP_MGCG, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* @PP_STATE_CG, align 4
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %148, %141
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %159, %155
  %161 = load i32, i32* @PP_GROUP_SYS, align 4
  %162 = load i32, i32* @PP_BLOCK_SYS_HDP, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @PP_CG_MSG_ID(i32 %161, i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %5, align 4
  %166 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %167 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %160
  %174 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @amdgpu_dpm_set_clockgating_by_smu(%struct.amdgpu_device* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %160
  br label %178

178:                                              ; preds = %177, %122
  %179 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %180 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @AMD_CG_SUPPORT_BIF_LS, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %210

185:                                              ; preds = %178
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  store i32 0, i32* %6, align 4
  br label %192

190:                                              ; preds = %185
  %191 = load i32, i32* @PP_STATE_LS, align 4
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %190, %189
  %193 = load i32, i32* @PP_GROUP_SYS, align 4
  %194 = load i32, i32* @PP_BLOCK_SYS_BIF, align 4
  %195 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @PP_CG_MSG_ID(i32 %193, i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %5, align 4
  %198 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %199 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %192
  %206 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %207 = load i32, i32* %5, align 4
  %208 = call i32 @amdgpu_dpm_set_clockgating_by_smu(%struct.amdgpu_device* %206, i32 %207)
  br label %209

209:                                              ; preds = %205, %192
  br label %210

210:                                              ; preds = %209, %178
  %211 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %212 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @AMD_CG_SUPPORT_BIF_MGCG, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %242

217:                                              ; preds = %210
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  store i32 0, i32* %6, align 4
  br label %224

222:                                              ; preds = %217
  %223 = load i32, i32* @PP_STATE_CG, align 4
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %222, %221
  %225 = load i32, i32* @PP_GROUP_SYS, align 4
  %226 = load i32, i32* @PP_BLOCK_SYS_BIF, align 4
  %227 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %228 = load i32, i32* %6, align 4
  %229 = call i32 @PP_CG_MSG_ID(i32 %225, i32 %226, i32 %227, i32 %228)
  store i32 %229, i32* %5, align 4
  %230 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %231 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %224
  %238 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %239 = load i32, i32* %5, align 4
  %240 = call i32 @amdgpu_dpm_set_clockgating_by_smu(%struct.amdgpu_device* %238, i32 %239)
  br label %241

241:                                              ; preds = %237, %224
  br label %242

242:                                              ; preds = %241, %210
  %243 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %244 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @AMD_CG_SUPPORT_DRM_LS, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %274

249:                                              ; preds = %242
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  store i32 0, i32* %6, align 4
  br label %256

254:                                              ; preds = %249
  %255 = load i32, i32* @PP_STATE_LS, align 4
  store i32 %255, i32* %6, align 4
  br label %256

256:                                              ; preds = %254, %253
  %257 = load i32, i32* @PP_GROUP_SYS, align 4
  %258 = load i32, i32* @PP_BLOCK_SYS_DRM, align 4
  %259 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  %260 = load i32, i32* %6, align 4
  %261 = call i32 @PP_CG_MSG_ID(i32 %257, i32 %258, i32 %259, i32 %260)
  store i32 %261, i32* %5, align 4
  %262 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %263 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %256
  %270 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %271 = load i32, i32* %5, align 4
  %272 = call i32 @amdgpu_dpm_set_clockgating_by_smu(%struct.amdgpu_device* %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %256
  br label %274

274:                                              ; preds = %273, %242
  %275 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %276 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @AMD_CG_SUPPORT_ROM_MGCG, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %306

281:                                              ; preds = %274
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  store i32 0, i32* %6, align 4
  br label %288

286:                                              ; preds = %281
  %287 = load i32, i32* @PP_STATE_CG, align 4
  store i32 %287, i32* %6, align 4
  br label %288

288:                                              ; preds = %286, %285
  %289 = load i32, i32* @PP_GROUP_SYS, align 4
  %290 = load i32, i32* @PP_BLOCK_SYS_ROM, align 4
  %291 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %292 = load i32, i32* %6, align 4
  %293 = call i32 @PP_CG_MSG_ID(i32 %289, i32 %290, i32 %291, i32 %292)
  store i32 %293, i32* %5, align 4
  %294 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %295 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %288
  %302 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %303 = load i32, i32* %5, align 4
  %304 = call i32 @amdgpu_dpm_set_clockgating_by_smu(%struct.amdgpu_device* %302, i32 %303)
  br label %305

305:                                              ; preds = %301, %288
  br label %306

306:                                              ; preds = %305, %274
  ret i32 0
}

declare dso_local i32 @PP_CG_MSG_ID(i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_dpm_set_clockgating_by_smu(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
