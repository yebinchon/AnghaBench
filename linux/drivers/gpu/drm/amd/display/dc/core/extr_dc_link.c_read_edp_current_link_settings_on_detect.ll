; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_read_edp_current_link_settings_on_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_read_edp_current_link_settings_on_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i64* }
%union.lane_count_set = type { i64 }
%union.max_down_spread = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@DP_LANE_COUNT_SET = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@DP_LINK_BW_SET = common dso_local global i32 0, align 4
@DP_LINK_RATE_SET = common dso_local global i32 0, align 4
@DP_MAX_DOWNSPREAD = common dso_local global i32 0, align 4
@LINK_SPREAD_05_DOWNSPREAD_30KHZ = common dso_local global i32 0, align 4
@LINK_SPREAD_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_link*)* @read_edp_current_link_settings_on_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_edp_current_link_settings_on_detect(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca %union.lane_count_set, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.max_down_spread, align 8
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %10 = bitcast %union.lane_count_set* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 8, i1 false)
  store i32 10, i32* %6, align 4
  %11 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %11, i32* %7, align 4
  %12 = bitcast %union.max_down_spread* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %19 = load i32, i32* @DP_LANE_COUNT_SET, align 4
  %20 = bitcast %union.lane_count_set* %3 to i64*
  %21 = call i32 @core_link_read_dpcd(%struct.dc_link* %18, i32 %19, i64* %20, i32 8)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DC_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = bitcast %union.lane_count_set* %3 to %struct.TYPE_9__*
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %30 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 8
  br label %37

32:                                               ; preds = %17
  %33 = call i32 @msleep(i32 8)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %13

37:                                               ; preds = %25, %13
  %38 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %39 = load i32, i32* @DP_LINK_BW_SET, align 4
  %40 = call i32 @core_link_read_dpcd(%struct.dc_link* %38, i32 %39, i64* %4, i32 8)
  %41 = load i64, i64* %4, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %37
  %44 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %45 = load i32, i32* @DP_LINK_RATE_SET, align 4
  %46 = call i32 @core_link_read_dpcd(%struct.dc_link* %44, i32 %45, i64* %5, i32 8)
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %49 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %43
  %54 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %55 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %62 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %66 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  store i64 %64, i64* %67, align 8
  %68 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %69 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %53, %43
  br label %80

72:                                               ; preds = %37
  %73 = load i64, i64* %4, align 8
  %74 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %75 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i64 %73, i64* %76, align 8
  %77 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %78 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %72, %71
  %81 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %82 = load i32, i32* @DP_MAX_DOWNSPREAD, align 4
  %83 = bitcast %union.max_down_spread* %9 to i64*
  %84 = call i32 @core_link_read_dpcd(%struct.dc_link* %81, i32 %82, i64* %83, i32 8)
  %85 = bitcast %union.max_down_spread* %9 to %struct.TYPE_12__*
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @LINK_SPREAD_05_DOWNSPREAD_30KHZ, align 4
  br label %93

91:                                               ; preds = %80
  %92 = load i32, i32* @LINK_SPREAD_DISABLED, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %96 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i32, i64*, i32) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
