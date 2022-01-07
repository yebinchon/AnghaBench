; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce11_pplib_apply_display_requirements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce11_pplib_apply_display_requirements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_18__*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.dc_state = type { i32, %struct.TYPE_16__**, %struct.TYPE_12__, %struct.dm_pp_display_configuration }
%struct.TYPE_16__ = type { %struct.dc_crtc_timing }
%struct.dc_crtc_timing = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_pp_display_configuration = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_17__*, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@MEMORY_TYPE_MULTIPLIER_CZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*)* @dce11_pplib_apply_display_requirements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce11_pplib_apply_display_requirements(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca %struct.dm_pp_display_configuration*, align 8
  %6 = alloca %struct.dc_crtc_timing*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %7 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %8 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %7, i32 0, i32 3
  store %struct.dm_pp_display_configuration* %8, %struct.dm_pp_display_configuration** %5, align 8
  %9 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %10 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %16 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %15, i32 0, i32 15
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %18 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %26 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %28 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %36 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %38 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %46 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %48 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %54 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %53, i32 0, i32 14
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %56 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MEMORY_TYPE_MULTIPLIER_CZ, align 4
  %62 = sdiv i32 %60, %61
  %63 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %64 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dc*, %struct.dc** %3, align 8
  %66 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %67 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @determine_sclk_from_bounding_box(%struct.dc* %65, i32 %71)
  %73 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %74 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %73, i32 0, i32 12
  store i32 %72, i32* %74, align 8
  %75 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %76 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 4
  br i1 %78, label %79, label %83

79:                                               ; preds = %2
  %80 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %81 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %80, i32 0, i32 12
  %82 = load i32, i32* %81, align 8
  br label %84

83:                                               ; preds = %2
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i32 [ %82, %79 ], [ 0, %83 ]
  %86 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %87 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %86, i32 0, i32 13
  store i32 %85, i32* %87, align 4
  %88 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %89 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %95 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %94, i32 0, i32 11
  store i32 %93, i32* %95, align 4
  %96 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %97 = call i32 @dce110_get_min_vblank_time_us(%struct.dc_state* %96)
  %98 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %99 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 8
  %100 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %101 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %100, i32 0, i32 9
  store i64 0, i64* %101, align 8
  %102 = load %struct.dc*, %struct.dc** %3, align 8
  %103 = getelementptr inbounds %struct.dc, %struct.dc* %102, i32 0, i32 2
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %111 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 4
  %112 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %113 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %114 = call i32 @dce110_fill_display_configs(%struct.dc_state* %112, %struct.dm_pp_display_configuration* %113)
  %115 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %116 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %144

119:                                              ; preds = %84
  %120 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %121 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %120, i32 0, i32 1
  %122 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %122, i64 0
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  store %struct.dc_crtc_timing* %125, %struct.dc_crtc_timing** %6, align 8
  %126 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %127 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %126, i32 0, i32 6
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %133 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 8
  %134 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %135 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %136, 10000
  %138 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %139 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %137, %140
  %142 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %143 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %119, %84
  %145 = load %struct.dc*, %struct.dc** %3, align 8
  %146 = getelementptr inbounds %struct.dc, %struct.dc* %145, i32 0, i32 1
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %150 = call i64 @memcmp(i32* %148, %struct.dm_pp_display_configuration* %149, i32 72)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load %struct.dc*, %struct.dc** %3, align 8
  %154 = getelementptr inbounds %struct.dc, %struct.dc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %157 = call i32 @dm_pp_apply_display_requirements(i32 %155, %struct.dm_pp_display_configuration* %156)
  br label %158

158:                                              ; preds = %152, %144
  ret void
}

declare dso_local i32 @determine_sclk_from_bounding_box(%struct.dc*, i32) #1

declare dso_local i32 @dce110_get_min_vblank_time_us(%struct.dc_state*) #1

declare dso_local i32 @dce110_fill_display_configs(%struct.dc_state*, %struct.dm_pp_display_configuration*) #1

declare dso_local i64 @memcmp(i32*, %struct.dm_pp_display_configuration*, i32) #1

declare dso_local i32 @dm_pp_apply_display_requirements(i32, %struct.dm_pp_display_configuration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
