; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_build_watermark_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_build_watermark_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_bw_params = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_11__ = type { i64, i8*, i8*, i8*, i8*, i32 }

@WM_SET_COUNT = common dso_local global i32 0, align 4
@PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MIN = common dso_local global i8* null, align 8
@PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MAX = common dso_local global i8* null, align 8
@WM_TYPE_PSTATE_CHG = common dso_local global i64 0, align 8
@WM_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_watermark_ranges(%struct.clk_bw_params* %0, %struct.pp_smu_wm_range_sets* %1) #0 {
  %3 = alloca %struct.clk_bw_params*, align 8
  %4 = alloca %struct.pp_smu_wm_range_sets*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_bw_params* %0, %struct.clk_bw_params** %3, align 8
  store %struct.pp_smu_wm_range_sets* %1, %struct.pp_smu_wm_range_sets** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %158, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @WM_SET_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %161

11:                                               ; preds = %7
  %12 = load %struct.clk_bw_params*, %struct.clk_bw_params** %3, align 8
  %13 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %158

23:                                               ; preds = %11
  %24 = load %struct.clk_bw_params*, %struct.clk_bw_params** %3, align 8
  %25 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %34 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %33, i32 0, i32 3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 5
  store i32 %32, i32* %39, align 8
  %40 = load %struct.clk_bw_params*, %struct.clk_bw_params** %3, align 8
  %41 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %50 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %49, i32 0, i32 3
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i64 %48, i64* %55, align 8
  %56 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MIN, align 8
  %57 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %58 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %57, i32 0, i32 3
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  store i8* %56, i8** %63, align 8
  %64 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MAX, align 8
  %65 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %66 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %65, i32 0, i32 3
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  store i8* %64, i8** %71, align 8
  %72 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %73 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %72, i32 0, i32 3
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @WM_TYPE_PSTATE_CHG, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %129

82:                                               ; preds = %23
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %87 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %86, i32 0, i32 3
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  store i8* null, i8** %92, align 8
  br label %112

93:                                               ; preds = %82
  %94 = load %struct.clk_bw_params*, %struct.clk_bw_params** %3, align 8
  %95 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr i8, i8* %103, i64 1
  %105 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %106 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %105, i32 0, i32 3
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  store i8* %104, i8** %111, align 8
  br label %112

112:                                              ; preds = %93, %85
  %113 = load %struct.clk_bw_params*, %struct.clk_bw_params** %3, align 8
  %114 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %123 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %122, i32 0, i32 3
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i8* %121, i8** %128, align 8
  br label %155

129:                                              ; preds = %23
  %130 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MIN, align 8
  %131 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %132 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %131, i32 0, i32 3
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 3
  store i8* %130, i8** %137, align 8
  %138 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MAX, align 8
  %139 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %140 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %139, i32 0, i32 3
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  store i8* %138, i8** %145, align 8
  %146 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MAX, align 8
  %147 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %148 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %147, i32 0, i32 3
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  store i8* %146, i8** %154, align 8
  br label %155

155:                                              ; preds = %129, %112
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %155, %22
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %5, align 4
  br label %7

161:                                              ; preds = %7
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @ASSERT(i32 %164)
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %168 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MIN, align 8
  %170 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %171 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %170, i32 0, i32 3
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 4
  store i8* %169, i8** %174, align 8
  %175 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MIN, align 8
  %176 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %177 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %176, i32 0, i32 3
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  store i8* %175, i8** %180, align 8
  %181 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MAX, align 8
  %182 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %183 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %182, i32 0, i32 3
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %186 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  store i8* %181, i8** %191, align 8
  %192 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MAX, align 8
  %193 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %194 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %193, i32 0, i32 3
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %197 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  store i8* %192, i8** %202, align 8
  %203 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %204 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %203, i32 0, i32 1
  store i32 1, i32* %204, align 4
  %205 = load i32, i32* @WM_A, align 4
  %206 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %207 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %206, i32 0, i32 2
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 4
  store i32 %205, i32* %210, align 8
  %211 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MIN, align 8
  %212 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %213 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %212, i32 0, i32 2
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 3
  store i8* %211, i8** %216, align 8
  %217 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MAX, align 8
  %218 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %219 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %218, i32 0, i32 2
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 2
  store i8* %217, i8** %222, align 8
  %223 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MIN, align 8
  %224 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %225 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %224, i32 0, i32 2
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 1
  store i8* %223, i8** %228, align 8
  %229 = load i8*, i8** @PP_SMU_WM_SET_RANGE_CLK_UNCONSTRAINED_MAX, align 8
  %230 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %231 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %230, i32 0, i32 2
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  store i8* %229, i8** %234, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
