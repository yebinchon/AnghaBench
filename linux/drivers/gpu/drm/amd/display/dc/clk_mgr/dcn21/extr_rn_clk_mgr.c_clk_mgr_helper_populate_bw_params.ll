; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_clk_mgr_helper_populate_bw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_clk_mgr_helper_populate_bw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_bw_params = type { i64, i32, %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32 }
%struct.dpm_clocks = type { %struct.TYPE_14__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.hw_asic_id = type { i64, i32 }

@PP_SMU_NUM_FCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@MAX_NUM_DPM_LVL = common dso_local global i32 0, align 4
@DDR4_DRAM_WIDTH = common dso_local global i32 0, align 4
@WM_SET_COUNT = common dso_local global i32 0, align 4
@WM_TYPE_PSTATE_CHG = common dso_local global i32 0, align 4
@LpDdr4MemType = common dso_local global i64 0, align 8
@LPDDR_MEM_RETRAIN_LATENCY = common dso_local global i32 0, align 4
@WM_D = common dso_local global i64 0, align 8
@WM_TYPE_RETRAINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_mgr_helper_populate_bw_params(%struct.clk_bw_params* %0, %struct.dpm_clocks* %1, %struct.hw_asic_id* %2) #0 {
  %4 = alloca %struct.clk_bw_params*, align 8
  %5 = alloca %struct.dpm_clocks*, align 8
  %6 = alloca %struct.hw_asic_id*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_bw_params* %0, %struct.clk_bw_params** %4, align 8
  store %struct.dpm_clocks* %1, %struct.dpm_clocks** %5, align 8
  store %struct.hw_asic_id* %2, %struct.hw_asic_id** %6, align 8
  %8 = load i32, i32* @PP_SMU_NUM_FCLK_DPM_LEVELS, align 4
  %9 = load i32, i32* @MAX_NUM_DPM_LVL, align 4
  %10 = icmp sle i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %109, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PP_SMU_NUM_FCLK_DPM_LEVELS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %112

17:                                               ; preds = %13
  %18 = load %struct.dpm_clocks*, %struct.dpm_clocks** %5, align 8
  %19 = getelementptr inbounds %struct.dpm_clocks, %struct.dpm_clocks* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %112

28:                                               ; preds = %17
  %29 = load %struct.dpm_clocks*, %struct.dpm_clocks** %5, align 8
  %30 = getelementptr inbounds %struct.dpm_clocks, %struct.dpm_clocks* %29, i32 0, i32 3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %38 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  store i32 %36, i32* %44, align 4
  %45 = load %struct.dpm_clocks*, %struct.dpm_clocks** %5, align 8
  %46 = getelementptr inbounds %struct.dpm_clocks, %struct.dpm_clocks* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %54 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i64 %52, i64* %60, align 8
  %61 = load %struct.dpm_clocks*, %struct.dpm_clocks** %5, align 8
  %62 = getelementptr inbounds %struct.dpm_clocks, %struct.dpm_clocks* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %70 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  store i32 %68, i32* %76, align 8
  %77 = load %struct.dpm_clocks*, %struct.dpm_clocks** %5, align 8
  %78 = getelementptr inbounds %struct.dpm_clocks, %struct.dpm_clocks* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %86 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  store i32 %84, i32* %92, align 4
  %93 = load %struct.dpm_clocks*, %struct.dpm_clocks** %5, align 8
  %94 = getelementptr inbounds %struct.dpm_clocks, %struct.dpm_clocks* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %102 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store i32 %100, i32* %108, align 8
  br label %109

109:                                              ; preds = %28
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %13

112:                                              ; preds = %27, %13
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %115 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.hw_asic_id*, %struct.hw_asic_id** %6, align 8
  %118 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %121 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.hw_asic_id*, %struct.hw_asic_id** %6, align 8
  %123 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @DDR4_DRAM_WIDTH, align 4
  %126 = sdiv i32 %124, %125
  %127 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %128 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %179, %112
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @WM_SET_COUNT, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %182

133:                                              ; preds = %129
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %136 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  store i32 %134, i32* %142, align 4
  %143 = load %struct.dpm_clocks*, %struct.dpm_clocks** %5, align 8
  %144 = getelementptr inbounds %struct.dpm_clocks, %struct.dpm_clocks* %143, i32 0, i32 0
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %133
  %153 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %154 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  store i32 0, i32* %160, align 4
  br label %179

161:                                              ; preds = %133
  %162 = load i32, i32* @WM_TYPE_PSTATE_CHG, align 4
  %163 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %164 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  store i32 %162, i32* %170, align 4
  %171 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %172 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  store i32 1, i32* %178, align 4
  br label %179

179:                                              ; preds = %161, %152
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %129

182:                                              ; preds = %129
  %183 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %184 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @LpDdr4MemType, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %221

188:                                              ; preds = %182
  %189 = load i32, i32* @LPDDR_MEM_RETRAIN_LATENCY, align 4
  %190 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %191 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = load i64, i64* @WM_D, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 3
  store i32 %189, i32* %196, align 4
  %197 = load i64, i64* @WM_D, align 8
  %198 = trunc i64 %197 to i32
  %199 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %200 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = load i64, i64* @WM_D, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  store i32 %198, i32* %205, align 4
  %206 = load i32, i32* @WM_TYPE_RETRAINING, align 4
  %207 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %208 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = load i64, i64* @WM_D, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 2
  store i32 %206, i32* %213, align 4
  %214 = load %struct.clk_bw_params*, %struct.clk_bw_params** %4, align 8
  %215 = getelementptr inbounds %struct.clk_bw_params, %struct.clk_bw_params* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = load i64, i64* @WM_D, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  store i32 1, i32* %220, align 4
  br label %221

221:                                              ; preds = %188, %182
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
