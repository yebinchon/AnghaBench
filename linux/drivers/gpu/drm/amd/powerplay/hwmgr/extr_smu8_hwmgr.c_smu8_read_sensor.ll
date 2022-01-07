; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_5__, %struct.smu8_hwmgr* }
%struct.TYPE_5__ = type { %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_vce_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table* }
%struct.phm_uvd_clock_voltage_dependency_table = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.phm_vce_clock_voltage_dependency_table = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.phm_clock_voltage_dependency_table = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.smu8_hwmgr = type { i32, i32 }

@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@ixTARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@TARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@CURR_SCLK_INDEX = common dso_local global i32 0, align 4
@ixTARGET_AND_CURRENT_PROFILE_INDEX_2 = common dso_local global i32 0, align 4
@TARGET_AND_CURRENT_PROFILE_INDEX_2 = common dso_local global i32 0, align 4
@CURR_UVD_INDEX = common dso_local global i32 0, align 4
@CURR_VCE_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NUM_SCLK_LEVELS = common dso_local global i64 0, align 8
@ixSMUSVI_NB_CURRENTVID = common dso_local global i32 0, align 4
@CURRENT_NB_VID_MASK = common dso_local global i64 0, align 8
@CURRENT_NB_VID__SHIFT = common dso_local global i64 0, align 8
@ixSMUSVI_GFX_CURRENTVID = common dso_local global i32 0, align 4
@CURRENT_GFX_VID_MASK = common dso_local global i64 0, align 8
@CURRENT_GFX_VID__SHIFT = common dso_local global i64 0, align 8
@SMU8_MAX_HARDWARE_POWERLEVELS = common dso_local global i64 0, align 8
@PPSMC_MSG_GetAverageGraphicsActivity = common dso_local global i32 0, align 4
@mmSMU_MP1_SRBM2P_ARG_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i8*, i32*)* @smu8_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_read_sensor(%struct.pp_hwmgr* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.smu8_hwmgr*, align 8
  %11 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  %12 = alloca %struct.phm_vce_clock_voltage_dependency_table*, align 8
  %13 = alloca %struct.phm_uvd_clock_voltage_dependency_table*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 2
  %28 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %27, align 8
  store %struct.smu8_hwmgr* %28, %struct.smu8_hwmgr** %10, align 8
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %31, align 8
  store %struct.phm_clock_voltage_dependency_table* %32, %struct.phm_clock_voltage_dependency_table** %11, align 8
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load %struct.phm_vce_clock_voltage_dependency_table*, %struct.phm_vce_clock_voltage_dependency_table** %35, align 8
  store %struct.phm_vce_clock_voltage_dependency_table* %36, %struct.phm_vce_clock_voltage_dependency_table** %12, align 8
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %38 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %39, align 8
  store %struct.phm_uvd_clock_voltage_dependency_table* %40, %struct.phm_uvd_clock_voltage_dependency_table** %13, align 8
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %42 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %45 = load i32, i32* @ixTARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %46 = call i64 @cgs_read_ind_register(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %48 = load i32, i32* @CURR_SCLK_INDEX, align 4
  %49 = call i64 @PHM_GET_FIELD(i64 %46, i32 %47, i32 %48)
  store i64 %49, i64* %14, align 8
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %51 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %54 = load i32, i32* @ixTARGET_AND_CURRENT_PROFILE_INDEX_2, align 4
  %55 = call i64 @cgs_read_ind_register(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX_2, align 4
  %57 = load i32, i32* @CURR_UVD_INDEX, align 4
  %58 = call i64 @PHM_GET_FIELD(i64 %55, i32 %56, i32 %57)
  store i64 %58, i64* %15, align 8
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %60 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %63 = load i32, i32* @ixTARGET_AND_CURRENT_PROFILE_INDEX_2, align 4
  %64 = call i64 @cgs_read_ind_register(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX_2, align 4
  %66 = load i32, i32* @CURR_VCE_INDEX, align 4
  %67 = call i64 @PHM_GET_FIELD(i64 %64, i32 %65, i32 %66)
  store i64 %67, i64* %16, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %74

71:                                               ; preds = %4
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %263

74:                                               ; preds = %4
  %75 = load i32*, i32** %9, align 8
  store i32 4, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  switch i32 %76, label %260 [
    i32 137, label %77
    i32 128, label %95
    i32 129, label %114
    i32 132, label %133
    i32 134, label %159
    i32 131, label %185
    i32 136, label %211
    i32 133, label %235
    i32 130, label %245
    i32 135, label %255
  ]

77:                                               ; preds = %74
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* @NUM_SCLK_LEVELS, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %11, align 8
  %83 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %17, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = bitcast i8* %90 to i64*
  store i64 %89, i64* %91, align 8
  store i32 0, i32* %5, align 4
  br label %263

92:                                               ; preds = %77
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %263

95:                                               ; preds = %74
  %96 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %97 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %100 = load i32, i32* @ixSMUSVI_NB_CURRENTVID, align 4
  %101 = call i64 @cgs_read_ind_register(i32 %98, i32 %99, i32 %100)
  %102 = load i64, i64* @CURRENT_NB_VID_MASK, align 8
  %103 = and i64 %101, %102
  %104 = load i64, i64* @CURRENT_NB_VID__SHIFT, align 8
  %105 = lshr i64 %103, %104
  store i64 %105, i64* %21, align 8
  %106 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %107 = load i64, i64* %21, align 8
  %108 = call i32 @smu8_convert_8Bit_index_to_voltage(%struct.pp_hwmgr* %106, i64 %107)
  %109 = sdiv i32 %108, 4
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %23, align 8
  %111 = load i64, i64* %23, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = bitcast i8* %112 to i64*
  store i64 %111, i64* %113, align 8
  store i32 0, i32* %5, align 4
  br label %263

114:                                              ; preds = %74
  %115 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %116 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %119 = load i32, i32* @ixSMUSVI_GFX_CURRENTVID, align 4
  %120 = call i64 @cgs_read_ind_register(i32 %117, i32 %118, i32 %119)
  %121 = load i64, i64* @CURRENT_GFX_VID_MASK, align 8
  %122 = and i64 %120, %121
  %123 = load i64, i64* @CURRENT_GFX_VID__SHIFT, align 8
  %124 = lshr i64 %122, %123
  store i64 %124, i64* %21, align 8
  %125 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %126 = load i64, i64* %21, align 8
  %127 = call i32 @smu8_convert_8Bit_index_to_voltage(%struct.pp_hwmgr* %125, i64 %126)
  %128 = sdiv i32 %127, 4
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %24, align 8
  %130 = load i64, i64* %24, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = bitcast i8* %131 to i64*
  store i64 %130, i64* %132, align 8
  store i32 0, i32* %5, align 4
  br label %263

133:                                              ; preds = %74
  %134 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %10, align 8
  %135 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %156, label %138

138:                                              ; preds = %133
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* @SMU8_MAX_HARDWARE_POWERLEVELS, align 8
  %141 = icmp uge i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %263

145:                                              ; preds = %138
  %146 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %13, align 8
  %147 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %146, i32 0, i32 0
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load i64, i64* %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %18, align 8
  %153 = load i64, i64* %18, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = bitcast i8* %154 to i64*
  store i64 %153, i64* %155, align 8
  store i32 0, i32* %5, align 4
  br label %263

156:                                              ; preds = %133
  %157 = load i8*, i8** %8, align 8
  %158 = bitcast i8* %157 to i64*
  store i64 0, i64* %158, align 8
  store i32 0, i32* %5, align 4
  br label %263

159:                                              ; preds = %74
  %160 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %10, align 8
  %161 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %182, label %164

164:                                              ; preds = %159
  %165 = load i64, i64* %15, align 8
  %166 = load i64, i64* @SMU8_MAX_HARDWARE_POWERLEVELS, align 8
  %167 = icmp uge i64 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %5, align 4
  br label %263

171:                                              ; preds = %164
  %172 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %13, align 8
  %173 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %172, i32 0, i32 0
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = load i64, i64* %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %19, align 8
  %179 = load i64, i64* %19, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = bitcast i8* %180 to i64*
  store i64 %179, i64* %181, align 8
  store i32 0, i32* %5, align 4
  br label %263

182:                                              ; preds = %159
  %183 = load i8*, i8** %8, align 8
  %184 = bitcast i8* %183 to i64*
  store i64 0, i64* %184, align 8
  store i32 0, i32* %5, align 4
  br label %263

185:                                              ; preds = %74
  %186 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %10, align 8
  %187 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %208, label %190

190:                                              ; preds = %185
  %191 = load i64, i64* %16, align 8
  %192 = load i64, i64* @SMU8_MAX_HARDWARE_POWERLEVELS, align 8
  %193 = icmp uge i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %5, align 4
  br label %263

197:                                              ; preds = %190
  %198 = load %struct.phm_vce_clock_voltage_dependency_table*, %struct.phm_vce_clock_voltage_dependency_table** %12, align 8
  %199 = getelementptr inbounds %struct.phm_vce_clock_voltage_dependency_table, %struct.phm_vce_clock_voltage_dependency_table* %198, i32 0, i32 0
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load i64, i64* %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %20, align 8
  %205 = load i64, i64* %20, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = bitcast i8* %206 to i64*
  store i64 %205, i64* %207, align 8
  store i32 0, i32* %5, align 4
  br label %263

208:                                              ; preds = %185
  %209 = load i8*, i8** %8, align 8
  %210 = bitcast i8* %209 to i64*
  store i64 0, i64* %210, align 8
  store i32 0, i32* %5, align 4
  br label %263

211:                                              ; preds = %74
  %212 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %213 = load i32, i32* @PPSMC_MSG_GetAverageGraphicsActivity, align 4
  %214 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %212, i32 %213)
  store i32 %214, i32* %25, align 4
  %215 = load i32, i32* %25, align 4
  %216 = icmp eq i32 0, %215
  br i1 %216, label %217, label %230

217:                                              ; preds = %211
  %218 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %219 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @mmSMU_MP1_SRBM2P_ARG_0, align 4
  %222 = call i64 @cgs_read_register(i32 %220, i32 %221)
  store i64 %222, i64* %22, align 8
  %223 = load i64, i64* %22, align 8
  %224 = icmp ugt i64 %223, 100
  br i1 %224, label %225, label %226

225:                                              ; preds = %217
  br label %228

226:                                              ; preds = %217
  %227 = load i64, i64* %22, align 8
  br label %228

228:                                              ; preds = %226, %225
  %229 = phi i64 [ 100, %225 ], [ %227, %226 ]
  store i64 %229, i64* %22, align 8
  br label %231

230:                                              ; preds = %211
  store i64 50, i64* %22, align 8
  br label %231

231:                                              ; preds = %230, %228
  %232 = load i64, i64* %22, align 8
  %233 = load i8*, i8** %8, align 8
  %234 = bitcast i8* %233 to i64*
  store i64 %232, i64* %234, align 8
  store i32 0, i32* %5, align 4
  br label %263

235:                                              ; preds = %74
  %236 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %10, align 8
  %237 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 0, i32 1
  %242 = sext i32 %241 to i64
  %243 = load i8*, i8** %8, align 8
  %244 = bitcast i8* %243 to i64*
  store i64 %242, i64* %244, align 8
  store i32 0, i32* %5, align 4
  br label %263

245:                                              ; preds = %74
  %246 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %10, align 8
  %247 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32 0, i32 1
  %252 = sext i32 %251 to i64
  %253 = load i8*, i8** %8, align 8
  %254 = bitcast i8* %253 to i64*
  store i64 %252, i64* %254, align 8
  store i32 0, i32* %5, align 4
  br label %263

255:                                              ; preds = %74
  %256 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %257 = call i64 @smu8_thermal_get_temperature(%struct.pp_hwmgr* %256)
  %258 = load i8*, i8** %8, align 8
  %259 = bitcast i8* %258 to i64*
  store i64 %257, i64* %259, align 8
  store i32 0, i32* %5, align 4
  br label %263

260:                                              ; preds = %74
  %261 = load i32, i32* @EINVAL, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %5, align 4
  br label %263

263:                                              ; preds = %260, %255, %245, %235, %231, %208, %197, %194, %182, %171, %168, %156, %145, %142, %114, %95, %92, %81, %71
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

declare dso_local i64 @PHM_GET_FIELD(i64, i32, i32) #1

declare dso_local i64 @cgs_read_ind_register(i32, i32, i32) #1

declare dso_local i32 @smu8_convert_8Bit_index_to_voltage(%struct.pp_hwmgr*, i64) #1

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i64 @cgs_read_register(i32, i32) #1

declare dso_local i64 @smu8_thermal_get_temperature(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
