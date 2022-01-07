; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_processpptables.c_init_powerplay_extended_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_processpptables.c_init_powerplay_extended_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.phm_ppt_v2_information = type { %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__, i32, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_13__*)* @init_powerplay_extended_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_powerplay_extended_tables(%struct.pp_hwmgr* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phm_ppt_v2_information*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %5, align 4
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %21, %struct.phm_ppt_v2_information** %6, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = ptrtoint %struct.TYPE_13__* %22 to i64
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 10
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @le16_to_cpu(i64 %26)
  %28 = add i64 %23, %27
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %7, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = ptrtoint %struct.TYPE_13__* %30 to i64
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @le16_to_cpu(i64 %34)
  %36 = add i64 %31, %35
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %8, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = ptrtoint %struct.TYPE_13__* %38 to i64
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @le16_to_cpu(i64 %42)
  %44 = add i64 %39, %43
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %9, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = ptrtoint %struct.TYPE_13__* %46 to i64
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @le16_to_cpu(i64 %50)
  %52 = add i64 %47, %51
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %10, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = ptrtoint %struct.TYPE_13__* %54 to i64
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @le16_to_cpu(i64 %58)
  %60 = add i64 %55, %59
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %11, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = ptrtoint %struct.TYPE_13__* %62 to i64
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @le16_to_cpu(i64 %66)
  %68 = add i64 %63, %67
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %12, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = ptrtoint %struct.TYPE_13__* %70 to i64
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @le16_to_cpu(i64 %74)
  %76 = add i64 %71, %75
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %13, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = ptrtoint %struct.TYPE_13__* %78 to i64
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @le16_to_cpu(i64 %82)
  %84 = add i64 %79, %83
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %14, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = ptrtoint %struct.TYPE_13__* %86 to i64
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @le16_to_cpu(i64 %90)
  %92 = add i64 %87, %91
  %93 = inttoptr i64 %92 to i32*
  store i32* %93, i32** %15, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = ptrtoint %struct.TYPE_13__* %94 to i64
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @le16_to_cpu(i64 %98)
  %100 = add i64 %95, %99
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** %16, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = ptrtoint %struct.TYPE_13__* %102 to i64
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @le16_to_cpu(i64 %106)
  %108 = add i64 %103, %107
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %17, align 8
  %110 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %111 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %110, i32 0, i32 6
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %111, align 8
  %112 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %113 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %112, i32 0, i32 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %113, align 8
  %114 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %115 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %114, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %115, align 8
  %116 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %117 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %116, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %117, align 8
  %118 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %119 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %118, i32 0, i32 14
  store i32* null, i32** %119, align 8
  %120 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %121 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %120, i32 0, i32 13
  store i32* null, i32** %121, align 8
  %122 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %123 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %122, i32 0, i32 12
  store i32* null, i32** %123, align 8
  %124 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %125 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %124, i32 0, i32 11
  store i32* null, i32** %125, align 8
  %126 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %127 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %126, i32 0, i32 10
  store i32* null, i32** %127, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 10
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %2
  %133 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %134 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %135 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %134, i32 0, i32 14
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @get_mm_clock_voltage_table(%struct.pp_hwmgr* %133, i32** %135, i32* %136)
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %132, %2
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %138
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 9
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %148 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %149 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %148, i32 0, i32 13
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @get_tdp_table(%struct.pp_hwmgr* %147, i32** %149, i32* %150)
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %146, %141, %138
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %152
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 8
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %162 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %163 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %162, i32 0, i32 6
  %164 = load i32*, i32** %9, align 8
  %165 = call i32 @get_socclk_voltage_dependency_table(%struct.pp_hwmgr* %161, %struct.TYPE_14__** %163, i32* %164)
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %160, %155, %152
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %166
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 7
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %176 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %177 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %176, i32 0, i32 4
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @get_gfxclk_voltage_dependency_table(%struct.pp_hwmgr* %175, %struct.TYPE_14__** %177, i32* %178)
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %174, %169, %166
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %180
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %190 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %191 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %190, i32 0, i32 12
  %192 = load i32*, i32** %15, align 8
  %193 = call i32 @get_pix_clk_voltage_dependency_table(%struct.pp_hwmgr* %189, i32** %191, i32* %192)
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %188, %183, %180
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %194
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %204 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %205 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %204, i32 0, i32 11
  %206 = load i32*, i32** %16, align 8
  %207 = call i32 @get_pix_clk_voltage_dependency_table(%struct.pp_hwmgr* %203, i32** %205, i32* %206)
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %202, %197, %194
  %209 = load i32, i32* %5, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %222, label %211

211:                                              ; preds = %208
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %218 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %219 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %218, i32 0, i32 10
  %220 = load i32*, i32** %17, align 8
  %221 = call i32 @get_pix_clk_voltage_dependency_table(%struct.pp_hwmgr* %217, i32** %219, i32* %220)
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %216, %211, %208
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %236, label %225

225:                                              ; preds = %222
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %232 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %233 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %232, i32 0, i32 2
  %234 = load i32*, i32** %11, align 8
  %235 = call i32 @get_dcefclk_voltage_dependency_table(%struct.pp_hwmgr* %231, %struct.TYPE_14__** %233, i32* %234)
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %230, %225, %222
  %237 = load i32, i32* %5, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %250, label %239

239:                                              ; preds = %236
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %239
  %245 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %246 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %247 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %246, i32 0, i32 0
  %248 = load i32*, i32** %12, align 8
  %249 = call i32 @get_mclk_voltage_dependency_table(%struct.pp_hwmgr* %245, %struct.TYPE_14__** %247, i32* %248)
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %244, %239, %236
  %251 = load i32, i32* %5, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %264, label %253

253:                                              ; preds = %250
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %253
  %259 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %260 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %261 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %260, i32 0, i32 9
  %262 = load i32*, i32** %14, align 8
  %263 = call i32 @get_pcie_table(%struct.pp_hwmgr* %259, i32* %261, i32* %262)
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %258, %253, %250
  %265 = load i32, i32* %5, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %278, label %267

267:                                              ; preds = %264
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %267
  %273 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %274 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %275 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %274, i32 0, i32 8
  %276 = load i32*, i32** %13, align 8
  %277 = call i32 @get_hard_limits(%struct.pp_hwmgr* %273, %struct.TYPE_15__* %275, i32* %276)
  store i32 %277, i32* %5, align 4
  br label %278

278:                                              ; preds = %272, %267, %264
  %279 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %280 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %279, i32 0, i32 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %284 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 3
  store i32 %282, i32* %286, align 4
  %287 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %288 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %287, i32 0, i32 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %292 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 2
  store i32 %290, i32* %294, align 8
  %295 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %296 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %295, i32 0, i32 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %300 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 1
  store i32 %298, i32* %302, align 4
  %303 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %304 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %303, i32 0, i32 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %308 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  store i32 %306, i32* %310, align 8
  %311 = load i32, i32* %5, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %333, label %313

313:                                              ; preds = %278
  %314 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %315 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %314, i32 0, i32 6
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %315, align 8
  %317 = icmp ne %struct.TYPE_14__* %316, null
  br i1 %317, label %318, label %333

318:                                              ; preds = %313
  %319 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %320 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %319, i32 0, i32 6
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %318
  %326 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %327 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %328 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %327, i32 0, i32 7
  %329 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %330 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %329, i32 0, i32 6
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %330, align 8
  %332 = call i32 @get_valid_clk(%struct.pp_hwmgr* %326, i32* %328, %struct.TYPE_14__* %331)
  store i32 %332, i32* %5, align 4
  br label %333

333:                                              ; preds = %325, %318, %313, %278
  %334 = load i32, i32* %5, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %356, label %336

336:                                              ; preds = %333
  %337 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %338 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %337, i32 0, i32 4
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %338, align 8
  %340 = icmp ne %struct.TYPE_14__* %339, null
  br i1 %340, label %341, label %356

341:                                              ; preds = %336
  %342 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %343 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %342, i32 0, i32 4
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %341
  %349 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %350 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %351 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %350, i32 0, i32 5
  %352 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %353 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %352, i32 0, i32 4
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %353, align 8
  %355 = call i32 @get_valid_clk(%struct.pp_hwmgr* %349, i32* %351, %struct.TYPE_14__* %354)
  store i32 %355, i32* %5, align 4
  br label %356

356:                                              ; preds = %348, %341, %336, %333
  %357 = load i32, i32* %5, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %379, label %359

359:                                              ; preds = %356
  %360 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %361 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %360, i32 0, i32 2
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** %361, align 8
  %363 = icmp ne %struct.TYPE_14__* %362, null
  br i1 %363, label %364, label %379

364:                                              ; preds = %359
  %365 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %366 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %365, i32 0, i32 2
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %379

371:                                              ; preds = %364
  %372 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %373 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %374 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %373, i32 0, i32 3
  %375 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %376 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %375, i32 0, i32 2
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %376, align 8
  %378 = call i32 @get_valid_clk(%struct.pp_hwmgr* %372, i32* %374, %struct.TYPE_14__* %377)
  store i32 %378, i32* %5, align 4
  br label %379

379:                                              ; preds = %371, %364, %359, %356
  %380 = load i32, i32* %5, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %402, label %382

382:                                              ; preds = %379
  %383 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %384 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %383, i32 0, i32 0
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** %384, align 8
  %386 = icmp ne %struct.TYPE_14__* %385, null
  br i1 %386, label %387, label %402

387:                                              ; preds = %382
  %388 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %389 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %388, i32 0, i32 0
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %402

394:                                              ; preds = %387
  %395 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %396 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %397 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %396, i32 0, i32 1
  %398 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %399 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %398, i32 0, i32 0
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %399, align 8
  %401 = call i32 @get_valid_clk(%struct.pp_hwmgr* %395, i32* %397, %struct.TYPE_14__* %400)
  store i32 %401, i32* %5, align 4
  br label %402

402:                                              ; preds = %394, %387, %382, %379
  %403 = load i32, i32* %5, align 4
  ret i32 %403
}

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @get_mm_clock_voltage_table(%struct.pp_hwmgr*, i32**, i32*) #1

declare dso_local i32 @get_tdp_table(%struct.pp_hwmgr*, i32**, i32*) #1

declare dso_local i32 @get_socclk_voltage_dependency_table(%struct.pp_hwmgr*, %struct.TYPE_14__**, i32*) #1

declare dso_local i32 @get_gfxclk_voltage_dependency_table(%struct.pp_hwmgr*, %struct.TYPE_14__**, i32*) #1

declare dso_local i32 @get_pix_clk_voltage_dependency_table(%struct.pp_hwmgr*, i32**, i32*) #1

declare dso_local i32 @get_dcefclk_voltage_dependency_table(%struct.pp_hwmgr*, %struct.TYPE_14__**, i32*) #1

declare dso_local i32 @get_mclk_voltage_dependency_table(%struct.pp_hwmgr*, %struct.TYPE_14__**, i32*) #1

declare dso_local i32 @get_pcie_table(%struct.pp_hwmgr*, i32*, i32*) #1

declare dso_local i32 @get_hard_limits(%struct.pp_hwmgr*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @get_valid_clk(%struct.pp_hwmgr*, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
