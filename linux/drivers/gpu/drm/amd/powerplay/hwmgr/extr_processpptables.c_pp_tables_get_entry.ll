; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_pp_tables_get_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_pp_tables_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.pp_hwmgr*, i32*)* }
%struct.pp_power_state = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32, i64* }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32, i32* }

@PP_StateClassificationFlag_Boot = common dso_local global i32 0, align 4
@AMDGPU_FAMILY_RV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_tables_get_entry(%struct.pp_hwmgr* %0, i64 %1, %struct.pp_power_state* %2, i32 (%struct.pp_hwmgr*, i32*, i32, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pp_power_state*, align 8
  %9 = alloca i32 (%struct.pp_hwmgr*, i32*, i32, i8*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.pp_power_state* %2, %struct.pp_power_state** %8, align 8
  store i32 (%struct.pp_hwmgr*, i32*, i32, i8*)* %3, i32 (%struct.pp_hwmgr*, i32*, i32, i8*)** %9, align 8
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %24 = call %struct.TYPE_21__* @get_powerplay_table(%struct.pp_hwmgr* %23)
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %26 = icmp eq %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %260

28:                                               ; preds = %4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %31 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 6
  br i1 %37, label %38, label %135

38:                                               ; preds = %28
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %40 = ptrtoint %struct.TYPE_21__* %39 to i64
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @le16_to_cpu(i32 %43)
  %45 = add i64 %40, %44
  %46 = inttoptr i64 %45 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %11, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ugt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %260

53:                                               ; preds = %38
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call %struct.TYPE_19__* @get_state_entry_v2(%struct.TYPE_16__* %54, i64 %55)
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %12, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %58 = ptrtoint %struct.TYPE_21__* %57 to i64
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @le16_to_cpu(i32 %61)
  %63 = add i64 %58, %62
  %64 = inttoptr i64 %63 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %17, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %66 = ptrtoint %struct.TYPE_21__* %65 to i64
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le16_to_cpu(i32 %69)
  %71 = add i64 %66, %70
  %72 = inttoptr i64 %71 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %18, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = mul i64 %78, %81
  %83 = add i64 %75, %82
  %84 = inttoptr i64 %83 to i32*
  store i32* %84, i32** %13, align 8
  %85 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %86 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @init_non_clock_fields(%struct.pp_hwmgr* %85, %struct.pp_power_state* %86, i32 %90, i32* %91)
  store i32 %92, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %131, %53
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %134

99:                                               ; preds = %93
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 2
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = mul i64 %109, %112
  %114 = add i64 %102, %113
  %115 = inttoptr i64 %114 to i8*
  store i8* %115, i8** %20, align 8
  %116 = load i32 (%struct.pp_hwmgr*, i32*, i32, i8*)*, i32 (%struct.pp_hwmgr*, i32*, i32, i8*)** %9, align 8
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %118 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %119 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %118, i32 0, i32 0
  %120 = load i32, i32* %10, align 4
  %121 = load i8*, i8** %20, align 8
  %122 = call i32 %116(%struct.pp_hwmgr* %117, i32* %119, i32 %120, i8* %121)
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp eq i32 0, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %99
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 0, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %128, %125, %99
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %93

134:                                              ; preds = %93
  br label %230

135:                                              ; preds = %28
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ugt i64 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 -1, i32* %5, align 4
  br label %260

142:                                              ; preds = %135
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %144 = ptrtoint %struct.TYPE_21__* %143 to i64
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @le16_to_cpu(i32 %147)
  %149 = add i64 %144, %148
  %150 = load i64, i64* %7, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = mul i64 %150, %153
  %155 = add i64 %149, %154
  %156 = inttoptr i64 %155 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %156, %struct.TYPE_20__** %19, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %158 = ptrtoint %struct.TYPE_21__* %157 to i64
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @le16_to_cpu(i32 %161)
  %163 = add i64 %158, %162
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %166, %169
  %171 = sext i32 %170 to i64
  %172 = add i64 %163, %171
  %173 = inttoptr i64 %172 to i32*
  store i32* %173, i32** %13, align 8
  %174 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %175 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @init_non_clock_fields(%struct.pp_hwmgr* %174, %struct.pp_power_state* %175, i32 %178, i32* %179)
  store i32 %180, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %181

181:                                              ; preds = %226, %142
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = sub i64 %186, 1
  %188 = icmp ult i64 %183, %187
  br i1 %188, label %189, label %229

189:                                              ; preds = %181
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %191 = ptrtoint %struct.TYPE_21__* %190 to i64
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @le16_to_cpu(i32 %194)
  %196 = add i64 %191, %195
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  %208 = sext i32 %207 to i64
  %209 = add i64 %196, %208
  %210 = inttoptr i64 %209 to i8*
  store i8* %210, i8** %21, align 8
  %211 = load i32 (%struct.pp_hwmgr*, i32*, i32, i8*)*, i32 (%struct.pp_hwmgr*, i32*, i32, i8*)** %9, align 8
  %212 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %213 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %214 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %213, i32 0, i32 0
  %215 = load i32, i32* %10, align 4
  %216 = load i8*, i8** %21, align 8
  %217 = call i32 %211(%struct.pp_hwmgr* %212, i32* %214, i32 %215, i8* %216)
  store i32 %217, i32* %22, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp eq i32 0, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %189
  %221 = load i32, i32* %22, align 4
  %222 = icmp ne i32 0, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* %22, align 4
  store i32 %224, i32* %15, align 4
  br label %225

225:                                              ; preds = %223, %220, %189
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %181

229:                                              ; preds = %181
  br label %230

230:                                              ; preds = %229, %134
  %231 = load i32, i32* %15, align 4
  %232 = icmp eq i32 0, %231
  br i1 %232, label %233, label %258

233:                                              ; preds = %230
  %234 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %235 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @PP_StateClassificationFlag_Boot, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 0, %239
  br i1 %240, label %241, label %258

241:                                              ; preds = %233
  %242 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %243 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @AMDGPU_FAMILY_RV, align 8
  %246 = icmp slt i64 %244, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %241
  %248 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %249 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %248, i32 0, i32 1
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load i32 (%struct.pp_hwmgr*, i32*)*, i32 (%struct.pp_hwmgr*, i32*)** %251, align 8
  %253 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %254 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %255 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %254, i32 0, i32 0
  %256 = call i32 %252(%struct.pp_hwmgr* %253, i32* %255)
  store i32 %256, i32* %15, align 4
  br label %257

257:                                              ; preds = %247, %241
  br label %258

258:                                              ; preds = %257, %233, %230
  %259 = load i32, i32* %15, align 4
  store i32 %259, i32* %5, align 4
  br label %260

260:                                              ; preds = %258, %141, %52, %27
  %261 = load i32, i32* %5, align 4
  ret i32 %261
}

declare dso_local %struct.TYPE_21__* @get_powerplay_table(%struct.pp_hwmgr*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_19__* @get_state_entry_v2(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @init_non_clock_fields(%struct.pp_hwmgr*, %struct.pp_power_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
