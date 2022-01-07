; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_init_clock_voltage_dependency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_init_clock_voltage_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, %struct.TYPE_24__*, i32, i32, %struct.TYPE_24__*, %struct.TYPE_18__*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_23__*)* @init_clock_voltage_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_clock_voltage_dependency(%struct.pp_hwmgr* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %23, align 8
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 7
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %26, align 8
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %28 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %29, align 8
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 14
  store i32* null, i32** %32, align 8
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %35, align 8
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 12
  store i32* null, i32** %38, align 8
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 11
  store i32* null, i32** %41, align 8
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %43 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 10
  store i32* null, i32** %44, align 8
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 9
  store i32* null, i32** %47, align 8
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 13
  store i32* null, i32** %50, align 8
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %53, align 8
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %56 = call i64 @get_vce_clock_info_array_offset(%struct.pp_hwmgr* %54, %struct.TYPE_23__* %55)
  store i64 %56, i64* %8, align 8
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = call i64 @get_vce_clock_voltage_limit_table_offset(%struct.pp_hwmgr* %57, %struct.TYPE_23__* %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %2
  %63 = load i64, i64* %10, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %67 = ptrtoint %struct.TYPE_23__* %66 to i64
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %67, %68
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %11, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %72 = ptrtoint %struct.TYPE_23__* %71 to i64
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %72, %73
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %12, align 8
  %76 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 12
  %80 = load i32*, i32** %12, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @get_vce_clock_voltage_limit_table(%struct.pp_hwmgr* %76, i32** %79, i32* %80, i32* %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %65, %62, %2
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %86 = call i64 @get_uvd_clock_info_array_offset(%struct.pp_hwmgr* %84, %struct.TYPE_23__* %85)
  store i64 %86, i64* %9, align 8
  %87 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %89 = call i64 @get_uvd_clock_voltage_limit_table_offset(%struct.pp_hwmgr* %87, %struct.TYPE_23__* %88)
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %83
  %93 = load i64, i64* %10, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %92
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %97 = ptrtoint %struct.TYPE_23__* %96 to i64
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %97, %98
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %13, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %102 = ptrtoint %struct.TYPE_23__* %101 to i64
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %102, %103
  %105 = inttoptr i64 %104 to i32*
  store i32* %105, i32** %14, align 8
  %106 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %107 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %108 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 11
  %110 = load i32*, i32** %14, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @get_uvd_clock_voltage_limit_table(%struct.pp_hwmgr* %106, i32** %109, i32* %110, i32* %111)
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %95, %92, %83
  %114 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = call i64 @get_samu_clock_voltage_limit_table_offset(%struct.pp_hwmgr* %114, %struct.TYPE_23__* %115)
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %121 = ptrtoint %struct.TYPE_23__* %120 to i64
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %121, %122
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %15, align 8
  %125 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %126 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %127 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 10
  %129 = load i32*, i32** %15, align 8
  %130 = call i32 @get_samu_clock_voltage_limit_table(%struct.pp_hwmgr* %125, i32** %128, i32* %129)
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %119, %113
  %132 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %134 = call i64 @get_acp_clock_voltage_limit_table_offset(%struct.pp_hwmgr* %132, %struct.TYPE_23__* %133)
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %10, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %131
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %139 = ptrtoint %struct.TYPE_23__* %138 to i64
  %140 = load i64, i64* %10, align 8
  %141 = add i64 %139, %140
  %142 = inttoptr i64 %141 to i32*
  store i32* %142, i32** %16, align 8
  %143 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %144 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %145 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 9
  %147 = load i32*, i32** %16, align 8
  %148 = call i32 @get_acp_clock_voltage_limit_table(%struct.pp_hwmgr* %143, i32** %146, i32* %147)
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %137, %131
  %150 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %152 = call i64 @get_cacp_tdp_table_offset(%struct.pp_hwmgr* %150, %struct.TYPE_23__* %151)
  store i64 %152, i64* %10, align 8
  %153 = load i64, i64* %10, align 8
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %204

155:                                              ; preds = %149
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %157 = ptrtoint %struct.TYPE_23__* %156 to i64
  %158 = load i64, i64* %10, align 8
  %159 = add i64 %157, %158
  %160 = inttoptr i64 %159 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %17, align 8
  %162 = load i64, i64* %17, align 8
  %163 = icmp sgt i64 %162, 0
  br i1 %163, label %164, label %190

164:                                              ; preds = %155
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %166 = ptrtoint %struct.TYPE_23__* %165 to i64
  %167 = load i64, i64* %10, align 8
  %168 = add i64 %166, %167
  %169 = inttoptr i64 %168 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %169, %struct.TYPE_20__** %18, align 8
  %170 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %171 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %172 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @le16_to_cpu(i64 %178)
  %180 = call i32 @get_cac_tdp_table(%struct.pp_hwmgr* %170, %struct.TYPE_18__** %173, i32* %175, i32 %179)
  store i32 %180, i32* %7, align 4
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @le16_to_cpu(i64 %183)
  %185 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %186 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  store i32 %184, i32* %189, align 4
  br label %203

190:                                              ; preds = %155
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %192 = ptrtoint %struct.TYPE_23__* %191 to i64
  %193 = load i64, i64* %10, align 8
  %194 = add i64 %192, %193
  %195 = inttoptr i64 %194 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %195, %struct.TYPE_21__** %19, align 8
  %196 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %197 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %198 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = call i32 @get_cac_tdp_table(%struct.pp_hwmgr* %196, %struct.TYPE_18__** %199, i32* %201, i32 255)
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %190, %164
  br label %204

204:                                              ; preds = %203, %149
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @le16_to_cpu(i64 %207)
  %209 = sext i32 %208 to i64
  %210 = icmp uge i64 %209, 40
  br i1 %210, label %211, label %385

211:                                              ; preds = %204
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %213 = bitcast %struct.TYPE_23__* %212 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %213, %struct.TYPE_22__** %20, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 0, %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %211
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %220 = ptrtoint %struct.TYPE_22__* %219 to i64
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @le16_to_cpu(i64 %223)
  %225 = sext i32 %224 to i64
  %226 = add i64 %220, %225
  %227 = inttoptr i64 %226 to i32*
  store i32* %227, i32** %5, align 8
  %228 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %229 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %230 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 2
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @get_clock_voltage_dependency_table(%struct.pp_hwmgr* %228, %struct.TYPE_24__** %231, i32* %232)
  store i32 %233, i32* %7, align 4
  br label %234

234:                                              ; preds = %218, %211
  %235 = load i32, i32* %7, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %258

237:                                              ; preds = %234
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 0, %240
  br i1 %241, label %242, label %258

242:                                              ; preds = %237
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %244 = ptrtoint %struct.TYPE_22__* %243 to i64
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @le16_to_cpu(i64 %247)
  %249 = sext i32 %248 to i64
  %250 = add i64 %244, %249
  %251 = inttoptr i64 %250 to i32*
  store i32* %251, i32** %5, align 8
  %252 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %253 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %254 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 7
  %256 = load i32*, i32** %5, align 8
  %257 = call i32 @get_clock_voltage_dependency_table(%struct.pp_hwmgr* %252, %struct.TYPE_24__** %255, i32* %256)
  store i32 %257, i32* %7, align 4
  br label %258

258:                                              ; preds = %242, %237, %234
  %259 = load i32, i32* %7, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %282

261:                                              ; preds = %258
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 0, %264
  br i1 %265, label %266, label %282

266:                                              ; preds = %261
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %268 = ptrtoint %struct.TYPE_22__* %267 to i64
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @le16_to_cpu(i64 %271)
  %273 = sext i32 %272 to i64
  %274 = add i64 %268, %273
  %275 = inttoptr i64 %274 to i32*
  store i32* %275, i32** %5, align 8
  %276 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %277 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %278 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 4
  %280 = load i32*, i32** %5, align 8
  %281 = call i32 @get_clock_voltage_dependency_table(%struct.pp_hwmgr* %276, %struct.TYPE_24__** %279, i32* %280)
  store i32 %281, i32* %7, align 4
  br label %282

282:                                              ; preds = %266, %261, %258
  %283 = load i32, i32* %7, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %306

285:                                              ; preds = %282
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 0, %288
  br i1 %289, label %290, label %306

290:                                              ; preds = %285
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %292 = ptrtoint %struct.TYPE_22__* %291 to i64
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @le16_to_cpu(i64 %295)
  %297 = sext i32 %296 to i64
  %298 = add i64 %292, %297
  %299 = inttoptr i64 %298 to i32*
  store i32* %299, i32** %6, align 8
  %300 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %301 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %302 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 6
  %304 = load i32*, i32** %6, align 8
  %305 = call i32 @get_clock_voltage_limit(%struct.pp_hwmgr* %300, i32* %303, i32* %304)
  store i32 %305, i32* %7, align 4
  br label %306

306:                                              ; preds = %290, %285, %282
  %307 = load i32, i32* %7, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %333

309:                                              ; preds = %306
  %310 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %311 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 4
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %312, align 8
  %314 = icmp ne %struct.TYPE_24__* null, %313
  br i1 %314, label %315, label %333

315:                                              ; preds = %309
  %316 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %317 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 4
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 0, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %315
  %324 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %325 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %326 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 5
  %328 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %329 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 4
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %330, align 8
  %332 = call i32 @get_valid_clk(%struct.pp_hwmgr* %324, i32* %327, %struct.TYPE_24__* %331)
  store i32 %332, i32* %7, align 4
  br label %333

333:                                              ; preds = %323, %315, %309, %306
  %334 = load i32, i32* %7, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %360

336:                                              ; preds = %333
  %337 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %338 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 2
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %339, align 8
  %341 = icmp ne %struct.TYPE_24__* null, %340
  br i1 %341, label %342, label %360

342:                                              ; preds = %336
  %343 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %344 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 0, %348
  br i1 %349, label %350, label %360

350:                                              ; preds = %342
  %351 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %352 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %353 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %353, i32 0, i32 3
  %355 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %356 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i32 0, i32 2
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %357, align 8
  %359 = call i32 @get_valid_clk(%struct.pp_hwmgr* %351, i32* %354, %struct.TYPE_24__* %358)
  store i32 %359, i32* %7, align 4
  br label %360

360:                                              ; preds = %350, %342, %336, %333
  %361 = load i32, i32* %7, align 4
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %384

363:                                              ; preds = %360
  %364 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i32 0, i32 4
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 0, %366
  br i1 %367, label %368, label %384

368:                                              ; preds = %363
  %369 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %370 = ptrtoint %struct.TYPE_22__* %369 to i64
  %371 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %372 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @le16_to_cpu(i64 %373)
  %375 = sext i32 %374 to i64
  %376 = add i64 %370, %375
  %377 = inttoptr i64 %376 to i32*
  store i32* %377, i32** %5, align 8
  %378 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %379 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %380 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 1
  %382 = load i32*, i32** %5, align 8
  %383 = call i32 @get_clock_voltage_dependency_table(%struct.pp_hwmgr* %378, %struct.TYPE_24__** %381, i32* %382)
  store i32 %383, i32* %7, align 4
  br label %384

384:                                              ; preds = %368, %363, %360
  br label %385

385:                                              ; preds = %384, %204
  %386 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %388 = call i64 @get_sclk_vdd_gfx_clock_voltage_dependency_table_offset(%struct.pp_hwmgr* %386, %struct.TYPE_23__* %387)
  store i64 %388, i64* %10, align 8
  %389 = load i64, i64* %10, align 8
  %390 = icmp sgt i64 %389, 0
  br i1 %390, label %391, label %403

391:                                              ; preds = %385
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %393 = ptrtoint %struct.TYPE_23__* %392 to i64
  %394 = load i64, i64* %10, align 8
  %395 = add i64 %393, %394
  %396 = inttoptr i64 %395 to i32*
  store i32* %396, i32** %5, align 8
  %397 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %398 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %399 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 0
  %401 = load i32*, i32** %5, align 8
  %402 = call i32 @get_clock_voltage_dependency_table(%struct.pp_hwmgr* %397, %struct.TYPE_24__** %400, i32* %401)
  store i32 %402, i32* %7, align 4
  br label %403

403:                                              ; preds = %391, %385
  %404 = load i32, i32* %7, align 4
  ret i32 %404
}

declare dso_local i64 @get_vce_clock_info_array_offset(%struct.pp_hwmgr*, %struct.TYPE_23__*) #1

declare dso_local i64 @get_vce_clock_voltage_limit_table_offset(%struct.pp_hwmgr*, %struct.TYPE_23__*) #1

declare dso_local i32 @get_vce_clock_voltage_limit_table(%struct.pp_hwmgr*, i32**, i32*, i32*) #1

declare dso_local i64 @get_uvd_clock_info_array_offset(%struct.pp_hwmgr*, %struct.TYPE_23__*) #1

declare dso_local i64 @get_uvd_clock_voltage_limit_table_offset(%struct.pp_hwmgr*, %struct.TYPE_23__*) #1

declare dso_local i32 @get_uvd_clock_voltage_limit_table(%struct.pp_hwmgr*, i32**, i32*, i32*) #1

declare dso_local i64 @get_samu_clock_voltage_limit_table_offset(%struct.pp_hwmgr*, %struct.TYPE_23__*) #1

declare dso_local i32 @get_samu_clock_voltage_limit_table(%struct.pp_hwmgr*, i32**, i32*) #1

declare dso_local i64 @get_acp_clock_voltage_limit_table_offset(%struct.pp_hwmgr*, %struct.TYPE_23__*) #1

declare dso_local i32 @get_acp_clock_voltage_limit_table(%struct.pp_hwmgr*, i32**, i32*) #1

declare dso_local i64 @get_cacp_tdp_table_offset(%struct.pp_hwmgr*, %struct.TYPE_23__*) #1

declare dso_local i32 @get_cac_tdp_table(%struct.pp_hwmgr*, %struct.TYPE_18__**, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @get_clock_voltage_dependency_table(%struct.pp_hwmgr*, %struct.TYPE_24__**, i32*) #1

declare dso_local i32 @get_clock_voltage_limit(%struct.pp_hwmgr*, i32*, i32*) #1

declare dso_local i32 @get_valid_clk(%struct.pp_hwmgr*, i32*, %struct.TYPE_24__*) #1

declare dso_local i64 @get_sclk_vdd_gfx_clock_voltage_dependency_table_offset(%struct.pp_hwmgr*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
