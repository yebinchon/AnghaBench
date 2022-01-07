; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_bw_calcs_data_update_from_pplib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_bw_calcs_data_update_from_pplib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.dm_pp_clock_levels_with_latency = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_pp_wm_sets_with_clock_ranges = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.dm_pp_clock_levels = type { i32*, i32, i32 }

@MEMORY_TYPE_MULTIPLIER_CZ = common dso_local global i32 0, align 4
@bw_def_hbm = common dso_local global i64 0, align 8
@MEMORY_TYPE_HBM = common dso_local global i32 0, align 4
@DM_PP_CLOCK_TYPE_ENGINE_CLK = common dso_local global i32 0, align 4
@DM_PP_CLOCK_TYPE_MEMORY_CLK = common dso_local global i32 0, align 4
@WM_SET_A = common dso_local global i32 0, align 4
@WM_SET_B = common dso_local global i32 0, align 4
@WM_SET_C = common dso_local global i32 0, align 4
@WM_SET_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @bw_calcs_data_update_from_pplib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bw_calcs_data_update_from_pplib(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca %struct.dm_pp_clock_levels_with_latency, align 8
  %4 = alloca %struct.dm_pp_clock_levels_with_latency, align 8
  %5 = alloca %struct.dm_pp_wm_sets_with_clock_ranges, align 8
  %6 = alloca %struct.dm_pp_clock_levels, align 8
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %2, align 8
  %8 = bitcast %struct.dm_pp_clock_levels_with_latency* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = bitcast %struct.dm_pp_clock_levels_with_latency* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = bitcast %struct.dm_pp_wm_sets_with_clock_ranges* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = bitcast %struct.dm_pp_clock_levels* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i32, i32* @MEMORY_TYPE_MULTIPLIER_CZ, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.dc*, %struct.dc** %2, align 8
  %14 = getelementptr inbounds %struct.dc, %struct.dc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.dc*, %struct.dc** %2, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @bw_def_hbm, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @MEMORY_TYPE_HBM, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %17, %1
  %28 = load %struct.dc*, %struct.dc** %2, align 8
  %29 = getelementptr inbounds %struct.dc, %struct.dc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DM_PP_CLOCK_TYPE_ENGINE_CLK, align 4
  %32 = call i32 @dm_pp_get_clock_levels_by_type_with_latency(i32 %30, i32 %31, %struct.dm_pp_clock_levels_with_latency* %3)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %191, label %34

34:                                               ; preds = %27
  %35 = load %struct.dc*, %struct.dc** %2, align 8
  %36 = getelementptr inbounds %struct.dc, %struct.dc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DM_PP_CLOCK_TYPE_ENGINE_CLK, align 4
  %39 = call i32 @dm_pp_get_clock_levels_by_type(i32 %37, i32 %38, %struct.dm_pp_clock_levels* %6)
  %40 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @bw_frc_to_fixed(i32 %47, i32 1000)
  %49 = load %struct.dc*, %struct.dc** %2, align 8
  %50 = getelementptr inbounds %struct.dc, %struct.dc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 11
  store i8* %48, i8** %52, align 8
  %53 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @bw_frc_to_fixed(i32 %60, i32 1000)
  %62 = load %struct.dc*, %struct.dc** %2, align 8
  %63 = getelementptr inbounds %struct.dc, %struct.dc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 10
  store i8* %61, i8** %65, align 8
  %66 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %69, 2
  %71 = sdiv i32 %70, 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @bw_frc_to_fixed(i32 %74, i32 1000)
  %76 = load %struct.dc*, %struct.dc** %2, align 8
  %77 = getelementptr inbounds %struct.dc, %struct.dc* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 9
  store i8* %75, i8** %79, align 8
  %80 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %83, 3
  %85 = sdiv i32 %84, 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @bw_frc_to_fixed(i32 %88, i32 1000)
  %90 = load %struct.dc*, %struct.dc** %2, align 8
  %91 = getelementptr inbounds %struct.dc, %struct.dc* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 8
  store i8* %89, i8** %93, align 8
  %94 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %97, 4
  %99 = sdiv i32 %98, 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @bw_frc_to_fixed(i32 %102, i32 1000)
  %104 = load %struct.dc*, %struct.dc** %2, align 8
  %105 = getelementptr inbounds %struct.dc, %struct.dc* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 7
  store i8* %103, i8** %107, align 8
  %108 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %111, 5
  %113 = sdiv i32 %112, 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @bw_frc_to_fixed(i32 %116, i32 1000)
  %118 = load %struct.dc*, %struct.dc** %2, align 8
  %119 = getelementptr inbounds %struct.dc, %struct.dc* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 6
  store i8* %117, i8** %121, align 8
  %122 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %125, 6
  %127 = sdiv i32 %126, 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @bw_frc_to_fixed(i32 %130, i32 1000)
  %132 = load %struct.dc*, %struct.dc** %2, align 8
  %133 = getelementptr inbounds %struct.dc, %struct.dc* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 5
  store i8* %131, i8** %135, align 8
  %136 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @bw_frc_to_fixed(i32 %139, i32 1000)
  %141 = load %struct.dc*, %struct.dc** %2, align 8
  %142 = getelementptr inbounds %struct.dc, %struct.dc* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  store i8* %140, i8** %144, align 8
  %145 = load %struct.dc*, %struct.dc** %2, align 8
  %146 = getelementptr inbounds %struct.dc, %struct.dc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @DM_PP_CLOCK_TYPE_MEMORY_CLK, align 4
  %149 = call i32 @dm_pp_get_clock_levels_by_type(i32 %147, i32 %148, %struct.dm_pp_clock_levels* %6)
  %150 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %7, align 4
  %155 = mul nsw i32 %153, %154
  %156 = call i8* @bw_frc_to_fixed(i32 %155, i32 1000)
  %157 = load %struct.dc*, %struct.dc** %2, align 8
  %158 = getelementptr inbounds %struct.dc, %struct.dc* %157, i32 0, i32 1
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  store i8* %156, i8** %160, align 8
  %161 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = ashr i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %7, align 4
  %170 = mul nsw i32 %168, %169
  %171 = call i8* @bw_frc_to_fixed(i32 %170, i32 1000)
  %172 = load %struct.dc*, %struct.dc** %2, align 8
  %173 = getelementptr inbounds %struct.dc, %struct.dc* %172, i32 0, i32 1
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  store i8* %171, i8** %175, align 8
  %176 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %6, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %7, align 4
  %185 = mul nsw i32 %183, %184
  %186 = call i8* @bw_frc_to_fixed(i32 %185, i32 1000)
  %187 = load %struct.dc*, %struct.dc** %2, align 8
  %188 = getelementptr inbounds %struct.dc, %struct.dc* %187, i32 0, i32 1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i8* %186, i8** %190, align 8
  br label %543

191:                                              ; preds = %27
  %192 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @bw_frc_to_fixed(i32 %200, i32 1000)
  %202 = load %struct.dc*, %struct.dc** %2, align 8
  %203 = getelementptr inbounds %struct.dc, %struct.dc* %202, i32 0, i32 1
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 11
  store i8* %201, i8** %205, align 8
  %206 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sdiv i32 %209, 8
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @bw_frc_to_fixed(i32 %214, i32 1000)
  %216 = load %struct.dc*, %struct.dc** %2, align 8
  %217 = getelementptr inbounds %struct.dc, %struct.dc* %216, i32 0, i32 1
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 10
  store i8* %215, i8** %219, align 8
  %220 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = mul nsw i32 %223, 2
  %225 = sdiv i32 %224, 8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i8* @bw_frc_to_fixed(i32 %229, i32 1000)
  %231 = load %struct.dc*, %struct.dc** %2, align 8
  %232 = getelementptr inbounds %struct.dc, %struct.dc* %231, i32 0, i32 1
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 9
  store i8* %230, i8** %234, align 8
  %235 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = mul nsw i32 %238, 3
  %240 = sdiv i32 %239, 8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @bw_frc_to_fixed(i32 %244, i32 1000)
  %246 = load %struct.dc*, %struct.dc** %2, align 8
  %247 = getelementptr inbounds %struct.dc, %struct.dc* %246, i32 0, i32 1
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 8
  store i8* %245, i8** %249, align 8
  %250 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = mul nsw i32 %253, 4
  %255 = sdiv i32 %254, 8
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i8* @bw_frc_to_fixed(i32 %259, i32 1000)
  %261 = load %struct.dc*, %struct.dc** %2, align 8
  %262 = getelementptr inbounds %struct.dc, %struct.dc* %261, i32 0, i32 1
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 7
  store i8* %260, i8** %264, align 8
  %265 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = mul nsw i32 %268, 5
  %270 = sdiv i32 %269, 8
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i8* @bw_frc_to_fixed(i32 %274, i32 1000)
  %276 = load %struct.dc*, %struct.dc** %2, align 8
  %277 = getelementptr inbounds %struct.dc, %struct.dc* %276, i32 0, i32 1
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 6
  store i8* %275, i8** %279, align 8
  %280 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = mul nsw i32 %283, 6
  %285 = sdiv i32 %284, 8
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i8* @bw_frc_to_fixed(i32 %289, i32 1000)
  %291 = load %struct.dc*, %struct.dc** %2, align 8
  %292 = getelementptr inbounds %struct.dc, %struct.dc* %291, i32 0, i32 1
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 5
  store i8* %290, i8** %294, align 8
  %295 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i64 0
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i8* @bw_frc_to_fixed(i32 %299, i32 1000)
  %301 = load %struct.dc*, %struct.dc** %2, align 8
  %302 = getelementptr inbounds %struct.dc, %struct.dc* %301, i32 0, i32 1
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 4
  store i8* %300, i8** %304, align 8
  %305 = load %struct.dc*, %struct.dc** %2, align 8
  %306 = getelementptr inbounds %struct.dc, %struct.dc* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @DM_PP_CLOCK_TYPE_MEMORY_CLK, align 4
  %309 = call i32 @dm_pp_get_clock_levels_by_type_with_latency(i32 %307, i32 %308, %struct.dm_pp_clock_levels_with_latency* %4)
  %310 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i64 0
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %7, align 4
  %316 = mul nsw i32 %314, %315
  %317 = call i8* @bw_frc_to_fixed(i32 %316, i32 1000)
  %318 = load %struct.dc*, %struct.dc** %2, align 8
  %319 = getelementptr inbounds %struct.dc, %struct.dc* %318, i32 0, i32 1
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 3
  store i8* %317, i8** %321, align 8
  %322 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %322, align 8
  %324 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = ashr i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %7, align 4
  %332 = mul nsw i32 %330, %331
  %333 = call i8* @bw_frc_to_fixed(i32 %332, i32 1000)
  %334 = load %struct.dc*, %struct.dc** %2, align 8
  %335 = getelementptr inbounds %struct.dc, %struct.dc* %334, i32 0, i32 1
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 2
  store i8* %333, i8** %337, align 8
  %338 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %338, align 8
  %340 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = sub nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %7, align 4
  %348 = mul nsw i32 %346, %347
  %349 = call i8* @bw_frc_to_fixed(i32 %348, i32 1000)
  %350 = load %struct.dc*, %struct.dc** %2, align 8
  %351 = getelementptr inbounds %struct.dc, %struct.dc* %350, i32 0, i32 1
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 1
  store i8* %349, i8** %353, align 8
  %354 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 0
  store i32 4, i32* %354, align 8
  %355 = load i32, i32* @WM_SET_A, align 4
  %356 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i64 0
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 4
  store i32 %355, i32* %359, align 4
  %360 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i64 0
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i64 0
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 0
  store i32 %364, i32* %368, align 4
  %369 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %369, align 8
  %371 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = mul nsw i32 %372, 3
  %374 = sdiv i32 %373, 8
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = sub nsw i32 %378, 1
  %380 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %381 = load %struct.TYPE_5__*, %struct.TYPE_5__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i64 0
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 1
  store i32 %379, i32* %383, align 4
  %384 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i64 0
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %390 = load %struct.TYPE_5__*, %struct.TYPE_5__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %390, i64 0
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 2
  store i32 %388, i32* %392, align 4
  %393 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** %393, align 8
  %395 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = ashr i32 %396, 1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = sub nsw i32 %401, 1
  %403 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %404 = load %struct.TYPE_5__*, %struct.TYPE_5__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i64 0
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 3
  store i32 %402, i32* %406, align 4
  %407 = load i32, i32* @WM_SET_B, align 4
  %408 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %409 = load %struct.TYPE_5__*, %struct.TYPE_5__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i64 1
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 4
  store i32 %407, i32* %411, align 4
  %412 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %413 = load %struct.TYPE_4__*, %struct.TYPE_4__** %412, align 8
  %414 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = mul nsw i32 %415, 3
  %417 = sdiv i32 %416, 8
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %423 = load %struct.TYPE_5__*, %struct.TYPE_5__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i64 1
  %425 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %424, i32 0, i32 0
  store i32 %421, i32* %425, align 4
  %426 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %427 = load %struct.TYPE_5__*, %struct.TYPE_5__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i64 1
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 1
  store i32 5000000, i32* %429, align 4
  %430 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i64 0
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %436 = load %struct.TYPE_5__*, %struct.TYPE_5__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %436, i64 1
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 2
  store i32 %434, i32* %438, align 4
  %439 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %440 = load %struct.TYPE_4__*, %struct.TYPE_4__** %439, align 8
  %441 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = ashr i32 %442, 1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = sub nsw i32 %447, 1
  %449 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i64 1
  %452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %451, i32 0, i32 3
  store i32 %448, i32* %452, align 4
  %453 = load i32, i32* @WM_SET_C, align 4
  %454 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %455 = load %struct.TYPE_5__*, %struct.TYPE_5__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i64 2
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 4
  store i32 %453, i32* %457, align 4
  %458 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %459 = load %struct.TYPE_4__*, %struct.TYPE_4__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %459, i64 0
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %464 = load %struct.TYPE_5__*, %struct.TYPE_5__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i64 2
  %466 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %465, i32 0, i32 0
  store i32 %462, i32* %466, align 4
  %467 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %468 = load %struct.TYPE_4__*, %struct.TYPE_4__** %467, align 8
  %469 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = mul nsw i32 %470, 3
  %472 = sdiv i32 %471, 8
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = sub nsw i32 %476, 1
  %478 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %479 = load %struct.TYPE_5__*, %struct.TYPE_5__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %479, i64 2
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 1
  store i32 %477, i32* %481, align 4
  %482 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %482, align 8
  %484 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = ashr i32 %485, 1
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %492 = load %struct.TYPE_5__*, %struct.TYPE_5__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i64 2
  %494 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %493, i32 0, i32 2
  store i32 %490, i32* %494, align 4
  %495 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %496 = load %struct.TYPE_5__*, %struct.TYPE_5__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %496, i64 2
  %498 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %497, i32 0, i32 3
  store i32 5000000, i32* %498, align 4
  %499 = load i32, i32* @WM_SET_D, align 4
  %500 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %501 = load %struct.TYPE_5__*, %struct.TYPE_5__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %501, i64 3
  %503 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %502, i32 0, i32 4
  store i32 %499, i32* %503, align 4
  %504 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %505 = load %struct.TYPE_4__*, %struct.TYPE_4__** %504, align 8
  %506 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = mul nsw i32 %507, 3
  %509 = sdiv i32 %508, 8
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %505, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 4
  %514 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %515 = load %struct.TYPE_5__*, %struct.TYPE_5__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %515, i64 3
  %517 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %516, i32 0, i32 0
  store i32 %513, i32* %517, align 4
  %518 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %519 = load %struct.TYPE_5__*, %struct.TYPE_5__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i64 3
  %521 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %520, i32 0, i32 1
  store i32 5000000, i32* %521, align 4
  %522 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %523 = load %struct.TYPE_4__*, %struct.TYPE_4__** %522, align 8
  %524 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = ashr i32 %525, 1
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %523, i64 %527
  %529 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %532 = load %struct.TYPE_5__*, %struct.TYPE_5__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %532, i64 3
  %534 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %533, i32 0, i32 2
  store i32 %530, i32* %534, align 4
  %535 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %536 = load %struct.TYPE_5__*, %struct.TYPE_5__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %536, i64 3
  %538 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %537, i32 0, i32 3
  store i32 5000000, i32* %538, align 4
  %539 = load %struct.dc*, %struct.dc** %2, align 8
  %540 = getelementptr inbounds %struct.dc, %struct.dc* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = call i32 @dm_pp_notify_wm_clock_changes(i32 %541, %struct.dm_pp_wm_sets_with_clock_ranges* %5)
  br label %543

543:                                              ; preds = %191, %34
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dm_pp_get_clock_levels_by_type_with_latency(i32, i32, %struct.dm_pp_clock_levels_with_latency*) #2

declare dso_local i32 @dm_pp_get_clock_levels_by_type(i32, i32, %struct.dm_pp_clock_levels*) #2

declare dso_local i8* @bw_frc_to_fixed(i32, i32) #2

declare dso_local i32 @dm_pp_notify_wm_clock_changes(i32, %struct.dm_pp_wm_sets_with_clock_ranges*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
