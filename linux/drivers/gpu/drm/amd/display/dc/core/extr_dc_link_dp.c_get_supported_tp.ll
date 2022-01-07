; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_supported_tp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_supported_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.dpcd_caps, %struct.TYPE_12__* }
%struct.dpcd_caps = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { %struct.encoder_feature_support }
%struct.encoder_feature_support = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }

@DP_TRAINING_PATTERN_SEQUENCE_2 = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SEQUENCE_3 = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SEQUENCE_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*)* @get_supported_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_supported_tp(%struct.dc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.encoder_feature_support*, align 8
  %6 = alloca %struct.dpcd_caps*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  %7 = load i32, i32* @DP_TRAINING_PATTERN_SEQUENCE_2, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %9 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %8, i32 0, i32 1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store %struct.encoder_feature_support* %11, %struct.encoder_feature_support** %5, align 8
  %12 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %13 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %12, i32 0, i32 0
  store %struct.dpcd_caps* %13, %struct.dpcd_caps** %6, align 8
  %14 = load %struct.encoder_feature_support*, %struct.encoder_feature_support** %5, align 8
  %15 = getelementptr inbounds %struct.encoder_feature_support, %struct.encoder_feature_support* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @DP_TRAINING_PATTERN_SEQUENCE_3, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %1
  %23 = load %struct.encoder_feature_support*, %struct.encoder_feature_support** %5, align 8
  %24 = getelementptr inbounds %struct.encoder_feature_support, %struct.encoder_feature_support* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @DP_TRAINING_PATTERN_SEQUENCE_4, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = load %struct.dpcd_caps*, %struct.dpcd_caps** %6, align 8
  %33 = getelementptr inbounds %struct.dpcd_caps, %struct.dpcd_caps* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @DP_TRAINING_PATTERN_SEQUENCE_4, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @DP_TRAINING_PATTERN_SEQUENCE_4, align 4
  store i32 %43, i32* %2, align 4
  br label %59

44:                                               ; preds = %38, %31
  %45 = load %struct.dpcd_caps*, %struct.dpcd_caps** %6, align 8
  %46 = getelementptr inbounds %struct.dpcd_caps, %struct.dpcd_caps* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DP_TRAINING_PATTERN_SEQUENCE_3, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @DP_TRAINING_PATTERN_SEQUENCE_3, align 4
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %51, %44
  %58 = load i32, i32* @DP_TRAINING_PATTERN_SEQUENCE_2, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %55, %42
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
