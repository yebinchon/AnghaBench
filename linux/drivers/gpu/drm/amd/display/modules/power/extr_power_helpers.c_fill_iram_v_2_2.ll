; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/power/extr_power_helpers.c_fill_iram_v_2_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/power/extr_power_helpers.c_fill_iram_v_2_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iram_table_v_2_2 = type { i32, i32*, i32**, i32**, i32*, i32*, i32*, i8**, i8**, i8**, i8***, i8*** }
%struct.dmcu_iram_parameters = type { i32 }

@min_reduction_table_v_2_2 = common dso_local global i8** null, align 8
@abm_config = common dso_local global i64** null, align 8
@max_reduction_table_v_2_2 = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_iram_v_2_2(%struct.iram_table_v_2_2* %0, i32 %1) #0 {
  %3 = alloca %struct.dmcu_iram_parameters, align 4
  %4 = alloca %struct.iram_table_v_2_2*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %3, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store %struct.iram_table_v_2_2* %0, %struct.iram_table_v_2_2** %4, align 8
  %7 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %10 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %12 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 179, i32* %14, align 4
  %15 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %16 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 168, i32* %18, align 4
  %19 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %20 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 152, i32* %22, align 4
  %23 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %24 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  store i32 104, i32* %26, align 4
  %27 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %28 = load i64**, i64*** @abm_config, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64*, i64** %28, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8*, i8** %27, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %38 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %37, i32 0, i32 11
  %39 = load i8***, i8**** %38, align 8
  %40 = getelementptr inbounds i8**, i8*** %39, i64 0
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %36, i8** %42, align 8
  %43 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %44 = load i64**, i64*** @abm_config, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64*, i64** %44, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8*, i8** %43, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %54 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %53, i32 0, i32 11
  %55 = load i8***, i8**** %54, align 8
  %56 = getelementptr inbounds i8**, i8*** %55, i64 1
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %52, i8** %58, align 8
  %59 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %60 = load i64**, i64*** @abm_config, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64*, i64** %60, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8*, i8** %59, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %70 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %69, i32 0, i32 11
  %71 = load i8***, i8**** %70, align 8
  %72 = getelementptr inbounds i8**, i8*** %71, i64 2
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  store i8* %68, i8** %74, align 8
  %75 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %76 = load i64**, i64*** @abm_config, align 8
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64*, i64** %76, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i8*, i8** %75, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %86 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %85, i32 0, i32 11
  %87 = load i8***, i8**** %86, align 8
  %88 = getelementptr inbounds i8**, i8*** %87, i64 3
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  store i8* %84, i8** %90, align 8
  %91 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %92 = load i64**, i64*** @abm_config, align 8
  %93 = load i32, i32* %5, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64*, i64** %92, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i8*, i8** %91, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %102 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %101, i32 0, i32 11
  %103 = load i8***, i8**** %102, align 8
  %104 = getelementptr inbounds i8**, i8*** %103, i64 4
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  store i8* %100, i8** %106, align 8
  %107 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %108 = load i64**, i64*** @abm_config, align 8
  %109 = load i32, i32* %5, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i64*, i64** %108, i64 %110
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i8*, i8** %107, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %118 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %117, i32 0, i32 10
  %119 = load i8***, i8**** %118, align 8
  %120 = getelementptr inbounds i8**, i8*** %119, i64 0
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  store i8* %116, i8** %122, align 8
  %123 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %124 = load i64**, i64*** @abm_config, align 8
  %125 = load i32, i32* %5, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i64*, i64** %124, i64 %126
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i8*, i8** %123, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %134 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %133, i32 0, i32 10
  %135 = load i8***, i8**** %134, align 8
  %136 = getelementptr inbounds i8**, i8*** %135, i64 1
  %137 = load i8**, i8*** %136, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  store i8* %132, i8** %138, align 8
  %139 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %140 = load i64**, i64*** @abm_config, align 8
  %141 = load i32, i32* %5, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i64*, i64** %140, i64 %142
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8*, i8** %139, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %150 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %149, i32 0, i32 10
  %151 = load i8***, i8**** %150, align 8
  %152 = getelementptr inbounds i8**, i8*** %151, i64 2
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 0
  store i8* %148, i8** %154, align 8
  %155 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %156 = load i64**, i64*** @abm_config, align 8
  %157 = load i32, i32* %5, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i64*, i64** %156, i64 %158
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i8*, i8** %155, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %166 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %165, i32 0, i32 10
  %167 = load i8***, i8**** %166, align 8
  %168 = getelementptr inbounds i8**, i8*** %167, i64 3
  %169 = load i8**, i8*** %168, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  store i8* %164, i8** %170, align 8
  %171 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %172 = load i64**, i64*** @abm_config, align 8
  %173 = load i32, i32* %5, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i64*, i64** %172, i64 %174
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i8*, i8** %171, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %182 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %181, i32 0, i32 10
  %183 = load i8***, i8**** %182, align 8
  %184 = getelementptr inbounds i8**, i8*** %183, i64 4
  %185 = load i8**, i8*** %184, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 0
  store i8* %180, i8** %186, align 8
  %187 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %188 = load i64**, i64*** @abm_config, align 8
  %189 = load i32, i32* %5, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i64*, i64** %188, i64 %190
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 1
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds i8*, i8** %187, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %198 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %197, i32 0, i32 11
  %199 = load i8***, i8**** %198, align 8
  %200 = getelementptr inbounds i8**, i8*** %199, i64 0
  %201 = load i8**, i8*** %200, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 1
  store i8* %196, i8** %202, align 8
  %203 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %204 = load i64**, i64*** @abm_config, align 8
  %205 = load i32, i32* %5, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i64*, i64** %204, i64 %206
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i8*, i8** %203, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %214 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %213, i32 0, i32 11
  %215 = load i8***, i8**** %214, align 8
  %216 = getelementptr inbounds i8**, i8*** %215, i64 1
  %217 = load i8**, i8*** %216, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 1
  store i8* %212, i8** %218, align 8
  %219 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %220 = load i64**, i64*** @abm_config, align 8
  %221 = load i32, i32* %5, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i64*, i64** %220, i64 %222
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 1
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i8*, i8** %219, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %230 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %229, i32 0, i32 11
  %231 = load i8***, i8**** %230, align 8
  %232 = getelementptr inbounds i8**, i8*** %231, i64 2
  %233 = load i8**, i8*** %232, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 1
  store i8* %228, i8** %234, align 8
  %235 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %236 = load i64**, i64*** @abm_config, align 8
  %237 = load i32, i32* %5, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i64*, i64** %236, i64 %238
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 1
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds i8*, i8** %235, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %246 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %245, i32 0, i32 11
  %247 = load i8***, i8**** %246, align 8
  %248 = getelementptr inbounds i8**, i8*** %247, i64 3
  %249 = load i8**, i8*** %248, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 1
  store i8* %244, i8** %250, align 8
  %251 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %252 = load i64**, i64*** @abm_config, align 8
  %253 = load i32, i32* %5, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i64*, i64** %252, i64 %254
  %256 = load i64*, i64** %255, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 1
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds i8*, i8** %251, i64 %258
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %262 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %261, i32 0, i32 11
  %263 = load i8***, i8**** %262, align 8
  %264 = getelementptr inbounds i8**, i8*** %263, i64 4
  %265 = load i8**, i8*** %264, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i64 1
  store i8* %260, i8** %266, align 8
  %267 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %268 = load i64**, i64*** @abm_config, align 8
  %269 = load i32, i32* %5, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i64*, i64** %268, i64 %270
  %272 = load i64*, i64** %271, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 1
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds i8*, i8** %267, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %278 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %277, i32 0, i32 10
  %279 = load i8***, i8**** %278, align 8
  %280 = getelementptr inbounds i8**, i8*** %279, i64 0
  %281 = load i8**, i8*** %280, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 1
  store i8* %276, i8** %282, align 8
  %283 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %284 = load i64**, i64*** @abm_config, align 8
  %285 = load i32, i32* %5, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i64*, i64** %284, i64 %286
  %288 = load i64*, i64** %287, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 1
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds i8*, i8** %283, i64 %290
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %294 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %293, i32 0, i32 10
  %295 = load i8***, i8**** %294, align 8
  %296 = getelementptr inbounds i8**, i8*** %295, i64 1
  %297 = load i8**, i8*** %296, align 8
  %298 = getelementptr inbounds i8*, i8** %297, i64 1
  store i8* %292, i8** %298, align 8
  %299 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %300 = load i64**, i64*** @abm_config, align 8
  %301 = load i32, i32* %5, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i64*, i64** %300, i64 %302
  %304 = load i64*, i64** %303, align 8
  %305 = getelementptr inbounds i64, i64* %304, i64 1
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds i8*, i8** %299, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %310 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %309, i32 0, i32 10
  %311 = load i8***, i8**** %310, align 8
  %312 = getelementptr inbounds i8**, i8*** %311, i64 2
  %313 = load i8**, i8*** %312, align 8
  %314 = getelementptr inbounds i8*, i8** %313, i64 1
  store i8* %308, i8** %314, align 8
  %315 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %316 = load i64**, i64*** @abm_config, align 8
  %317 = load i32, i32* %5, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds i64*, i64** %316, i64 %318
  %320 = load i64*, i64** %319, align 8
  %321 = getelementptr inbounds i64, i64* %320, i64 1
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds i8*, i8** %315, i64 %322
  %324 = load i8*, i8** %323, align 8
  %325 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %326 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %325, i32 0, i32 10
  %327 = load i8***, i8**** %326, align 8
  %328 = getelementptr inbounds i8**, i8*** %327, i64 3
  %329 = load i8**, i8*** %328, align 8
  %330 = getelementptr inbounds i8*, i8** %329, i64 1
  store i8* %324, i8** %330, align 8
  %331 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %332 = load i64**, i64*** @abm_config, align 8
  %333 = load i32, i32* %5, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds i64*, i64** %332, i64 %334
  %336 = load i64*, i64** %335, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 1
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds i8*, i8** %331, i64 %338
  %340 = load i8*, i8** %339, align 8
  %341 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %342 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %341, i32 0, i32 10
  %343 = load i8***, i8**** %342, align 8
  %344 = getelementptr inbounds i8**, i8*** %343, i64 4
  %345 = load i8**, i8*** %344, align 8
  %346 = getelementptr inbounds i8*, i8** %345, i64 1
  store i8* %340, i8** %346, align 8
  %347 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %348 = load i64**, i64*** @abm_config, align 8
  %349 = load i32, i32* %5, align 4
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds i64*, i64** %348, i64 %350
  %352 = load i64*, i64** %351, align 8
  %353 = getelementptr inbounds i64, i64* %352, i64 2
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds i8*, i8** %347, i64 %354
  %356 = load i8*, i8** %355, align 8
  %357 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %358 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %357, i32 0, i32 11
  %359 = load i8***, i8**** %358, align 8
  %360 = getelementptr inbounds i8**, i8*** %359, i64 0
  %361 = load i8**, i8*** %360, align 8
  %362 = getelementptr inbounds i8*, i8** %361, i64 2
  store i8* %356, i8** %362, align 8
  %363 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %364 = load i64**, i64*** @abm_config, align 8
  %365 = load i32, i32* %5, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds i64*, i64** %364, i64 %366
  %368 = load i64*, i64** %367, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 2
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds i8*, i8** %363, i64 %370
  %372 = load i8*, i8** %371, align 8
  %373 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %374 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %373, i32 0, i32 11
  %375 = load i8***, i8**** %374, align 8
  %376 = getelementptr inbounds i8**, i8*** %375, i64 1
  %377 = load i8**, i8*** %376, align 8
  %378 = getelementptr inbounds i8*, i8** %377, i64 2
  store i8* %372, i8** %378, align 8
  %379 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %380 = load i64**, i64*** @abm_config, align 8
  %381 = load i32, i32* %5, align 4
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds i64*, i64** %380, i64 %382
  %384 = load i64*, i64** %383, align 8
  %385 = getelementptr inbounds i64, i64* %384, i64 2
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds i8*, i8** %379, i64 %386
  %388 = load i8*, i8** %387, align 8
  %389 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %390 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %389, i32 0, i32 11
  %391 = load i8***, i8**** %390, align 8
  %392 = getelementptr inbounds i8**, i8*** %391, i64 2
  %393 = load i8**, i8*** %392, align 8
  %394 = getelementptr inbounds i8*, i8** %393, i64 2
  store i8* %388, i8** %394, align 8
  %395 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %396 = load i64**, i64*** @abm_config, align 8
  %397 = load i32, i32* %5, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds i64*, i64** %396, i64 %398
  %400 = load i64*, i64** %399, align 8
  %401 = getelementptr inbounds i64, i64* %400, i64 2
  %402 = load i64, i64* %401, align 8
  %403 = getelementptr inbounds i8*, i8** %395, i64 %402
  %404 = load i8*, i8** %403, align 8
  %405 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %406 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %405, i32 0, i32 11
  %407 = load i8***, i8**** %406, align 8
  %408 = getelementptr inbounds i8**, i8*** %407, i64 3
  %409 = load i8**, i8*** %408, align 8
  %410 = getelementptr inbounds i8*, i8** %409, i64 2
  store i8* %404, i8** %410, align 8
  %411 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %412 = load i64**, i64*** @abm_config, align 8
  %413 = load i32, i32* %5, align 4
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds i64*, i64** %412, i64 %414
  %416 = load i64*, i64** %415, align 8
  %417 = getelementptr inbounds i64, i64* %416, i64 2
  %418 = load i64, i64* %417, align 8
  %419 = getelementptr inbounds i8*, i8** %411, i64 %418
  %420 = load i8*, i8** %419, align 8
  %421 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %422 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %421, i32 0, i32 11
  %423 = load i8***, i8**** %422, align 8
  %424 = getelementptr inbounds i8**, i8*** %423, i64 4
  %425 = load i8**, i8*** %424, align 8
  %426 = getelementptr inbounds i8*, i8** %425, i64 2
  store i8* %420, i8** %426, align 8
  %427 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %428 = load i64**, i64*** @abm_config, align 8
  %429 = load i32, i32* %5, align 4
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds i64*, i64** %428, i64 %430
  %432 = load i64*, i64** %431, align 8
  %433 = getelementptr inbounds i64, i64* %432, i64 2
  %434 = load i64, i64* %433, align 8
  %435 = getelementptr inbounds i8*, i8** %427, i64 %434
  %436 = load i8*, i8** %435, align 8
  %437 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %438 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %437, i32 0, i32 10
  %439 = load i8***, i8**** %438, align 8
  %440 = getelementptr inbounds i8**, i8*** %439, i64 0
  %441 = load i8**, i8*** %440, align 8
  %442 = getelementptr inbounds i8*, i8** %441, i64 2
  store i8* %436, i8** %442, align 8
  %443 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %444 = load i64**, i64*** @abm_config, align 8
  %445 = load i32, i32* %5, align 4
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds i64*, i64** %444, i64 %446
  %448 = load i64*, i64** %447, align 8
  %449 = getelementptr inbounds i64, i64* %448, i64 2
  %450 = load i64, i64* %449, align 8
  %451 = getelementptr inbounds i8*, i8** %443, i64 %450
  %452 = load i8*, i8** %451, align 8
  %453 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %454 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %453, i32 0, i32 10
  %455 = load i8***, i8**** %454, align 8
  %456 = getelementptr inbounds i8**, i8*** %455, i64 1
  %457 = load i8**, i8*** %456, align 8
  %458 = getelementptr inbounds i8*, i8** %457, i64 2
  store i8* %452, i8** %458, align 8
  %459 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %460 = load i64**, i64*** @abm_config, align 8
  %461 = load i32, i32* %5, align 4
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds i64*, i64** %460, i64 %462
  %464 = load i64*, i64** %463, align 8
  %465 = getelementptr inbounds i64, i64* %464, i64 2
  %466 = load i64, i64* %465, align 8
  %467 = getelementptr inbounds i8*, i8** %459, i64 %466
  %468 = load i8*, i8** %467, align 8
  %469 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %470 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %469, i32 0, i32 10
  %471 = load i8***, i8**** %470, align 8
  %472 = getelementptr inbounds i8**, i8*** %471, i64 2
  %473 = load i8**, i8*** %472, align 8
  %474 = getelementptr inbounds i8*, i8** %473, i64 2
  store i8* %468, i8** %474, align 8
  %475 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %476 = load i64**, i64*** @abm_config, align 8
  %477 = load i32, i32* %5, align 4
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds i64*, i64** %476, i64 %478
  %480 = load i64*, i64** %479, align 8
  %481 = getelementptr inbounds i64, i64* %480, i64 2
  %482 = load i64, i64* %481, align 8
  %483 = getelementptr inbounds i8*, i8** %475, i64 %482
  %484 = load i8*, i8** %483, align 8
  %485 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %486 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %485, i32 0, i32 10
  %487 = load i8***, i8**** %486, align 8
  %488 = getelementptr inbounds i8**, i8*** %487, i64 3
  %489 = load i8**, i8*** %488, align 8
  %490 = getelementptr inbounds i8*, i8** %489, i64 2
  store i8* %484, i8** %490, align 8
  %491 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %492 = load i64**, i64*** @abm_config, align 8
  %493 = load i32, i32* %5, align 4
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds i64*, i64** %492, i64 %494
  %496 = load i64*, i64** %495, align 8
  %497 = getelementptr inbounds i64, i64* %496, i64 2
  %498 = load i64, i64* %497, align 8
  %499 = getelementptr inbounds i8*, i8** %491, i64 %498
  %500 = load i8*, i8** %499, align 8
  %501 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %502 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %501, i32 0, i32 10
  %503 = load i8***, i8**** %502, align 8
  %504 = getelementptr inbounds i8**, i8*** %503, i64 4
  %505 = load i8**, i8*** %504, align 8
  %506 = getelementptr inbounds i8*, i8** %505, i64 2
  store i8* %500, i8** %506, align 8
  %507 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %508 = load i64**, i64*** @abm_config, align 8
  %509 = load i32, i32* %5, align 4
  %510 = zext i32 %509 to i64
  %511 = getelementptr inbounds i64*, i64** %508, i64 %510
  %512 = load i64*, i64** %511, align 8
  %513 = getelementptr inbounds i64, i64* %512, i64 3
  %514 = load i64, i64* %513, align 8
  %515 = getelementptr inbounds i8*, i8** %507, i64 %514
  %516 = load i8*, i8** %515, align 8
  %517 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %518 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %517, i32 0, i32 11
  %519 = load i8***, i8**** %518, align 8
  %520 = getelementptr inbounds i8**, i8*** %519, i64 0
  %521 = load i8**, i8*** %520, align 8
  %522 = getelementptr inbounds i8*, i8** %521, i64 3
  store i8* %516, i8** %522, align 8
  %523 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %524 = load i64**, i64*** @abm_config, align 8
  %525 = load i32, i32* %5, align 4
  %526 = zext i32 %525 to i64
  %527 = getelementptr inbounds i64*, i64** %524, i64 %526
  %528 = load i64*, i64** %527, align 8
  %529 = getelementptr inbounds i64, i64* %528, i64 3
  %530 = load i64, i64* %529, align 8
  %531 = getelementptr inbounds i8*, i8** %523, i64 %530
  %532 = load i8*, i8** %531, align 8
  %533 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %534 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %533, i32 0, i32 11
  %535 = load i8***, i8**** %534, align 8
  %536 = getelementptr inbounds i8**, i8*** %535, i64 1
  %537 = load i8**, i8*** %536, align 8
  %538 = getelementptr inbounds i8*, i8** %537, i64 3
  store i8* %532, i8** %538, align 8
  %539 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %540 = load i64**, i64*** @abm_config, align 8
  %541 = load i32, i32* %5, align 4
  %542 = zext i32 %541 to i64
  %543 = getelementptr inbounds i64*, i64** %540, i64 %542
  %544 = load i64*, i64** %543, align 8
  %545 = getelementptr inbounds i64, i64* %544, i64 3
  %546 = load i64, i64* %545, align 8
  %547 = getelementptr inbounds i8*, i8** %539, i64 %546
  %548 = load i8*, i8** %547, align 8
  %549 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %550 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %549, i32 0, i32 11
  %551 = load i8***, i8**** %550, align 8
  %552 = getelementptr inbounds i8**, i8*** %551, i64 2
  %553 = load i8**, i8*** %552, align 8
  %554 = getelementptr inbounds i8*, i8** %553, i64 3
  store i8* %548, i8** %554, align 8
  %555 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %556 = load i64**, i64*** @abm_config, align 8
  %557 = load i32, i32* %5, align 4
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds i64*, i64** %556, i64 %558
  %560 = load i64*, i64** %559, align 8
  %561 = getelementptr inbounds i64, i64* %560, i64 3
  %562 = load i64, i64* %561, align 8
  %563 = getelementptr inbounds i8*, i8** %555, i64 %562
  %564 = load i8*, i8** %563, align 8
  %565 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %566 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %565, i32 0, i32 11
  %567 = load i8***, i8**** %566, align 8
  %568 = getelementptr inbounds i8**, i8*** %567, i64 3
  %569 = load i8**, i8*** %568, align 8
  %570 = getelementptr inbounds i8*, i8** %569, i64 3
  store i8* %564, i8** %570, align 8
  %571 = load i8**, i8*** @min_reduction_table_v_2_2, align 8
  %572 = load i64**, i64*** @abm_config, align 8
  %573 = load i32, i32* %5, align 4
  %574 = zext i32 %573 to i64
  %575 = getelementptr inbounds i64*, i64** %572, i64 %574
  %576 = load i64*, i64** %575, align 8
  %577 = getelementptr inbounds i64, i64* %576, i64 3
  %578 = load i64, i64* %577, align 8
  %579 = getelementptr inbounds i8*, i8** %571, i64 %578
  %580 = load i8*, i8** %579, align 8
  %581 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %582 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %581, i32 0, i32 11
  %583 = load i8***, i8**** %582, align 8
  %584 = getelementptr inbounds i8**, i8*** %583, i64 4
  %585 = load i8**, i8*** %584, align 8
  %586 = getelementptr inbounds i8*, i8** %585, i64 3
  store i8* %580, i8** %586, align 8
  %587 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %588 = load i64**, i64*** @abm_config, align 8
  %589 = load i32, i32* %5, align 4
  %590 = zext i32 %589 to i64
  %591 = getelementptr inbounds i64*, i64** %588, i64 %590
  %592 = load i64*, i64** %591, align 8
  %593 = getelementptr inbounds i64, i64* %592, i64 3
  %594 = load i64, i64* %593, align 8
  %595 = getelementptr inbounds i8*, i8** %587, i64 %594
  %596 = load i8*, i8** %595, align 8
  %597 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %598 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %597, i32 0, i32 10
  %599 = load i8***, i8**** %598, align 8
  %600 = getelementptr inbounds i8**, i8*** %599, i64 0
  %601 = load i8**, i8*** %600, align 8
  %602 = getelementptr inbounds i8*, i8** %601, i64 3
  store i8* %596, i8** %602, align 8
  %603 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %604 = load i64**, i64*** @abm_config, align 8
  %605 = load i32, i32* %5, align 4
  %606 = zext i32 %605 to i64
  %607 = getelementptr inbounds i64*, i64** %604, i64 %606
  %608 = load i64*, i64** %607, align 8
  %609 = getelementptr inbounds i64, i64* %608, i64 3
  %610 = load i64, i64* %609, align 8
  %611 = getelementptr inbounds i8*, i8** %603, i64 %610
  %612 = load i8*, i8** %611, align 8
  %613 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %614 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %613, i32 0, i32 10
  %615 = load i8***, i8**** %614, align 8
  %616 = getelementptr inbounds i8**, i8*** %615, i64 1
  %617 = load i8**, i8*** %616, align 8
  %618 = getelementptr inbounds i8*, i8** %617, i64 3
  store i8* %612, i8** %618, align 8
  %619 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %620 = load i64**, i64*** @abm_config, align 8
  %621 = load i32, i32* %5, align 4
  %622 = zext i32 %621 to i64
  %623 = getelementptr inbounds i64*, i64** %620, i64 %622
  %624 = load i64*, i64** %623, align 8
  %625 = getelementptr inbounds i64, i64* %624, i64 3
  %626 = load i64, i64* %625, align 8
  %627 = getelementptr inbounds i8*, i8** %619, i64 %626
  %628 = load i8*, i8** %627, align 8
  %629 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %630 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %629, i32 0, i32 10
  %631 = load i8***, i8**** %630, align 8
  %632 = getelementptr inbounds i8**, i8*** %631, i64 2
  %633 = load i8**, i8*** %632, align 8
  %634 = getelementptr inbounds i8*, i8** %633, i64 3
  store i8* %628, i8** %634, align 8
  %635 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %636 = load i64**, i64*** @abm_config, align 8
  %637 = load i32, i32* %5, align 4
  %638 = zext i32 %637 to i64
  %639 = getelementptr inbounds i64*, i64** %636, i64 %638
  %640 = load i64*, i64** %639, align 8
  %641 = getelementptr inbounds i64, i64* %640, i64 3
  %642 = load i64, i64* %641, align 8
  %643 = getelementptr inbounds i8*, i8** %635, i64 %642
  %644 = load i8*, i8** %643, align 8
  %645 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %646 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %645, i32 0, i32 10
  %647 = load i8***, i8**** %646, align 8
  %648 = getelementptr inbounds i8**, i8*** %647, i64 3
  %649 = load i8**, i8*** %648, align 8
  %650 = getelementptr inbounds i8*, i8** %649, i64 3
  store i8* %644, i8** %650, align 8
  %651 = load i8**, i8*** @max_reduction_table_v_2_2, align 8
  %652 = load i64**, i64*** @abm_config, align 8
  %653 = load i32, i32* %5, align 4
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds i64*, i64** %652, i64 %654
  %656 = load i64*, i64** %655, align 8
  %657 = getelementptr inbounds i64, i64* %656, i64 3
  %658 = load i64, i64* %657, align 8
  %659 = getelementptr inbounds i8*, i8** %651, i64 %658
  %660 = load i8*, i8** %659, align 8
  %661 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %662 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %661, i32 0, i32 10
  %663 = load i8***, i8**** %662, align 8
  %664 = getelementptr inbounds i8**, i8*** %663, i64 4
  %665 = load i8**, i8*** %664, align 8
  %666 = getelementptr inbounds i8*, i8** %665, i64 3
  store i8* %660, i8** %666, align 8
  %667 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %668 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %667, i32 0, i32 2
  %669 = load i32**, i32*** %668, align 8
  %670 = getelementptr inbounds i32*, i32** %669, i64 0
  %671 = load i32*, i32** %670, align 8
  %672 = getelementptr inbounds i32, i32* %671, i64 0
  store i32 32, i32* %672, align 4
  %673 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %674 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %673, i32 0, i32 2
  %675 = load i32**, i32*** %674, align 8
  %676 = getelementptr inbounds i32*, i32** %675, i64 0
  %677 = load i32*, i32** %676, align 8
  %678 = getelementptr inbounds i32, i32* %677, i64 1
  store i32 32, i32* %678, align 4
  %679 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %680 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %679, i32 0, i32 2
  %681 = load i32**, i32*** %680, align 8
  %682 = getelementptr inbounds i32*, i32** %681, i64 0
  %683 = load i32*, i32** %682, align 8
  %684 = getelementptr inbounds i32, i32* %683, i64 2
  store i32 32, i32* %684, align 4
  %685 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %686 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %685, i32 0, i32 2
  %687 = load i32**, i32*** %686, align 8
  %688 = getelementptr inbounds i32*, i32** %687, i64 0
  %689 = load i32*, i32** %688, align 8
  %690 = getelementptr inbounds i32, i32* %689, i64 3
  store i32 32, i32* %690, align 4
  %691 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %692 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %691, i32 0, i32 2
  %693 = load i32**, i32*** %692, align 8
  %694 = getelementptr inbounds i32*, i32** %693, i64 1
  %695 = load i32*, i32** %694, align 8
  %696 = getelementptr inbounds i32, i32* %695, i64 0
  store i32 32, i32* %696, align 4
  %697 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %698 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %697, i32 0, i32 2
  %699 = load i32**, i32*** %698, align 8
  %700 = getelementptr inbounds i32*, i32** %699, i64 1
  %701 = load i32*, i32** %700, align 8
  %702 = getelementptr inbounds i32, i32* %701, i64 1
  store i32 32, i32* %702, align 4
  %703 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %704 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %703, i32 0, i32 2
  %705 = load i32**, i32*** %704, align 8
  %706 = getelementptr inbounds i32*, i32** %705, i64 1
  %707 = load i32*, i32** %706, align 8
  %708 = getelementptr inbounds i32, i32* %707, i64 2
  store i32 32, i32* %708, align 4
  %709 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %710 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %709, i32 0, i32 2
  %711 = load i32**, i32*** %710, align 8
  %712 = getelementptr inbounds i32*, i32** %711, i64 1
  %713 = load i32*, i32** %712, align 8
  %714 = getelementptr inbounds i32, i32* %713, i64 3
  store i32 32, i32* %714, align 4
  %715 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %716 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %715, i32 0, i32 2
  %717 = load i32**, i32*** %716, align 8
  %718 = getelementptr inbounds i32*, i32** %717, i64 2
  %719 = load i32*, i32** %718, align 8
  %720 = getelementptr inbounds i32, i32* %719, i64 0
  store i32 32, i32* %720, align 4
  %721 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %722 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %721, i32 0, i32 2
  %723 = load i32**, i32*** %722, align 8
  %724 = getelementptr inbounds i32*, i32** %723, i64 2
  %725 = load i32*, i32** %724, align 8
  %726 = getelementptr inbounds i32, i32* %725, i64 1
  store i32 32, i32* %726, align 4
  %727 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %728 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %727, i32 0, i32 2
  %729 = load i32**, i32*** %728, align 8
  %730 = getelementptr inbounds i32*, i32** %729, i64 2
  %731 = load i32*, i32** %730, align 8
  %732 = getelementptr inbounds i32, i32* %731, i64 2
  store i32 32, i32* %732, align 4
  %733 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %734 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %733, i32 0, i32 2
  %735 = load i32**, i32*** %734, align 8
  %736 = getelementptr inbounds i32*, i32** %735, i64 2
  %737 = load i32*, i32** %736, align 8
  %738 = getelementptr inbounds i32, i32* %737, i64 3
  store i32 32, i32* %738, align 4
  %739 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %740 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %739, i32 0, i32 2
  %741 = load i32**, i32*** %740, align 8
  %742 = getelementptr inbounds i32*, i32** %741, i64 3
  %743 = load i32*, i32** %742, align 8
  %744 = getelementptr inbounds i32, i32* %743, i64 0
  store i32 32, i32* %744, align 4
  %745 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %746 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %745, i32 0, i32 2
  %747 = load i32**, i32*** %746, align 8
  %748 = getelementptr inbounds i32*, i32** %747, i64 3
  %749 = load i32*, i32** %748, align 8
  %750 = getelementptr inbounds i32, i32* %749, i64 1
  store i32 32, i32* %750, align 4
  %751 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %752 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %751, i32 0, i32 2
  %753 = load i32**, i32*** %752, align 8
  %754 = getelementptr inbounds i32*, i32** %753, i64 3
  %755 = load i32*, i32** %754, align 8
  %756 = getelementptr inbounds i32, i32* %755, i64 2
  store i32 32, i32* %756, align 4
  %757 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %758 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %757, i32 0, i32 2
  %759 = load i32**, i32*** %758, align 8
  %760 = getelementptr inbounds i32*, i32** %759, i64 3
  %761 = load i32*, i32** %760, align 8
  %762 = getelementptr inbounds i32, i32* %761, i64 3
  store i32 32, i32* %762, align 4
  %763 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %764 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %763, i32 0, i32 2
  %765 = load i32**, i32*** %764, align 8
  %766 = getelementptr inbounds i32*, i32** %765, i64 4
  %767 = load i32*, i32** %766, align 8
  %768 = getelementptr inbounds i32, i32* %767, i64 0
  store i32 32, i32* %768, align 4
  %769 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %770 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %769, i32 0, i32 2
  %771 = load i32**, i32*** %770, align 8
  %772 = getelementptr inbounds i32*, i32** %771, i64 4
  %773 = load i32*, i32** %772, align 8
  %774 = getelementptr inbounds i32, i32* %773, i64 1
  store i32 32, i32* %774, align 4
  %775 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %776 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %775, i32 0, i32 2
  %777 = load i32**, i32*** %776, align 8
  %778 = getelementptr inbounds i32*, i32** %777, i64 4
  %779 = load i32*, i32** %778, align 8
  %780 = getelementptr inbounds i32, i32* %779, i64 2
  store i32 32, i32* %780, align 4
  %781 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %782 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %781, i32 0, i32 2
  %783 = load i32**, i32*** %782, align 8
  %784 = getelementptr inbounds i32*, i32** %783, i64 4
  %785 = load i32*, i32** %784, align 8
  %786 = getelementptr inbounds i32, i32* %785, i64 3
  store i32 32, i32* %786, align 4
  %787 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %788 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %787, i32 0, i32 3
  %789 = load i32**, i32*** %788, align 8
  %790 = getelementptr inbounds i32*, i32** %789, i64 0
  %791 = load i32*, i32** %790, align 8
  %792 = getelementptr inbounds i32, i32* %791, i64 0
  store i32 0, i32* %792, align 4
  %793 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %794 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %793, i32 0, i32 3
  %795 = load i32**, i32*** %794, align 8
  %796 = getelementptr inbounds i32*, i32** %795, i64 0
  %797 = load i32*, i32** %796, align 8
  %798 = getelementptr inbounds i32, i32* %797, i64 1
  store i32 0, i32* %798, align 4
  %799 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %800 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %799, i32 0, i32 3
  %801 = load i32**, i32*** %800, align 8
  %802 = getelementptr inbounds i32*, i32** %801, i64 0
  %803 = load i32*, i32** %802, align 8
  %804 = getelementptr inbounds i32, i32* %803, i64 2
  store i32 0, i32* %804, align 4
  %805 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %806 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %805, i32 0, i32 3
  %807 = load i32**, i32*** %806, align 8
  %808 = getelementptr inbounds i32*, i32** %807, i64 0
  %809 = load i32*, i32** %808, align 8
  %810 = getelementptr inbounds i32, i32* %809, i64 3
  store i32 0, i32* %810, align 4
  %811 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %812 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %811, i32 0, i32 3
  %813 = load i32**, i32*** %812, align 8
  %814 = getelementptr inbounds i32*, i32** %813, i64 1
  %815 = load i32*, i32** %814, align 8
  %816 = getelementptr inbounds i32, i32* %815, i64 0
  store i32 0, i32* %816, align 4
  %817 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %818 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %817, i32 0, i32 3
  %819 = load i32**, i32*** %818, align 8
  %820 = getelementptr inbounds i32*, i32** %819, i64 1
  %821 = load i32*, i32** %820, align 8
  %822 = getelementptr inbounds i32, i32* %821, i64 1
  store i32 0, i32* %822, align 4
  %823 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %824 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %823, i32 0, i32 3
  %825 = load i32**, i32*** %824, align 8
  %826 = getelementptr inbounds i32*, i32** %825, i64 1
  %827 = load i32*, i32** %826, align 8
  %828 = getelementptr inbounds i32, i32* %827, i64 2
  store i32 0, i32* %828, align 4
  %829 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %830 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %829, i32 0, i32 3
  %831 = load i32**, i32*** %830, align 8
  %832 = getelementptr inbounds i32*, i32** %831, i64 1
  %833 = load i32*, i32** %832, align 8
  %834 = getelementptr inbounds i32, i32* %833, i64 3
  store i32 0, i32* %834, align 4
  %835 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %836 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %835, i32 0, i32 3
  %837 = load i32**, i32*** %836, align 8
  %838 = getelementptr inbounds i32*, i32** %837, i64 2
  %839 = load i32*, i32** %838, align 8
  %840 = getelementptr inbounds i32, i32* %839, i64 0
  store i32 0, i32* %840, align 4
  %841 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %842 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %841, i32 0, i32 3
  %843 = load i32**, i32*** %842, align 8
  %844 = getelementptr inbounds i32*, i32** %843, i64 2
  %845 = load i32*, i32** %844, align 8
  %846 = getelementptr inbounds i32, i32* %845, i64 1
  store i32 0, i32* %846, align 4
  %847 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %848 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %847, i32 0, i32 3
  %849 = load i32**, i32*** %848, align 8
  %850 = getelementptr inbounds i32*, i32** %849, i64 2
  %851 = load i32*, i32** %850, align 8
  %852 = getelementptr inbounds i32, i32* %851, i64 2
  store i32 0, i32* %852, align 4
  %853 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %854 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %853, i32 0, i32 3
  %855 = load i32**, i32*** %854, align 8
  %856 = getelementptr inbounds i32*, i32** %855, i64 2
  %857 = load i32*, i32** %856, align 8
  %858 = getelementptr inbounds i32, i32* %857, i64 3
  store i32 0, i32* %858, align 4
  %859 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %860 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %859, i32 0, i32 3
  %861 = load i32**, i32*** %860, align 8
  %862 = getelementptr inbounds i32*, i32** %861, i64 3
  %863 = load i32*, i32** %862, align 8
  %864 = getelementptr inbounds i32, i32* %863, i64 0
  store i32 0, i32* %864, align 4
  %865 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %866 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %865, i32 0, i32 3
  %867 = load i32**, i32*** %866, align 8
  %868 = getelementptr inbounds i32*, i32** %867, i64 3
  %869 = load i32*, i32** %868, align 8
  %870 = getelementptr inbounds i32, i32* %869, i64 1
  store i32 0, i32* %870, align 4
  %871 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %872 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %871, i32 0, i32 3
  %873 = load i32**, i32*** %872, align 8
  %874 = getelementptr inbounds i32*, i32** %873, i64 3
  %875 = load i32*, i32** %874, align 8
  %876 = getelementptr inbounds i32, i32* %875, i64 2
  store i32 0, i32* %876, align 4
  %877 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %878 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %877, i32 0, i32 3
  %879 = load i32**, i32*** %878, align 8
  %880 = getelementptr inbounds i32*, i32** %879, i64 3
  %881 = load i32*, i32** %880, align 8
  %882 = getelementptr inbounds i32, i32* %881, i64 3
  store i32 0, i32* %882, align 4
  %883 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %884 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %883, i32 0, i32 3
  %885 = load i32**, i32*** %884, align 8
  %886 = getelementptr inbounds i32*, i32** %885, i64 4
  %887 = load i32*, i32** %886, align 8
  %888 = getelementptr inbounds i32, i32* %887, i64 0
  store i32 0, i32* %888, align 4
  %889 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %890 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %889, i32 0, i32 3
  %891 = load i32**, i32*** %890, align 8
  %892 = getelementptr inbounds i32*, i32** %891, i64 4
  %893 = load i32*, i32** %892, align 8
  %894 = getelementptr inbounds i32, i32* %893, i64 1
  store i32 0, i32* %894, align 4
  %895 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %896 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %895, i32 0, i32 3
  %897 = load i32**, i32*** %896, align 8
  %898 = getelementptr inbounds i32*, i32** %897, i64 4
  %899 = load i32*, i32** %898, align 8
  %900 = getelementptr inbounds i32, i32* %899, i64 2
  store i32 0, i32* %900, align 4
  %901 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %902 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %901, i32 0, i32 3
  %903 = load i32**, i32*** %902, align 8
  %904 = getelementptr inbounds i32*, i32** %903, i64 4
  %905 = load i32*, i32** %904, align 8
  %906 = getelementptr inbounds i32, i32* %905, i64 3
  store i32 0, i32* %906, align 4
  %907 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %908 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %907, i32 0, i32 4
  %909 = load i32*, i32** %908, align 8
  %910 = getelementptr inbounds i32, i32* %909, i64 0
  store i32 255, i32* %910, align 4
  %911 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %912 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %911, i32 0, i32 4
  %913 = load i32*, i32** %912, align 8
  %914 = getelementptr inbounds i32, i32* %913, i64 1
  store i32 255, i32* %914, align 4
  %915 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %916 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %915, i32 0, i32 4
  %917 = load i32*, i32** %916, align 8
  %918 = getelementptr inbounds i32, i32* %917, i64 2
  store i32 255, i32* %918, align 4
  %919 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %920 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %919, i32 0, i32 4
  %921 = load i32*, i32** %920, align 8
  %922 = getelementptr inbounds i32, i32* %921, i64 3
  store i32 192, i32* %922, align 4
  %923 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %924 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %923, i32 0, i32 5
  %925 = load i32*, i32** %924, align 8
  %926 = getelementptr inbounds i32, i32* %925, i64 0
  store i32 153, i32* %926, align 4
  %927 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %928 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %927, i32 0, i32 5
  %929 = load i32*, i32** %928, align 8
  %930 = getelementptr inbounds i32, i32* %929, i64 1
  store i32 153, i32* %930, align 4
  %931 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %932 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %931, i32 0, i32 5
  %933 = load i32*, i32** %932, align 8
  %934 = getelementptr inbounds i32, i32* %933, i64 2
  store i32 144, i32* %934, align 4
  %935 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %936 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %935, i32 0, i32 5
  %937 = load i32*, i32** %936, align 8
  %938 = getelementptr inbounds i32, i32* %937, i64 3
  store i32 128, i32* %938, align 4
  %939 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %940 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %939, i32 0, i32 6
  %941 = load i32*, i32** %940, align 8
  %942 = getelementptr inbounds i32, i32* %941, i64 0
  store i32 101, i32* %942, align 4
  %943 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %944 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %943, i32 0, i32 6
  %945 = load i32*, i32** %944, align 8
  %946 = getelementptr inbounds i32, i32* %945, i64 1
  store i32 101, i32* %946, align 4
  %947 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %948 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %947, i32 0, i32 6
  %949 = load i32*, i32** %948, align 8
  %950 = getelementptr inbounds i32, i32* %949, i64 2
  store i32 101, i32* %950, align 4
  %951 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %952 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %951, i32 0, i32 6
  %953 = load i32*, i32** %952, align 8
  %954 = getelementptr inbounds i32, i32* %953, i64 3
  store i32 101, i32* %954, align 4
  %955 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %956 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %955, i32 0, i32 6
  %957 = load i32*, i32** %956, align 8
  %958 = getelementptr inbounds i32, i32* %957, i64 4
  store i32 101, i32* %958, align 4
  %959 = call i8* @cpu_to_be16(i32 4732)
  %960 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %961 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %960, i32 0, i32 9
  %962 = load i8**, i8*** %961, align 8
  %963 = getelementptr inbounds i8*, i8** %962, i64 0
  store i8* %959, i8** %963, align 8
  %964 = call i8* @cpu_to_be16(i32 5403)
  %965 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %966 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %965, i32 0, i32 9
  %967 = load i8**, i8*** %966, align 8
  %968 = getelementptr inbounds i8*, i8** %967, i64 1
  store i8* %964, i8** %968, align 8
  %969 = call i8* @cpu_to_be16(i32 6101)
  %970 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %971 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %970, i32 0, i32 9
  %972 = load i8**, i8*** %971, align 8
  %973 = getelementptr inbounds i8*, i8** %972, i64 2
  store i8* %969, i8** %973, align 8
  %974 = call i8* @cpu_to_be16(i32 6742)
  %975 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %976 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %975, i32 0, i32 9
  %977 = load i8**, i8*** %976, align 8
  %978 = getelementptr inbounds i8*, i8** %977, i64 3
  store i8* %974, i8** %978, align 8
  %979 = call i8* @cpu_to_be16(i32 7299)
  %980 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %981 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %980, i32 0, i32 9
  %982 = load i8**, i8*** %981, align 8
  %983 = getelementptr inbounds i8*, i8** %982, i64 4
  store i8* %979, i8** %983, align 8
  %984 = call i8* @cpu_to_be16(i32 7794)
  %985 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %986 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %985, i32 0, i32 9
  %987 = load i8**, i8*** %986, align 8
  %988 = getelementptr inbounds i8*, i8** %987, i64 5
  store i8* %984, i8** %988, align 8
  %989 = call i8* @cpu_to_be16(i32 8432)
  %990 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %991 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %990, i32 0, i32 9
  %992 = load i8**, i8*** %991, align 8
  %993 = getelementptr inbounds i8*, i8** %992, i64 6
  store i8* %989, i8** %993, align 8
  %994 = call i8* @cpu_to_be16(i32 9003)
  %995 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %996 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %995, i32 0, i32 9
  %997 = load i8**, i8*** %996, align 8
  %998 = getelementptr inbounds i8*, i8** %997, i64 7
  store i8* %994, i8** %998, align 8
  %999 = call i8* @cpu_to_be16(i32 10649)
  %1000 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1001 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1000, i32 0, i32 8
  %1002 = load i8**, i8*** %1001, align 8
  %1003 = getelementptr inbounds i8*, i8** %1002, i64 0
  store i8* %999, i8** %1003, align 8
  %1004 = call i8* @cpu_to_be16(i32 14745)
  %1005 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1006 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1005, i32 0, i32 8
  %1007 = load i8**, i8*** %1006, align 8
  %1008 = getelementptr inbounds i8*, i8** %1007, i64 1
  store i8* %1004, i8** %1008, align 8
  %1009 = call i8* @cpu_to_be16(i32 18022)
  %1010 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1011 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1010, i32 0, i32 8
  %1012 = load i8**, i8*** %1011, align 8
  %1013 = getelementptr inbounds i8*, i8** %1012, i64 2
  store i8* %1009, i8** %1013, align 8
  %1014 = call i8* @cpu_to_be16(i32 22937)
  %1015 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1016 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1015, i32 0, i32 8
  %1017 = load i8**, i8*** %1016, align 8
  %1018 = getelementptr inbounds i8*, i8** %1017, i64 3
  store i8* %1014, i8** %1018, align 8
  %1019 = call i8* @cpu_to_be16(i32 25395)
  %1020 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1021 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1020, i32 0, i32 8
  %1022 = load i8**, i8*** %1021, align 8
  %1023 = getelementptr inbounds i8*, i8** %1022, i64 4
  store i8* %1019, i8** %1023, align 8
  %1024 = call i8* @cpu_to_be16(i32 30720)
  %1025 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1026 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1025, i32 0, i32 8
  %1027 = load i8**, i8*** %1026, align 8
  %1028 = getelementptr inbounds i8*, i8** %1027, i64 5
  store i8* %1024, i8** %1028, align 8
  %1029 = call i8* @cpu_to_be16(i32 35840)
  %1030 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1031 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1030, i32 0, i32 8
  %1032 = load i8**, i8*** %1031, align 8
  %1033 = getelementptr inbounds i8*, i8** %1032, i64 6
  store i8* %1029, i8** %1033, align 8
  %1034 = call i8* @cpu_to_be16(i32 40960)
  %1035 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1036 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1035, i32 0, i32 8
  %1037 = load i8**, i8*** %1036, align 8
  %1038 = getelementptr inbounds i8*, i8** %1037, i64 7
  store i8* %1034, i8** %1038, align 8
  %1039 = call i8* @cpu_to_be16(i32 13833)
  %1040 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1041 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1040, i32 0, i32 7
  %1042 = load i8**, i8*** %1041, align 8
  %1043 = getelementptr inbounds i8*, i8** %1042, i64 0
  store i8* %1039, i8** %1043, align 8
  %1044 = call i8* @cpu_to_be16(i32 11770)
  %1045 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1046 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1045, i32 0, i32 7
  %1047 = load i8**, i8*** %1046, align 8
  %1048 = getelementptr inbounds i8*, i8** %1047, i64 1
  store i8* %1044, i8** %1048, align 8
  %1049 = call i8* @cpu_to_be16(i32 10218)
  %1050 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1051 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1050, i32 0, i32 7
  %1052 = load i8**, i8*** %1051, align 8
  %1053 = getelementptr inbounds i8*, i8** %1052, i64 2
  store i8* %1049, i8** %1053, align 8
  %1054 = call i8* @cpu_to_be16(i32 9053)
  %1055 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1056 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1055, i32 0, i32 7
  %1057 = load i8**, i8*** %1056, align 8
  %1058 = getelementptr inbounds i8*, i8** %1057, i64 3
  store i8* %1054, i8** %1058, align 8
  %1059 = call i8* @cpu_to_be16(i32 8258)
  %1060 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1061 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1060, i32 0, i32 7
  %1062 = load i8**, i8*** %1061, align 8
  %1063 = getelementptr inbounds i8*, i8** %1062, i64 4
  store i8* %1059, i8** %1063, align 8
  %1064 = call i8* @cpu_to_be16(i32 7619)
  %1065 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1066 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1065, i32 0, i32 7
  %1067 = load i8**, i8*** %1066, align 8
  %1068 = getelementptr inbounds i8*, i8** %1067, i64 5
  store i8* %1064, i8** %1068, align 8
  %1069 = call i8* @cpu_to_be16(i32 6938)
  %1070 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1071 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1070, i32 0, i32 7
  %1072 = load i8**, i8*** %1071, align 8
  %1073 = getelementptr inbounds i8*, i8** %1072, i64 6
  store i8* %1069, i8** %1073, align 8
  %1074 = call i8* @cpu_to_be16(i32 6416)
  %1075 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1076 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %1075, i32 0, i32 7
  %1077 = load i8**, i8*** %1076, align 8
  %1078 = getelementptr inbounds i8*, i8** %1077, i64 7
  store i8* %1074, i8** %1078, align 8
  %1079 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %1080 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %3, i32 0, i32 0
  %1081 = load i32, i32* %1080, align 4
  %1082 = call i32 @fill_backlight_transform_table_v_2_2(i32 %1081, %struct.iram_table_v_2_2* %1079)
  ret void
}

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @fill_backlight_transform_table_v_2_2(i32, %struct.iram_table_v_2_2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
