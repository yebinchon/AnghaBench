; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_test_send_link_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_test_send_link_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32 }
%union.link_test_pattern = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%union.test_misc = type { %struct.TYPE_2__ }

@DP_TEST_PATTERN = common dso_local global i32 0, align 4
@DP_TEST_MISC0 = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_COLOR_RAMP = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_VERTICAL_BARS = common dso_local global i32 0, align 4
@TEST_DYN_RANGE_VESA = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_COLOR_SQUARES = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_COLOR_SQUARES_CEA = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_VIDEO_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_link*)* @dp_test_send_link_test_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp_test_send_link_test_pattern(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca %union.link_test_pattern, align 4
  %4 = alloca %union.test_misc, align 4
  %5 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %6 = bitcast %union.link_test_pattern* %3 to %union.test_misc*
  %7 = call i32 @memset(%union.test_misc* %6, i32 0, i32 8)
  %8 = call i32 @memset(%union.test_misc* %4, i32 0, i32 8)
  %9 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %10 = load i32, i32* @DP_TEST_PATTERN, align 4
  %11 = bitcast %union.link_test_pattern* %3 to i32*
  %12 = call i32 @core_link_read_dpcd(%struct.dc_link* %9, i32 %10, i32* %11, i32 8)
  %13 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %14 = load i32, i32* @DP_TEST_MISC0, align 4
  %15 = bitcast %union.test_misc* %4 to i32*
  %16 = call i32 @core_link_read_dpcd(%struct.dc_link* %13, i32 %14, i32* %15, i32 8)
  %17 = bitcast %union.link_test_pattern* %3 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %36 [
    i32 130, label %20
    i32 128, label %22
    i32 129, label %24
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @DP_TEST_PATTERN_COLOR_RAMP, align 4
  store i32 %21, i32* %5, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load i32, i32* @DP_TEST_PATTERN_VERTICAL_BARS, align 4
  store i32 %23, i32* %5, align 4
  br label %38

24:                                               ; preds = %1
  %25 = bitcast %union.test_misc* %4 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TEST_DYN_RANGE_VESA, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @DP_TEST_PATTERN_COLOR_SQUARES, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @DP_TEST_PATTERN_COLOR_SQUARES_CEA, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @DP_TEST_PATTERN_VIDEO_MODE, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %34, %22, %20
  %39 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dc_link_dp_set_test_pattern(%struct.dc_link* %39, i32 %40, i32* null, i32* null, i32 0)
  ret void
}

declare dso_local i32 @memset(%union.test_misc*, i32, i32) #1

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i32, i32*, i32) #1

declare dso_local i32 @dc_link_dp_set_test_pattern(%struct.dc_link*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
