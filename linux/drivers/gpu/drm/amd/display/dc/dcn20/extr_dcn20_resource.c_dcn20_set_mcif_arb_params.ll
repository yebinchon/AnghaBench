; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_set_mcif_arb_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_set_mcif_arb_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_11__, %struct.TYPE_18__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { double, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.mcif_arb_params* }
%struct.mcif_arb_params = type { i32*, i32*, double, i32, i32, i32 }

@MAX_DWB_PIPES = common dso_local global i32 0, align 4
@dwb_scaler_mode_yuv420 = common dso_local global i64 0, align 8
@DWB_OUTPUT_PIXEL_DEPTH_8BPC = common dso_local global i64 0, align 8
@PLANAR_420_8BPC = common dso_local global i32 0, align 4
@PLANAR_420_10BPC = common dso_local global i32 0, align 4
@PACKED_444 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_set_mcif_arb_params(%struct.dc* %0, %struct.dc_state* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mcif_arb_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %198, %4
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.dc*, %struct.dc** %5, align 8
  %18 = getelementptr inbounds %struct.dc, %struct.dc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %201

23:                                               ; preds = %15
  %24 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %25 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = icmp ne %struct.TYPE_19__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %198

35:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %189, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @MAX_DWB_PIPES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %192

40:                                               ; preds = %36
  %41 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %42 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %189

59:                                               ; preds = %40
  %60 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %61 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %66, i64 %68
  store %struct.mcif_arb_params* %69, %struct.mcif_arb_params** %10, align 8
  %70 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %71 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @dwb_scaler_mode_yuv420, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %59
  %90 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %91 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @DWB_OUTPUT_PIXEL_DEPTH_8BPC, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %89
  %110 = load i32, i32* @PLANAR_420_8BPC, align 4
  store i32 %110, i32* %9, align 4
  br label %113

111:                                              ; preds = %89
  %112 = load i32, i32* @PLANAR_420_10BPC, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %111, %109
  br label %116

114:                                              ; preds = %59
  %115 = load i32, i32* @PACKED_444, align 4
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %114, %113
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %148, %116
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ult i64 %119, 2
  br i1 %120, label %121, label %151

121:                                              ; preds = %117
  %122 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %123 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @get_wm_writeback_urgent(i32* %124, i32* %125, i32 %126)
  %128 = mul nsw i32 %127, 1000
  %129 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %10, align 8
  %130 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  %135 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %136 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @get_wm_writeback_dram_clock_change(i32* %137, i32* %138, i32 %139)
  %141 = mul nsw i32 %140, 1000
  %142 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %10, align 8
  %143 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  br label %148

148:                                              ; preds = %121
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %117

151:                                              ; preds = %117
  %152 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %153 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load double, double* %161, align 8
  %163 = fdiv double 1.600000e+01, %162
  %164 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %10, align 8
  %165 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %164, i32 0, i32 2
  store double %163, double* %165, align 8
  %166 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %10, align 8
  %167 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %166, i32 0, i32 3
  store i32 32, i32* %167, align 8
  %168 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %10, align 8
  %169 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %168, i32 0, i32 4
  store i32 2, i32* %169, align 4
  %170 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %10, align 8
  %171 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %170, i32 0, i32 2
  %172 = load double, double* %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %10, align 8
  %175 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @dcn20_calc_max_scaled_time(double %172, i32 %173, i32 %178)
  %180 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %10, align 8
  %181 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* @MAX_DWB_PIPES, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %151
  br label %201

188:                                              ; preds = %151
  br label %189

189:                                              ; preds = %188, %58
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  br label %36

192:                                              ; preds = %36
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @MAX_DWB_PIPES, align 4
  %195 = icmp sge i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %201

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197, %34
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %15

201:                                              ; preds = %187, %196, %15
  ret void
}

declare dso_local i32 @get_wm_writeback_urgent(i32*, i32*, i32) #1

declare dso_local i32 @get_wm_writeback_dram_clock_change(i32*, i32*, i32) #1

declare dso_local i32 @dcn20_calc_max_scaled_time(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
