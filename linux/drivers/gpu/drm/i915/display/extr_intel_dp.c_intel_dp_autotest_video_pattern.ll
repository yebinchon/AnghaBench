; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_autotest_video_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_autotest_video_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8*, i64 }

@DP_TEST_PATTERN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Test pattern read failed\0A\00", align 1
@DP_TEST_NAK = common dso_local global i64 0, align 8
@DP_COLOR_RAMP = common dso_local global i64 0, align 8
@DP_TEST_H_WIDTH_HI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"H Width read failed\0A\00", align 1
@DP_TEST_V_HEIGHT_HI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"V Height read failed\0A\00", align 1
@DP_TEST_MISC0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"TEST MISC read failed\0A\00", align 1
@DP_TEST_COLOR_FORMAT_MASK = common dso_local global i64 0, align 8
@DP_COLOR_FORMAT_RGB = common dso_local global i64 0, align 8
@DP_TEST_DYNAMIC_RANGE_CEA = common dso_local global i64 0, align 8
@DP_TEST_BIT_DEPTH_MASK = common dso_local global i64 0, align 8
@DP_TEST_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_dp*)* @intel_dp_autotest_video_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_dp_autotest_video_pattern(%struct.intel_dp* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %10 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %9, i32 0, i32 1
  %11 = load i32, i32* @DP_TEST_PATTERN, align 4
  %12 = call i32 @drm_dp_dpcd_readb(i32* %10, i32 %11, i64* %4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @DP_TEST_NAK, align 8
  store i64 %17, i64* %2, align 8
  br label %107

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @DP_COLOR_RAMP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @DP_TEST_NAK, align 8
  store i64 %23, i64* %2, align 8
  br label %107

24:                                               ; preds = %18
  %25 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 1
  %27 = load i32, i32* @DP_TEST_H_WIDTH_HI, align 4
  %28 = call i32 @drm_dp_dpcd_read(i32* %26, i32 %27, i32* %6, i32 2)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* @DP_TEST_NAK, align 8
  store i64 %33, i64* %2, align 8
  br label %107

34:                                               ; preds = %24
  %35 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 1
  %37 = load i32, i32* @DP_TEST_V_HEIGHT_HI, align 4
  %38 = call i32 @drm_dp_dpcd_read(i32* %36, i32 %37, i32* %7, i32 2)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i64, i64* @DP_TEST_NAK, align 8
  store i64 %43, i64* %2, align 8
  br label %107

44:                                               ; preds = %34
  %45 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %46 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %45, i32 0, i32 1
  %47 = load i32, i32* @DP_TEST_MISC0, align 4
  %48 = call i32 @drm_dp_dpcd_readb(i32* %46, i32 %47, i64* %5)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i64, i64* @DP_TEST_NAK, align 8
  store i64 %53, i64* %2, align 8
  br label %107

54:                                               ; preds = %44
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @DP_TEST_COLOR_FORMAT_MASK, align 8
  %57 = and i64 %55, %56
  %58 = load i64, i64* @DP_COLOR_FORMAT_RGB, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* @DP_TEST_NAK, align 8
  store i64 %61, i64* %2, align 8
  br label %107

62:                                               ; preds = %54
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @DP_TEST_DYNAMIC_RANGE_CEA, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* @DP_TEST_NAK, align 8
  store i64 %68, i64* %2, align 8
  br label %107

69:                                               ; preds = %62
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @DP_TEST_BIT_DEPTH_MASK, align 8
  %72 = and i64 %70, %71
  switch i64 %72, label %83 [
    i64 129, label %73
    i64 128, label %78
  ]

73:                                               ; preds = %69
  %74 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %75 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 6, i32* %77, align 8
  br label %85

78:                                               ; preds = %69
  %79 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %80 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 8, i32* %82, align 8
  br label %85

83:                                               ; preds = %69
  %84 = load i64, i64* @DP_TEST_NAK, align 8
  store i64 %84, i64* %2, align 8
  br label %107

85:                                               ; preds = %78, %73
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %88 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  store i64 %86, i64* %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i8* @be16_to_cpu(i32 %91)
  %93 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %94 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i8* %92, i8** %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i8* @be16_to_cpu(i32 %97)
  %99 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %100 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i8* %98, i8** %102, align 8
  %103 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %104 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i64, i64* @DP_TEST_ACK, align 8
  store i64 %106, i64* %2, align 8
  br label %107

107:                                              ; preds = %85, %83, %67, %60, %51, %41, %31, %22, %15
  %108 = load i64, i64* %2, align 8
  ret i64 %108
}

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i64*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i32*, i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
