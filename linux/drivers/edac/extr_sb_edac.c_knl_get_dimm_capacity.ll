; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_knl_get_dimm_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_knl_get_dimm_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbridge_pvt = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 (i64)*, i32, i32*, i32* }
%struct.TYPE_3__ = type { i32* }

@KNL_MAX_CHAS = common dso_local global i32 0, align 4
@KNL_MAX_EDCS = common dso_local global i32 0, align 4
@KNL_MAX_CHANNELS = common dso_local global i32 0, align 4
@KNL_EDC_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"edc route table for CHA %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"edc route table for CHA %d-%d: %s\0A\00", align 1
@KNL_MC_ROUTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"mc route table for CHA %d: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"mc route table for CHA %d-%d: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Unexpected interleave target %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"dram rule %d (base 0x%llx, limit 0x%llx), %d way interleave%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c", EDRAM\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@knl_tad_dram_limit_lo = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [85 x i8] c"TAD region overlaps lower SAD boundary -- TAD tables may be configured incorrectly.\0A\00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"TAD region overlaps upper SAD boundary -- TAD tables may be configured incorrectly.\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"TAD region %d 0x%llx - 0x%llx (%lld bytes) table%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c" total TAD DRAM footprint in table%d : 0x%llx (%lld bytes)\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"mc channel %d contributes %lld bytes via sad entry %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbridge_pvt*, i32*)* @knl_get_dimm_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knl_get_dimm_capacity(%struct.sbridge_pvt* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbridge_pvt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca [2 x i32], align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.sbridge_pvt* %0, %struct.sbridge_pvt** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %37 = load i32, i32* @KNL_MAX_CHAS, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %24, align 8
  %40 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %25, align 8
  %41 = load i32, i32* @KNL_MAX_CHAS, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i64, i64 %42, align 16
  store i64 %42, i64* %26, align 8
  %44 = load i32, i32* @KNL_MAX_EDCS, align 4
  %45 = mul nsw i32 %44, 2
  %46 = zext i32 %45 to i64
  %47 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %28, align 8
  %48 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  %49 = mul nsw i32 %48, 2
  %50 = zext i32 %49 to i64
  %51 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %29, align 8
  %52 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %33, align 8
  store i32 0, i32* %20, align 4
  br label %55

55:                                               ; preds = %64, %2
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %20, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %20, align 4
  br label %55

67:                                               ; preds = %55
  store i32 0, i32* %30, align 4
  store i32 0, i32* %20, align 4
  br label %68

68:                                               ; preds = %121, %67
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* @KNL_MAX_CHAS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %124

72:                                               ; preds = %68
  %73 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %74 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %20, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @KNL_EDC_ROUTE, align 4
  %82 = load i32, i32* %20, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %43, i64 %83
  %85 = call i32 @pci_read_config_dword(i32 %80, i32 %81, i64* %84)
  %86 = load i32, i32* %20, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %120

88:                                               ; preds = %72
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %43, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %20, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %43, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %92, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %88
  %100 = load i32, i32* %20, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %43, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @knl_show_edc_route(i64 %104, i8* %47)
  %106 = load i32, i32* %30, align 4
  %107 = load i32, i32* %20, align 4
  %108 = sub nsw i32 %107, 1
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %99
  %111 = load i32, i32* %30, align 4
  %112 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %111, i8* %47)
  br label %118

113:                                              ; preds = %99
  %114 = load i32, i32* %30, align 4
  %115 = load i32, i32* %20, align 4
  %116 = sub nsw i32 %115, 1
  %117 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %116, i8* %47)
  br label %118

118:                                              ; preds = %113, %110
  %119 = load i32, i32* %20, align 4
  store i32 %119, i32* %30, align 4
  br label %120

120:                                              ; preds = %118, %88, %72
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %20, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %20, align 4
  br label %68

124:                                              ; preds = %68
  %125 = load i32, i32* %20, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %43, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @knl_show_edc_route(i64 %129, i8* %47)
  %131 = load i32, i32* %30, align 4
  %132 = load i32, i32* %20, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = load i32, i32* %30, align 4
  %137 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %136, i8* %47)
  br label %143

138:                                              ; preds = %124
  %139 = load i32, i32* %30, align 4
  %140 = load i32, i32* %20, align 4
  %141 = sub nsw i32 %140, 1
  %142 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %141, i8* %47)
  br label %143

143:                                              ; preds = %138, %135
  store i32 0, i32* %30, align 4
  store i32 0, i32* %20, align 4
  br label %144

144:                                              ; preds = %197, %143
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* @KNL_MAX_CHAS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %200

148:                                              ; preds = %144
  %149 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %150 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %20, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @KNL_MC_ROUTE, align 4
  %158 = load i32, i32* %20, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %40, i64 %159
  %161 = call i32 @pci_read_config_dword(i32 %156, i32 %157, i64* %160)
  %162 = load i32, i32* %20, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %196

164:                                              ; preds = %148
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %40, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %20, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %40, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %168, %173
  br i1 %174, label %175, label %196

175:                                              ; preds = %164
  %176 = load i32, i32* %20, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %40, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @knl_show_mc_route(i64 %180, i8* %51)
  %182 = load i32, i32* %30, align 4
  %183 = load i32, i32* %20, align 4
  %184 = sub nsw i32 %183, 1
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %175
  %187 = load i32, i32* %30, align 4
  %188 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %187, i8* %51)
  br label %194

189:                                              ; preds = %175
  %190 = load i32, i32* %30, align 4
  %191 = load i32, i32* %20, align 4
  %192 = sub nsw i32 %191, 1
  %193 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %192, i8* %51)
  br label %194

194:                                              ; preds = %189, %186
  %195 = load i32, i32* %20, align 4
  store i32 %195, i32* %30, align 4
  br label %196

196:                                              ; preds = %194, %164, %148
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %20, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %20, align 4
  br label %144

200:                                              ; preds = %144
  %201 = load i32, i32* %20, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %40, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @knl_show_mc_route(i64 %205, i8* %51)
  %207 = load i32, i32* %30, align 4
  %208 = load i32, i32* %20, align 4
  %209 = sub nsw i32 %208, 1
  %210 = icmp eq i32 %207, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %200
  %212 = load i32, i32* %30, align 4
  %213 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %212, i8* %51)
  br label %219

214:                                              ; preds = %200
  %215 = load i32, i32* %30, align 4
  %216 = load i32, i32* %20, align 4
  %217 = sub nsw i32 %216, 1
  %218 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %215, i32 %217, i8* %51)
  br label %219

219:                                              ; preds = %214, %211
  store i32 0, i32* %14, align 4
  br label %220

220:                                              ; preds = %516, %219
  %221 = load i32, i32* %14, align 4
  %222 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %223 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp slt i32 %221, %225
  br i1 %226, label %227, label %519

227:                                              ; preds = %220
  %228 = load i32, i32* %8, align 4
  store i32 %228, i32* %6, align 4
  %229 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %230 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %233 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 4
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @pci_read_config_dword(i32 %231, i32 %239, i64* %22)
  %241 = load i64, i64* %22, align 8
  %242 = call i32 @DRAM_RULE_ENABLE(i64 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %227
  br label %519

245:                                              ; preds = %227
  %246 = load i64, i64* %22, align 8
  %247 = call i32 @KNL_EDRAM_ONLY(i64 %246)
  store i32 %247, i32* %27, align 4
  %248 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %249 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 1
  %251 = load i32 (i64)*, i32 (i64)** %250, align 8
  %252 = load i64, i64* %22, align 8
  %253 = call i32 %251(i64 %252)
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %8, align 4
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* %6, align 4
  %257 = sub nsw i32 %255, %256
  store i32 %257, i32* %7, align 4
  %258 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %259 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %262 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 3
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %14, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @pci_read_config_dword(i32 %260, i32 %268, i64* %23)
  %270 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %271 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i64, i64* %23, align 8
  %275 = call i64 @sad_pkg(i32 %273, i64 %274, i32 0)
  store i64 %275, i64* %18, align 8
  store i32 1, i32* %16, align 4
  br label %276

276:                                              ; preds = %299, %245
  %277 = load i32, i32* %16, align 4
  %278 = icmp slt i32 %277, 8
  br i1 %278, label %279, label %302

279:                                              ; preds = %276
  %280 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %281 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load i64, i64* %23, align 8
  %285 = load i32, i32* %16, align 4
  %286 = call i64 @sad_pkg(i32 %283, i64 %284, i32 %285)
  store i64 %286, i64* %19, align 8
  %287 = load i64, i64* %19, align 8
  %288 = and i64 %287, 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %279
  %291 = load i64, i64* %19, align 8
  %292 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %291)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %520

293:                                              ; preds = %279
  %294 = load i64, i64* %19, align 8
  %295 = load i64, i64* %18, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %293
  br label %302

298:                                              ; preds = %293
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %16, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %16, align 4
  br label %276

302:                                              ; preds = %297, %276
  %303 = load i64, i64* %22, align 8
  %304 = call i64 @KNL_MOD3(i64 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  %307 = load i32, i32* %16, align 4
  %308 = mul nsw i32 %307, 3
  store i32 %308, i32* %16, align 4
  br label %309

309:                                              ; preds = %306, %302
  %310 = load i32, i32* %14, align 4
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* %16, align 4
  %314 = load i32, i32* %27, align 4
  %315 = icmp ne i32 %314, 0
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %318 = call i32 (i32, i8*, ...) @edac_dbg(i32 3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %310, i32 %311, i32 %312, i32 %313, i8* %317)
  store i32 0, i32* %31, align 4
  br label %319

319:                                              ; preds = %393, %309
  %320 = load i32, i32* %31, align 4
  %321 = icmp slt i32 %320, 2
  br i1 %321, label %322, label %396

322:                                              ; preds = %319
  %323 = load i32, i32* %31, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %324
  store i32 0, i32* %325, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %326

326:                                              ; preds = %389, %322
  %327 = load i32, i32* %15, align 4
  %328 = load i32, i32* @knl_tad_dram_limit_lo, align 4
  %329 = call i32 @ARRAY_SIZE(i32 %328)
  %330 = icmp slt i32 %327, %329
  br i1 %330, label %331, label %392

331:                                              ; preds = %326
  %332 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %333 = load i32, i32* %15, align 4
  %334 = load i32, i32* %31, align 4
  %335 = call i64 @knl_get_tad(%struct.sbridge_pvt* %332, i32 %333, i32 %334, i32* %12, i32* %11, i32* %17)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %331
  br label %392

338:                                              ; preds = %331
  %339 = load i32, i32* %11, align 4
  %340 = add nsw i32 %339, 1
  %341 = load i32, i32* %13, align 4
  %342 = load i32, i32* %12, align 4
  %343 = add nsw i32 %341, %342
  %344 = sub nsw i32 %340, %343
  store i32 %344, i32* %10, align 4
  %345 = load i32, i32* %10, align 4
  %346 = load i32, i32* %13, align 4
  %347 = add nsw i32 %346, %345
  store i32 %347, i32* %13, align 4
  %348 = load i32, i32* %11, align 4
  %349 = add nsw i32 %348, 1
  %350 = load i32, i32* %10, align 4
  %351 = sub nsw i32 %349, %350
  store i32 %351, i32* %9, align 4
  %352 = load i32, i32* %9, align 4
  %353 = load i32, i32* %6, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %362

355:                                              ; preds = %338
  %356 = load i32, i32* %11, align 4
  %357 = load i32, i32* %6, align 4
  %358 = icmp sgt i32 %356, %357
  br i1 %358, label %359, label %361

359:                                              ; preds = %355
  %360 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.8, i64 0, i64 0))
  br label %361

361:                                              ; preds = %359, %355
  br label %388

362:                                              ; preds = %338
  %363 = load i32, i32* %9, align 4
  %364 = load i32, i32* %8, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %387

366:                                              ; preds = %362
  %367 = load i32, i32* %11, align 4
  %368 = add nsw i32 %367, 1
  %369 = load i32, i32* %8, align 4
  %370 = icmp sgt i32 %368, %369
  br i1 %370, label %371, label %373

371:                                              ; preds = %366
  %372 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.9, i64 0, i64 0))
  br label %386

373:                                              ; preds = %366
  %374 = load i32, i32* %15, align 4
  %375 = load i32, i32* %9, align 4
  %376 = load i32, i32* %11, align 4
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* %31, align 4
  %379 = call i32 (i32, i8*, ...) @edac_dbg(i32 3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %374, i32 %375, i32 %376, i32 %377, i32 %378)
  %380 = load i32, i32* %10, align 4
  %381 = load i32, i32* %31, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = add nsw i32 %384, %380
  store i32 %385, i32* %383, align 4
  br label %386

386:                                              ; preds = %373, %371
  br label %387

387:                                              ; preds = %386, %362
  br label %388

388:                                              ; preds = %387, %361
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %15, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %15, align 4
  br label %326

392:                                              ; preds = %337, %326
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %31, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %31, align 4
  br label %319

396:                                              ; preds = %319
  store i32 0, i32* %31, align 4
  br label %397

397:                                              ; preds = %411, %396
  %398 = load i32, i32* %31, align 4
  %399 = icmp slt i32 %398, 2
  br i1 %399, label %400, label %414

400:                                              ; preds = %397
  %401 = load i32, i32* %31, align 4
  %402 = load i32, i32* %31, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* %31, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = call i32 (i32, i8*, ...) @edac_dbg(i32 3, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0), i32 %401, i32 %405, i32 %409)
  br label %411

411:                                              ; preds = %400
  %412 = load i32, i32* %31, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %31, align 4
  br label %397

414:                                              ; preds = %397
  %415 = load i32, i32* %27, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %414
  br label %516

418:                                              ; preds = %414
  store i32 0, i32* %32, align 4
  br label %419

419:                                              ; preds = %427, %418
  %420 = load i32, i32* %32, align 4
  %421 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  %422 = icmp slt i32 %420, %421
  br i1 %422, label %423, label %430

423:                                              ; preds = %419
  %424 = load i32, i32* %32, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %54, i64 %425
  store i32 0, i32* %426, align 4
  br label %427

427:                                              ; preds = %423
  %428 = load i32, i32* %32, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %32, align 4
  br label %419

430:                                              ; preds = %419
  store i32 0, i32* %32, align 4
  br label %431

431:                                              ; preds = %473, %430
  %432 = load i32, i32* %32, align 4
  %433 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  %434 = icmp slt i32 %432, %433
  br i1 %434, label %435, label %476

435:                                              ; preds = %431
  store i32 0, i32* %35, align 4
  br label %436

436:                                              ; preds = %469, %435
  %437 = load i32, i32* %35, align 4
  %438 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  %439 = icmp slt i32 %437, %438
  br i1 %439, label %440, label %472

440:                                              ; preds = %436
  store i32 0, i32* %36, align 4
  br label %441

441:                                              ; preds = %465, %440
  %442 = load i32, i32* %36, align 4
  %443 = load i32, i32* @KNL_MAX_CHAS, align 4
  %444 = icmp slt i32 %442, %443
  br i1 %444, label %445, label %468

445:                                              ; preds = %441
  %446 = load i32, i32* %35, align 4
  %447 = load i32, i32* %36, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i64, i64* %40, i64 %448
  %450 = load i64, i64* %449, align 8
  %451 = call i32 @knl_get_mc_route(i32 %446, i64 %450)
  %452 = load i32, i32* %32, align 4
  %453 = icmp eq i32 %451, %452
  br i1 %453, label %454, label %464

454:                                              ; preds = %445
  %455 = load i32, i32* %32, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %54, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %464, label %460

460:                                              ; preds = %454
  %461 = load i32, i32* %32, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %54, i64 %462
  store i32 1, i32* %463, align 4
  br label %468

464:                                              ; preds = %454, %445
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %36, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %36, align 4
  br label %441

468:                                              ; preds = %460, %441
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %35, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %35, align 4
  br label %436

472:                                              ; preds = %436
  br label %473

473:                                              ; preds = %472
  %474 = load i32, i32* %32, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %32, align 4
  br label %431

476:                                              ; preds = %431
  store i32 0, i32* %32, align 4
  br label %477

477:                                              ; preds = %512, %476
  %478 = load i32, i32* %32, align 4
  %479 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  %480 = icmp slt i32 %478, %479
  br i1 %480, label %481, label %515

481:                                              ; preds = %477
  %482 = load i32, i32* %32, align 4
  %483 = call i32 @knl_channel_mc(i32 %482)
  store i32 %483, i32* %31, align 4
  %484 = load i32, i32* %32, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %54, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %511

489:                                              ; preds = %481
  %490 = load i32, i32* %32, align 4
  %491 = load i32, i32* %31, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* %16, align 4
  %496 = sdiv i32 %494, %495
  %497 = load i32, i32* %14, align 4
  %498 = call i32 (i32, i8*, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %490, i32 %496, i32 %497)
  %499 = load i32, i32* %31, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = load i32, i32* %16, align 4
  %504 = sdiv i32 %502, %503
  %505 = load i32*, i32** %5, align 8
  %506 = load i32, i32* %32, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = add nsw i32 %509, %504
  store i32 %510, i32* %508, align 4
  br label %511

511:                                              ; preds = %489, %481
  br label %512

512:                                              ; preds = %511
  %513 = load i32, i32* %32, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %32, align 4
  br label %477

515:                                              ; preds = %477
  br label %516

516:                                              ; preds = %515, %417
  %517 = load i32, i32* %14, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %14, align 4
  br label %220

519:                                              ; preds = %244, %220
  store i32 0, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %520

520:                                              ; preds = %519, %290
  %521 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %521)
  %522 = load i32, i32* %3, align 4
  ret i32 %522
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i64*) #2

declare dso_local i32 @knl_show_edc_route(i64, i8*) #2

declare dso_local i32 @edac_dbg(i32, i8*, ...) #2

declare dso_local i32 @knl_show_mc_route(i64, i8*) #2

declare dso_local i32 @DRAM_RULE_ENABLE(i64) #2

declare dso_local i32 @KNL_EDRAM_ONLY(i64) #2

declare dso_local i64 @sad_pkg(i32, i64, i32) #2

declare dso_local i64 @KNL_MOD3(i64) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i64 @knl_get_tad(%struct.sbridge_pvt*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @knl_get_mc_route(i32, i64) #2

declare dso_local i32 @knl_channel_mc(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
