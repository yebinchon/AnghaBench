; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_profiling_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_profiling_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i32, i32, i64, %struct.TYPE_19__, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.smu7_hwmgr = type { %struct.TYPE_13__, %struct.smu7_dpm_table }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.smu7_dpm_table = type { %struct.TYPE_22__, %struct.TYPE_15__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.phm_ppt_v1_information = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PP_TABLE_V0 = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i32 0, align 4
@PP_TABLE_V1 = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32*, i32*, i32*)* @smu7_get_profiling_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_profiling_clk(%struct.pp_hwmgr* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_hwmgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.smu7_hwmgr*, align 8
  %14 = alloca %struct.smu7_dpm_table*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %22, %struct.smu7_hwmgr** %13, align 8
  %23 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  %24 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %23, i32 0, i32 1
  store %struct.smu7_dpm_table* %24, %struct.smu7_dpm_table** %14, align 8
  %25 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %26 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %305

33:                                               ; preds = %5
  %34 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %35 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %39 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 100, %46
  %48 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %49 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %53 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %47, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %63 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %87

67:                                               ; preds = %33
  store i32 70, i32* %12, align 4
  %68 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %69 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %73 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %15, align 4
  %81 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %82 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  %86 = load i32*, i32** %10, align 8
  store i32 %85, i32* %86, align 4
  br label %107

87:                                               ; preds = %33
  %88 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %89 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %93 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %15, align 4
  %101 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %102 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 2
  %106 = load i32*, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %87, %67
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %12, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sdiv i32 %110, 100
  store i32 %111, i32* %16, align 4
  %112 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %113 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @PP_TABLE_V0, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %192

117:                                              ; preds = %107
  %118 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %119 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %157, %117
  %126 = load i32, i32* %17, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %160

128:                                              ; preds = %125
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %131 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp sge i32 %129, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %128
  %143 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %144 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = load i32, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load i32*, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  br label %160

156:                                              ; preds = %128
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %17, align 4
  br label %125

160:                                              ; preds = %142, %125
  %161 = load i32, i32* %17, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %163, %160
  %168 = load i32*, i32** %9, align 8
  store i32 0, i32* %168, align 4
  %169 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %170 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %16, align 4
  br label %178

178:                                              ; preds = %167, %163
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %184 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  %190 = load i32*, i32** %9, align 8
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %182, %178
  br label %273

192:                                              ; preds = %107
  %193 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %194 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @PP_TABLE_V1, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %272

198:                                              ; preds = %192
  %199 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %200 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %202, %struct.phm_ppt_v1_information** %18, align 8
  %203 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %18, align 8
  %204 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %203, i32 0, i32 0
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 %207, 1
  store i32 %208, i32* %17, align 4
  br label %209

209:                                              ; preds = %239, %198
  %210 = load i32, i32* %17, align 4
  %211 = icmp sge i32 %210, 0
  br i1 %211, label %212, label %242

212:                                              ; preds = %209
  %213 = load i32, i32* %16, align 4
  %214 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %18, align 8
  %215 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %214, i32 0, i32 0
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %217, align 8
  %219 = load i32, i32* %17, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp sge i32 %213, %223
  br i1 %224, label %225, label %238

225:                                              ; preds = %212
  %226 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %18, align 8
  %227 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %226, i32 0, i32 0
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %229, align 8
  %231 = load i32, i32* %17, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %16, align 4
  %236 = load i32, i32* %17, align 4
  %237 = load i32*, i32** %9, align 8
  store i32 %236, i32* %237, align 4
  br label %242

238:                                              ; preds = %212
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %17, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %17, align 4
  br label %209

242:                                              ; preds = %225, %209
  %243 = load i32, i32* %17, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %259

249:                                              ; preds = %245, %242
  %250 = load i32*, i32** %9, align 8
  store i32 0, i32* %250, align 4
  %251 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %18, align 8
  %252 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %251, i32 0, i32 0
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i64 0
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %16, align 4
  br label %259

259:                                              ; preds = %249, %245
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %271

263:                                              ; preds = %259
  %264 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %18, align 8
  %265 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %264, i32 0, i32 0
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sub nsw i32 %268, 1
  %270 = load i32*, i32** %9, align 8
  store i32 %269, i32* %270, align 4
  br label %271

271:                                              ; preds = %263, %259
  br label %272

272:                                              ; preds = %271, %192
  br label %273

273:                                              ; preds = %272, %191
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %273
  %278 = load i32*, i32** %10, align 8
  store i32 0, i32* %278, align 4
  br label %291

279:                                              ; preds = %273
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %279
  %284 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %14, align 8
  %285 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sub nsw i32 %287, 1
  %289 = load i32*, i32** %10, align 8
  store i32 %288, i32* %289, align 4
  br label %290

290:                                              ; preds = %283, %279
  br label %291

291:                                              ; preds = %290, %277
  %292 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  %293 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = sub nsw i32 %296, 1
  %298 = load i32*, i32** %11, align 8
  store i32 %297, i32* %298, align 4
  %299 = load i32, i32* %16, align 4
  %300 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %301 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 8
  %302 = load i32, i32* %15, align 4
  %303 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %304 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 4
  store i32 0, i32* %6, align 4
  br label %305

305:                                              ; preds = %291, %30
  %306 = load i32, i32* %6, align 4
  ret i32 %306
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
