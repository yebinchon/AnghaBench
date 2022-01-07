; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce110/extr_dce110_clk_mgr.c_dce11_pplib_apply_display_requirements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce110/extr_dce110_clk_mgr.c_dce11_pplib_apply_display_requirements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_23__*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.dc_state = type { i32, %struct.TYPE_24__**, %struct.TYPE_21__, %struct.dm_pp_display_configuration }
%struct.TYPE_24__ = type { %struct.dc_crtc_timing }
%struct.dc_crtc_timing = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_pp_display_configuration = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@MEMORY_TYPE_MULTIPLIER_CZ = common dso_local global i32 0, align 4
@bw_def_hbm = common dso_local global i64 0, align 8
@MEMORY_TYPE_HBM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce11_pplib_apply_display_requirements(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca %struct.dm_pp_display_configuration*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_crtc_timing*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %8 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %9 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %8, i32 0, i32 3
  store %struct.dm_pp_display_configuration* %9, %struct.dm_pp_display_configuration** %5, align 8
  %10 = load i32, i32* @MEMORY_TYPE_MULTIPLIER_CZ, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.dc*, %struct.dc** %3, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 3
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = icmp ne %struct.TYPE_18__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.dc*, %struct.dc** %3, align 8
  %17 = getelementptr inbounds %struct.dc, %struct.dc* %16, i32 0, i32 3
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @bw_def_hbm, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @MEMORY_TYPE_HBM, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %15, %2
  %26 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %27 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %33 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %32, i32 0, i32 15
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %35 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %43 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %45 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %53 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %55 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %63 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %65 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %71 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %70, i32 0, i32 14
  store i32 %69, i32* %71, align 8
  %72 = load %struct.dc*, %struct.dc** %3, align 8
  %73 = getelementptr inbounds %struct.dc, %struct.dc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ASICREV_IS_VEGA20_P(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %25
  %81 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %82 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %83, 2
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %87 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dc*, %struct.dc** %3, align 8
  %90 = getelementptr inbounds %struct.dc, %struct.dc* %89, i32 0, i32 3
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i64 @div64_s64(i64 %94, i32 %95)
  %97 = call i64 @div64_s64(i64 %96, i32 10000)
  %98 = trunc i64 %97 to i32
  %99 = call i32 @max(i32 %88, i32 %98)
  %100 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %101 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  br label %113

102:                                              ; preds = %80, %25
  %103 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %104 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sdiv i32 %108, %109
  %111 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %112 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %102, %85
  %114 = load %struct.dc*, %struct.dc** %3, align 8
  %115 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %116 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @determine_sclk_from_bounding_box(%struct.dc* %114, i32 %120)
  %122 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %123 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %122, i32 0, i32 12
  store i32 %121, i32* %123, align 8
  %124 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %125 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %126, 4
  br i1 %127, label %128, label %132

128:                                              ; preds = %113
  %129 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %130 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 8
  br label %133

132:                                              ; preds = %113
  br label %133

133:                                              ; preds = %132, %128
  %134 = phi i32 [ %131, %128 ], [ 0, %132 ]
  %135 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %136 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %135, i32 0, i32 13
  store i32 %134, i32* %136, align 4
  %137 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %138 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %144 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %143, i32 0, i32 11
  store i32 %142, i32* %144, align 4
  %145 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %146 = call i32 @dce110_get_min_vblank_time_us(%struct.dc_state* %145)
  %147 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %148 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %147, i32 0, i32 10
  store i32 %146, i32* %148, align 8
  %149 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %150 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %149, i32 0, i32 9
  store i64 0, i64* %150, align 8
  %151 = load %struct.dc*, %struct.dc** %3, align 8
  %152 = getelementptr inbounds %struct.dc, %struct.dc* %151, i32 0, i32 2
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %158 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 4
  %159 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %160 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %161 = call i32 @dce110_fill_display_configs(%struct.dc_state* %159, %struct.dm_pp_display_configuration* %160)
  %162 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %163 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %191

166:                                              ; preds = %133
  %167 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %168 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %167, i32 0, i32 1
  %169 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %169, i64 0
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 0
  store %struct.dc_crtc_timing* %172, %struct.dc_crtc_timing** %7, align 8
  %173 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %174 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %173, i32 0, i32 6
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %180 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %179, i32 0, i32 7
  store i32 %178, i32* %180, align 8
  %181 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %7, align 8
  %182 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %183, 10000
  %185 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %7, align 8
  %186 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sdiv i32 %184, %187
  %189 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %190 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %166, %133
  %192 = load %struct.dc*, %struct.dc** %3, align 8
  %193 = getelementptr inbounds %struct.dc, %struct.dc* %192, i32 0, i32 1
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %197 = call i64 @memcmp(i32* %195, %struct.dm_pp_display_configuration* %196, i32 72)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %191
  %200 = load %struct.dc*, %struct.dc** %3, align 8
  %201 = getelementptr inbounds %struct.dc, %struct.dc* %200, i32 0, i32 0
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %204 = call i32 @dm_pp_apply_display_requirements(%struct.TYPE_15__* %202, %struct.dm_pp_display_configuration* %203)
  br label %205

205:                                              ; preds = %199, %191
  ret void
}

declare dso_local i64 @ASICREV_IS_VEGA20_P(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @div64_s64(i64, i32) #1

declare dso_local i32 @determine_sclk_from_bounding_box(%struct.dc*, i32) #1

declare dso_local i32 @dce110_get_min_vblank_time_us(%struct.dc_state*) #1

declare dso_local i32 @dce110_fill_display_configs(%struct.dc_state*, %struct.dm_pp_display_configuration*) #1

declare dso_local i64 @memcmp(i32*, %struct.dm_pp_display_configuration*, i32) #1

declare dso_local i32 @dm_pp_apply_display_requirements(%struct.TYPE_15__*, %struct.dm_pp_display_configuration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
