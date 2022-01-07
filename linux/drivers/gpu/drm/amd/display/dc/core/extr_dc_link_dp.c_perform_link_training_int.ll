; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_perform_link_training_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_perform_link_training_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.link_training_settings = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%union.lane_count_set = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, i32 }
%union.dpcd_training_pattern = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@__const.perform_link_training_int.lane_count_set = private unnamed_addr constant { i32, [12 x i8] } { i32 0, [12 x i8] undef }, align 8
@DPCD_TRAINING_PATTERN_VIDEOIDLE = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_VIDEO_MODE = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SEQUENCE_4 = common dso_local global i64 0, align 8
@LINK_TRAINING_SUCCESS = common dso_local global i32 0, align 4
@LINK_TRAINING_LQA_FAIL = common dso_local global i32 0, align 4
@DP_LANE_COUNT_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*, %struct.link_training_settings*, i32)* @perform_link_training_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_link_training_int(%struct.dc_link* %0, %struct.link_training_settings* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_link*, align 8
  %6 = alloca %struct.link_training_settings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.lane_count_set, align 8
  %9 = alloca %union.dpcd_training_pattern, align 4
  store %struct.dc_link* %0, %struct.dc_link** %5, align 8
  store %struct.link_training_settings* %1, %struct.link_training_settings** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast %union.lane_count_set* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast ({ i32, [12 x i8] }* @__const.perform_link_training_int.lane_count_set to i8*), i64 16, i1 false)
  %11 = bitcast %union.dpcd_training_pattern* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i32, i32* @DPCD_TRAINING_PATTERN_VIDEOIDLE, align 4
  %13 = bitcast %union.dpcd_training_pattern* %9 to %struct.TYPE_11__*
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %16 = getelementptr inbounds %union.dpcd_training_pattern, %union.dpcd_training_pattern* %9, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dpcd_set_training_pattern(%struct.dc_link* %15, i32 %18)
  %20 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %21 = load i32, i32* @DP_TEST_PATTERN_VIDEO_MODE, align 4
  %22 = call i32 @dp_set_hw_test_pattern(%struct.dc_link* %20, i32 %21, i32* null, i32 0)
  %23 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %24 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %32 = call i64 @get_supported_tp(%struct.dc_link* %31)
  %33 = load i64, i64* @DP_TRAINING_PATTERN_SEQUENCE_4, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %3
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %4, align 4
  br label %67

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @LINK_TRAINING_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %43 = load %struct.link_training_settings*, %struct.link_training_settings** %6, align 8
  %44 = call i32 @perform_post_lt_adj_req_sequence(%struct.dc_link* %42, %struct.link_training_settings* %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @LINK_TRAINING_LQA_FAIL, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %41, %37
  %49 = load %struct.link_training_settings*, %struct.link_training_settings** %6, align 8
  %50 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %union.lane_count_set* %8 to %struct.TYPE_16__*
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.link_training_settings*, %struct.link_training_settings** %6, align 8
  %56 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %union.lane_count_set* %8 to %struct.TYPE_16__*
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = bitcast %union.lane_count_set* %8 to %struct.TYPE_16__*
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %63 = load i32, i32* @DP_LANE_COUNT_SET, align 4
  %64 = bitcast %union.lane_count_set* %8 to i32*
  %65 = call i32 @core_link_write_dpcd(%struct.dc_link* %62, i32 %63, i32* %64, i32 16)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %48, %35
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dpcd_set_training_pattern(%struct.dc_link*, i32) #2

declare dso_local i32 @dp_set_hw_test_pattern(%struct.dc_link*, i32, i32*, i32) #2

declare dso_local i64 @get_supported_tp(%struct.dc_link*) #2

declare dso_local i32 @perform_post_lt_adj_req_sequence(%struct.dc_link*, %struct.link_training_settings*) #2

declare dso_local i32 @core_link_write_dpcd(%struct.dc_link*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
