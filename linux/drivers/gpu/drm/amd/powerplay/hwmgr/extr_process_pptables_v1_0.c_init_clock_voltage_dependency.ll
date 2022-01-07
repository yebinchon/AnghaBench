; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_process_pptables_v1_0.c_init_clock_voltage_dependency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_process_pptables_v1_0.c_init_clock_voltage_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.phm_ppt_v1_information = type { i32*, %struct.TYPE_12__*, i32, %struct.TYPE_12__*, i32, %struct.TYPE_13__, i32*, i32, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_11__*)* @init_clock_voltage_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_clock_voltage_dependency(%struct.pp_hwmgr* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %17, %struct.phm_ppt_v1_information** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = ptrtoint %struct.TYPE_11__* %18 to i64
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @le16_to_cpu(i64 %22)
  %24 = add i64 %19, %23
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %7, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = ptrtoint %struct.TYPE_11__* %26 to i64
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @le16_to_cpu(i64 %30)
  %32 = add i64 %27, %31
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %8, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = ptrtoint %struct.TYPE_11__* %34 to i64
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @le16_to_cpu(i64 %38)
  %40 = add i64 %35, %39
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %9, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = ptrtoint %struct.TYPE_11__* %42 to i64
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @le16_to_cpu(i64 %46)
  %48 = add i64 %43, %47
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %10, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = ptrtoint %struct.TYPE_11__* %50 to i64
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @le16_to_cpu(i64 %54)
  %56 = add i64 %51, %55
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %11, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = ptrtoint %struct.TYPE_11__* %58 to i64
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @le16_to_cpu(i64 %62)
  %64 = add i64 %59, %63
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %12, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = ptrtoint %struct.TYPE_11__* %66 to i64
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @le16_to_cpu(i64 %70)
  %72 = add i64 %67, %71
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %13, align 8
  %74 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %75 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %74, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %75, align 8
  %76 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %77 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %76, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %77, align 8
  %78 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %79 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %78, i32 0, i32 8
  store i32* null, i32** %79, align 8
  %80 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %81 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %80, i32 0, i32 6
  store i32* null, i32** %81, align 8
  %82 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %83 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %2
  %89 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %90 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %91 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %90, i32 0, i32 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @get_mm_clock_voltage_table(%struct.pp_hwmgr* %89, i32** %91, i32* %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %88, %2
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %104 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %105 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %104, i32 0, i32 7
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @get_cac_tdp_table(%struct.pp_hwmgr* %103, i32* %105, i32* %106)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %102, %97, %94
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %118 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %119 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %118, i32 0, i32 1
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @get_sclk_voltage_dependency_table(%struct.pp_hwmgr* %117, %struct.TYPE_12__** %119, i32* %120)
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %116, %111, %108
  %123 = load i32, i32* %5, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %132 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %133 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %132, i32 0, i32 3
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @get_mclk_voltage_dependency_table(%struct.pp_hwmgr* %131, %struct.TYPE_12__** %133, i32* %134)
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %130, %125, %122
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %146 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %147 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %146, i32 0, i32 6
  %148 = load i32*, i32** %12, align 8
  %149 = call i32 @get_pcie_table(%struct.pp_hwmgr* %145, i32** %147, i32* %148)
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %144, %139, %136
  %151 = load i32, i32* %5, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %160 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %161 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %160, i32 0, i32 5
  %162 = load i32*, i32** %11, align 8
  %163 = call i32 @get_hard_limits(%struct.pp_hwmgr* %159, %struct.TYPE_13__* %161, i32* %162)
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %158, %153, %150
  %165 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %166 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %170 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 3
  store i32 %168, i32* %172, align 4
  %173 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %174 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %178 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  store i32 %176, i32* %180, align 8
  %181 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %182 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %186 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  store i32 %184, i32* %188, align 4
  %189 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %190 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %194 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  store i32 %192, i32* %196, align 8
  %197 = load i32, i32* %5, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %219

199:                                              ; preds = %164
  %200 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %201 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %200, i32 0, i32 3
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = icmp ne %struct.TYPE_12__* null, %202
  br i1 %203, label %204, label %219

204:                                              ; preds = %199
  %205 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %206 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %205, i32 0, i32 3
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 0, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %204
  %212 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %213 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %214 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %213, i32 0, i32 4
  %215 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %216 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %215, i32 0, i32 3
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = call i32 @get_valid_clk(%struct.pp_hwmgr* %212, i32* %214, %struct.TYPE_12__* %217)
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %211, %204, %199, %164
  %220 = load i32, i32* %5, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %242

222:                                              ; preds = %219
  %223 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %224 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %223, i32 0, i32 1
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = icmp ne %struct.TYPE_12__* null, %225
  br i1 %226, label %227, label %242

227:                                              ; preds = %222
  %228 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %229 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %228, i32 0, i32 1
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 0, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %227
  %235 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %236 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %237 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %236, i32 0, i32 2
  %238 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %239 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %238, i32 0, i32 1
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = call i32 @get_valid_clk(%struct.pp_hwmgr* %235, i32* %237, %struct.TYPE_12__* %240)
  store i32 %241, i32* %5, align 4
  br label %242

242:                                              ; preds = %234, %227, %222, %219
  %243 = load i32, i32* %5, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %254, label %245

245:                                              ; preds = %242
  %246 = load i32*, i32** %13, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %254

248:                                              ; preds = %245
  %249 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %250 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %251 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %250, i32 0, i32 0
  %252 = load i32*, i32** %13, align 8
  %253 = call i32 @get_gpio_table(%struct.pp_hwmgr* %249, i32** %251, i32* %252)
  store i32 %253, i32* %5, align 4
  br label %254

254:                                              ; preds = %248, %245, %242
  %255 = load i32, i32* %5, align 4
  ret i32 %255
}

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @get_mm_clock_voltage_table(%struct.pp_hwmgr*, i32**, i32*) #1

declare dso_local i32 @get_cac_tdp_table(%struct.pp_hwmgr*, i32*, i32*) #1

declare dso_local i32 @get_sclk_voltage_dependency_table(%struct.pp_hwmgr*, %struct.TYPE_12__**, i32*) #1

declare dso_local i32 @get_mclk_voltage_dependency_table(%struct.pp_hwmgr*, %struct.TYPE_12__**, i32*) #1

declare dso_local i32 @get_pcie_table(%struct.pp_hwmgr*, i32**, i32*) #1

declare dso_local i32 @get_hard_limits(%struct.pp_hwmgr*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @get_valid_clk(%struct.pp_hwmgr*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @get_gpio_table(%struct.pp_hwmgr*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
