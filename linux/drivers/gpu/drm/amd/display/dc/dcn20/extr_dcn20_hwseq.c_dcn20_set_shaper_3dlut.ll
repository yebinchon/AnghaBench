; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_set_shaper_3dlut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_set_shaper_3dlut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.dpp* }
%struct.dpp = type { %struct.TYPE_11__*, %struct.pwl_params }
%struct.TYPE_11__ = type { i32 (%struct.dpp*, %struct.pwl_params*)*, i32 (%struct.dpp*, i32*)*, i32 (%struct.dpp*, i32)* }
%struct.pwl_params = type { i32 }
%struct.dc_plane_state = type { %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.pwl_params }

@TF_TYPE_HWPWL = common dso_local global i64 0, align 8
@TF_TYPE_DISTRIBUTED_POINTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, %struct.dc_plane_state*)* @dcn20_set_shaper_3dlut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn20_set_shaper_3dlut(%struct.pipe_ctx* %0, %struct.dc_plane_state* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.dc_plane_state*, align 8
  %5 = alloca %struct.dpp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pwl_params*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.dc_plane_state* %1, %struct.dc_plane_state** %4, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.dpp*, %struct.dpp** %10, align 8
  store %struct.dpp* %11, %struct.dpp** %5, align 8
  store i32 1, i32* %6, align 4
  store %struct.pwl_params* null, %struct.pwl_params** %7, align 8
  %12 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %13 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %2
  %17 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %18 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TF_TYPE_HWPWL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %26 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store %struct.pwl_params* %28, %struct.pwl_params** %7, align 8
  br label %47

29:                                               ; preds = %16
  %30 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %31 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TF_TYPE_DISTRIBUTED_POINTS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %39 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load %struct.dpp*, %struct.dpp** %5, align 8
  %42 = getelementptr inbounds %struct.dpp, %struct.dpp* %41, i32 0, i32 1
  %43 = call i32 @cm_helper_translate_curve_to_hw_format(%struct.TYPE_12__* %40, %struct.pwl_params* %42, i32 1)
  %44 = load %struct.dpp*, %struct.dpp** %5, align 8
  %45 = getelementptr inbounds %struct.dpp, %struct.dpp* %44, i32 0, i32 1
  store %struct.pwl_params* %45, %struct.pwl_params** %7, align 8
  br label %46

46:                                               ; preds = %37, %29
  br label %47

47:                                               ; preds = %46, %24
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.dpp*, %struct.dpp** %5, align 8
  %50 = getelementptr inbounds %struct.dpp, %struct.dpp* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dpp*, %struct.pwl_params*)*, i32 (%struct.dpp*, %struct.pwl_params*)** %52, align 8
  %54 = load %struct.dpp*, %struct.dpp** %5, align 8
  %55 = load %struct.pwl_params*, %struct.pwl_params** %7, align 8
  %56 = call i32 %53(%struct.dpp* %54, %struct.pwl_params* %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %58 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %82

61:                                               ; preds = %48
  %62 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %63 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %82

70:                                               ; preds = %61
  %71 = load %struct.dpp*, %struct.dpp** %5, align 8
  %72 = getelementptr inbounds %struct.dpp, %struct.dpp* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32 (%struct.dpp*, i32*)*, i32 (%struct.dpp*, i32*)** %74, align 8
  %76 = load %struct.dpp*, %struct.dpp** %5, align 8
  %77 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %78 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = call i32 %75(%struct.dpp* %76, i32* %80)
  store i32 %81, i32* %6, align 4
  br label %90

82:                                               ; preds = %61, %48
  %83 = load %struct.dpp*, %struct.dpp** %5, align 8
  %84 = getelementptr inbounds %struct.dpp, %struct.dpp* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32 (%struct.dpp*, i32*)*, i32 (%struct.dpp*, i32*)** %86, align 8
  %88 = load %struct.dpp*, %struct.dpp** %5, align 8
  %89 = call i32 %87(%struct.dpp* %88, i32* null)
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %82, %70
  %91 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %92 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = icmp ne %struct.TYPE_10__* %93, null
  br i1 %94, label %95, label %124

95:                                               ; preds = %90
  %96 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %97 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %124

104:                                              ; preds = %95
  %105 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %106 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  %112 = load %struct.dpp*, %struct.dpp** %5, align 8
  %113 = getelementptr inbounds %struct.dpp, %struct.dpp* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %115, align 8
  %117 = load %struct.dpp*, %struct.dpp** %5, align 8
  %118 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %119 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 %116(%struct.dpp* %117, i32 %122)
  br label %132

124:                                              ; preds = %104, %95, %90
  %125 = load %struct.dpp*, %struct.dpp** %5, align 8
  %126 = getelementptr inbounds %struct.dpp, %struct.dpp* %125, i32 0, i32 0
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i32 (%struct.dpp*, i32)*, i32 (%struct.dpp*, i32)** %128, align 8
  %130 = load %struct.dpp*, %struct.dpp** %5, align 8
  %131 = call i32 %129(%struct.dpp* %130, i32 126976)
  br label %132

132:                                              ; preds = %124, %111
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @cm_helper_translate_curve_to_hw_format(%struct.TYPE_12__*, %struct.pwl_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
