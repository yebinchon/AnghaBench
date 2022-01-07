; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_resource.c_bw_calcs_data_update_from_pplib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_resource.c_bw_calcs_data_update_from_pplib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.dm_pp_clock_levels_with_latency = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dm_pp_wm_sets_with_clock_ranges = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@MEMORY_TYPE_MULTIPLIER_CZ = common dso_local global i32 0, align 4
@DM_PP_CLOCK_TYPE_ENGINE_CLK = common dso_local global i32 0, align 4
@DM_PP_CLOCK_TYPE_MEMORY_CLK = common dso_local global i32 0, align 4
@bw_def_hbm = common dso_local global i64 0, align 8
@MEMORY_TYPE_HBM = common dso_local global i32 0, align 4
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
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %2, align 8
  %10 = bitcast %struct.dm_pp_clock_levels_with_latency* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = bitcast %struct.dm_pp_clock_levels_with_latency* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = bitcast %struct.dm_pp_wm_sets_with_clock_ranges* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load i32, i32* @MEMORY_TYPE_MULTIPLIER_CZ, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.dc*, %struct.dc** %2, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DM_PP_CLOCK_TYPE_ENGINE_CLK, align 4
  %18 = call i32 @dm_pp_get_clock_levels_by_type_with_latency(i32 %16, i32 %17, %struct.dm_pp_clock_levels_with_latency* %3)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %20, %1
  %25 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  store i32 8, i32* %25, align 8
  store i32 300000, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %41, %24
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %32, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 100000
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %26

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %20
  %46 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @bw_frc_to_fixed(i32 %54, i32 1000)
  %56 = load %struct.dc*, %struct.dc** %2, align 8
  %57 = getelementptr inbounds %struct.dc, %struct.dc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 11
  store i8* %55, i8** %59, align 8
  %60 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sdiv i32 %63, 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @bw_frc_to_fixed(i32 %68, i32 1000)
  %70 = load %struct.dc*, %struct.dc** %2, align 8
  %71 = getelementptr inbounds %struct.dc, %struct.dc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 10
  store i8* %69, i8** %73, align 8
  %74 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 2
  %79 = sdiv i32 %78, 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @bw_frc_to_fixed(i32 %83, i32 1000)
  %85 = load %struct.dc*, %struct.dc** %2, align 8
  %86 = getelementptr inbounds %struct.dc, %struct.dc* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 9
  store i8* %84, i8** %88, align 8
  %89 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %92, 3
  %94 = sdiv i32 %93, 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @bw_frc_to_fixed(i32 %98, i32 1000)
  %100 = load %struct.dc*, %struct.dc** %2, align 8
  %101 = getelementptr inbounds %struct.dc, %struct.dc* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 8
  store i8* %99, i8** %103, align 8
  %104 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %107, 4
  %109 = sdiv i32 %108, 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @bw_frc_to_fixed(i32 %113, i32 1000)
  %115 = load %struct.dc*, %struct.dc** %2, align 8
  %116 = getelementptr inbounds %struct.dc, %struct.dc* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 7
  store i8* %114, i8** %118, align 8
  %119 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %122, 5
  %124 = sdiv i32 %123, 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @bw_frc_to_fixed(i32 %128, i32 1000)
  %130 = load %struct.dc*, %struct.dc** %2, align 8
  %131 = getelementptr inbounds %struct.dc, %struct.dc* %130, i32 0, i32 1
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 6
  store i8* %129, i8** %133, align 8
  %134 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 6
  %139 = sdiv i32 %138, 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @bw_frc_to_fixed(i32 %143, i32 1000)
  %145 = load %struct.dc*, %struct.dc** %2, align 8
  %146 = getelementptr inbounds %struct.dc, %struct.dc* %145, i32 0, i32 1
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 5
  store i8* %144, i8** %148, align 8
  %149 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @bw_frc_to_fixed(i32 %153, i32 1000)
  %155 = load %struct.dc*, %struct.dc** %2, align 8
  %156 = getelementptr inbounds %struct.dc, %struct.dc* %155, i32 0, i32 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  store i8* %154, i8** %158, align 8
  %159 = load %struct.dc*, %struct.dc** %2, align 8
  %160 = getelementptr inbounds %struct.dc, %struct.dc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @DM_PP_CLOCK_TYPE_MEMORY_CLK, align 4
  %163 = call i32 @dm_pp_get_clock_levels_by_type_with_latency(i32 %161, i32 %162, %struct.dm_pp_clock_levels_with_latency* %4)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %45
  %166 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %199

169:                                              ; preds = %165, %45
  %170 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  store i32 3, i32* %170, align 8
  store i32 250000, i32* %7, align 4
  store i32 45, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %195, %169
  %172 = load i32, i32* %6, align 4
  %173 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %198

176:                                              ; preds = %171
  %177 = load i32, i32* %7, align 4
  %178 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i32 %177, i32* %183, align 4
  %184 = load i32, i32* %8, align 4
  %185 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i32 %184, i32* %190, align 4
  %191 = load i32, i32* %7, align 4
  %192 = add i32 %191, 500000
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %8, align 4
  %194 = sub i32 %193, 5
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %176
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %171

198:                                              ; preds = %171
  br label %199

199:                                              ; preds = %198, %165
  %200 = load %struct.dc*, %struct.dc** %2, align 8
  %201 = getelementptr inbounds %struct.dc, %struct.dc* %200, i32 0, i32 1
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @bw_def_hbm, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %199
  %208 = load i32, i32* @MEMORY_TYPE_HBM, align 4
  store i32 %208, i32* %9, align 4
  br label %209

209:                                              ; preds = %207, %199
  %210 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %9, align 4
  %216 = mul i32 %214, %215
  %217 = call i8* @bw_frc_to_fixed(i32 %216, i32 1000)
  %218 = load %struct.dc*, %struct.dc** %2, align 8
  %219 = getelementptr inbounds %struct.dc, %struct.dc* %218, i32 0, i32 1
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 3
  store i8* %217, i8** %221, align 8
  %222 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = ashr i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %9, align 4
  %232 = mul i32 %230, %231
  %233 = call i8* @bw_frc_to_fixed(i32 %232, i32 1000)
  %234 = load %struct.dc*, %struct.dc** %2, align 8
  %235 = getelementptr inbounds %struct.dc, %struct.dc* %234, i32 0, i32 1
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 2
  store i8* %233, i8** %237, align 8
  %238 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %9, align 4
  %248 = mul i32 %246, %247
  %249 = call i8* @bw_frc_to_fixed(i32 %248, i32 1000)
  %250 = load %struct.dc*, %struct.dc** %2, align 8
  %251 = getelementptr inbounds %struct.dc, %struct.dc* %250, i32 0, i32 1
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 1
  store i8* %249, i8** %253, align 8
  %254 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 0
  store i32 4, i32* %254, align 8
  %255 = load i32, i32* @WM_SET_A, align 4
  %256 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i64 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 4
  store i32 %255, i32* %259, align 4
  %260 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 0
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i64 0
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  store i32 %264, i32* %268, align 4
  %269 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = mul nsw i32 %272, 3
  %274 = sdiv i32 %273, 8
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = sub i32 %278, 1
  %280 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i64 0
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 1
  store i32 %279, i32* %283, align 4
  %284 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i64 0
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i64 0
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 2
  store i32 %288, i32* %292, align 4
  %293 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = ashr i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = sub i32 %301, 1
  %303 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i64 0
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 3
  store i32 %302, i32* %306, align 4
  %307 = load i32, i32* @WM_SET_B, align 4
  %308 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i64 1
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 4
  store i32 %307, i32* %311, align 4
  %312 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %312, align 8
  %314 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = mul nsw i32 %315, 3
  %317 = sdiv i32 %316, 8
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i64 1
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  store i32 %321, i32* %325, align 4
  %326 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i64 1
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 1
  store i32 5000000, i32* %329, align 4
  %330 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i64 0
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i64 1
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 2
  store i32 %334, i32* %338, align 4
  %339 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = ashr i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = sub i32 %347, 1
  %349 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i64 1
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 3
  store i32 %348, i32* %352, align 4
  %353 = load i32, i32* @WM_SET_C, align 4
  %354 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i64 2
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 4
  store i32 %353, i32* %357, align 4
  %358 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i64 0
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i64 2
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  store i32 %362, i32* %366, align 4
  %367 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %367, align 8
  %369 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = mul nsw i32 %370, 3
  %372 = sdiv i32 %371, 8
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = sub i32 %376, 1
  %378 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i64 2
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 1
  store i32 %377, i32* %381, align 4
  %382 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %382, align 8
  %384 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = ashr i32 %385, 1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i64 2
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 2
  store i32 %390, i32* %394, align 4
  %395 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %396 = load %struct.TYPE_4__*, %struct.TYPE_4__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i64 2
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 3
  store i32 5000000, i32* %398, align 4
  %399 = load i32, i32* @WM_SET_D, align 4
  %400 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i64 3
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 4
  store i32 %399, i32* %403, align 4
  %404 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 1
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %404, align 8
  %406 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %3, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = mul nsw i32 %407, 3
  %409 = sdiv i32 %408, 8
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %415 = load %struct.TYPE_4__*, %struct.TYPE_4__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i64 3
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 0
  store i32 %413, i32* %417, align 4
  %418 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i64 3
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 1
  store i32 5000000, i32* %421, align 4
  %422 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 1
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %422, align 8
  %424 = getelementptr inbounds %struct.dm_pp_clock_levels_with_latency, %struct.dm_pp_clock_levels_with_latency* %4, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = ashr i32 %425, 1
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %432 = load %struct.TYPE_4__*, %struct.TYPE_4__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i64 3
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 2
  store i32 %430, i32* %434, align 4
  %435 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges, %struct.dm_pp_wm_sets_with_clock_ranges* %5, i32 0, i32 1
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i64 3
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 3
  store i32 5000000, i32* %438, align 4
  %439 = load %struct.dc*, %struct.dc** %2, align 8
  %440 = getelementptr inbounds %struct.dc, %struct.dc* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = call i32 @dm_pp_notify_wm_clock_changes(i32 %441, %struct.dm_pp_wm_sets_with_clock_ranges* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dm_pp_get_clock_levels_by_type_with_latency(i32, i32, %struct.dm_pp_clock_levels_with_latency*) #2

declare dso_local i8* @bw_frc_to_fixed(i32, i32) #2

declare dso_local i32 @dm_pp_notify_wm_clock_changes(i32, %struct.dm_pp_wm_sets_with_clock_ranges*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
