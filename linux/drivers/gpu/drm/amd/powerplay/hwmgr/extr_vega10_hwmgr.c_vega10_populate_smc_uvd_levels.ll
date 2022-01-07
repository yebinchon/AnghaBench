; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_smc_uvd_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_smc_uvd_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table }
%struct.vega10_single_dpm_table = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32*, i32* }
%struct.phm_ppt_v2_information = type { %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_table = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NUM_UVD_DPM_LEVELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_populate_smc_uvd_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_populate_smc_uvd_levels(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.vega10_hwmgr*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.vega10_single_dpm_table*, align 8
  %7 = alloca %struct.vega10_single_dpm_table*, align 8
  %8 = alloca %struct.phm_ppt_v2_information*, align 8
  %9 = alloca %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %14, align 8
  store %struct.vega10_hwmgr* %15, %struct.vega10_hwmgr** %4, align 8
  %16 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %17 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %5, align 8
  %19 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %20 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store %struct.vega10_single_dpm_table* %21, %struct.vega10_single_dpm_table** %6, align 8
  %22 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %23 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store %struct.vega10_single_dpm_table* %24, %struct.vega10_single_dpm_table** %7, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %28, %struct.phm_ppt_v2_information** %8, align 8
  %29 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %8, align 8
  %30 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %29, i32 0, i32 0
  %31 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %30, align 8
  store %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %31, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %9, align 8
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %34

34:                                               ; preds = %60, %1
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %37 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %34
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %42 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %43 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = call i32 @vega10_populate_single_vclock_level(%struct.pp_hwmgr* %41, i64 %48, i32* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %2, align 4
  br label %231

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %34

63:                                               ; preds = %34
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %89, %63
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @NUM_UVD_DPM_LEVELS, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %72 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %73 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = call i32 @vega10_populate_single_vclock_level(%struct.pp_hwmgr* %71, i64 %78, i32* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %2, align 4
  br label %231

89:                                               ; preds = %70
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %11, align 8
  br label %66

92:                                               ; preds = %66
  store i64 0, i64* %11, align 8
  br label %93

93:                                               ; preds = %119, %92
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %96 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ult i64 %94, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %93
  %100 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %101 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %102 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = call i32 @vega10_populate_single_dclock_level(%struct.pp_hwmgr* %100, i64 %107, i32* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %99
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %2, align 4
  br label %231

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %11, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %11, align 8
  br label %93

122:                                              ; preds = %93
  %123 = load i64, i64* %11, align 8
  %124 = sub i64 %123, 1
  store i64 %124, i64* %12, align 8
  br label %125

125:                                              ; preds = %148, %122
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @NUM_UVD_DPM_LEVELS, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %151

129:                                              ; preds = %125
  %130 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %131 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %132 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %11, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = call i32 @vega10_populate_single_dclock_level(%struct.pp_hwmgr* %130, i64 %137, i32* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %129
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %2, align 4
  br label %231

148:                                              ; preds = %129
  %149 = load i64, i64* %11, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %11, align 8
  br label %125

151:                                              ; preds = %125
  store i64 0, i64* %11, align 8
  br label %152

152:                                              ; preds = %205, %151
  %153 = load i64, i64* %11, align 8
  %154 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %9, align 8
  %155 = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ult i64 %153, %156
  br i1 %157, label %158, label %208

158:                                              ; preds = %152
  %159 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %9, align 8
  %160 = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %159, i32 0, i32 1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = load i64, i64* %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %167 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %166, i32 0, i32 1
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %165, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %158
  %175 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %9, align 8
  %176 = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %175, i32 0, i32 1
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load i64, i64* %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %183 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %182, i32 0, i32 1
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i64, i64* %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %181, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %174
  %191 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %9, align 8
  %192 = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %191, i32 0, i32 1
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = load i64, i64* %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %11, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32 %197, i32* %202, align 4
  br label %204

203:                                              ; preds = %174, %158
  store i32 -1, i32* %2, align 4
  br label %231

204:                                              ; preds = %190
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %11, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %11, align 8
  br label %152

208:                                              ; preds = %152
  %209 = load i64, i64* %11, align 8
  %210 = sub i64 %209, 1
  store i64 %210, i64* %12, align 8
  br label %211

211:                                              ; preds = %215, %208
  %212 = load i64, i64* %11, align 8
  %213 = load i64, i64* @NUM_UVD_DPM_LEVELS, align 8
  %214 = icmp ult i64 %212, %213
  br i1 %214, label %215, label %230

215:                                              ; preds = %211
  %216 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %9, align 8
  %217 = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %216, i32 0, i32 1
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = load i64, i64* %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %11, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32 %222, i32* %227, align 4
  %228 = load i64, i64* %11, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %11, align 8
  br label %211

230:                                              ; preds = %211
  store i32 0, i32* %2, align 4
  br label %231

231:                                              ; preds = %230, %203, %146, %116, %87, %57
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32 @vega10_populate_single_vclock_level(%struct.pp_hwmgr*, i64, i32*) #1

declare dso_local i32 @vega10_populate_single_dclock_level(%struct.pp_hwmgr*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
