; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_handle_test_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_handle_test_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DP_TEST_NAK = common dso_local global i32 0, align 4
@DP_TEST_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not read test request from sink\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"LINK_TRAINING test requested\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"TEST_PATTERN test requested\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"EDID test requested\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"PHY_PATTERN test requested\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Invalid test request '%02x'\0A\00", align 1
@DP_TEST_ACK = common dso_local global i32 0, align 4
@DP_TEST_RESPONSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Could not write test response to sink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_handle_test_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_handle_test_request(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %6 = load i32, i32* @DP_TEST_NAK, align 4
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %8 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %7, i32 0, i32 0
  %9 = load i32, i32* @DP_TEST_REQUEST, align 4
  %10 = call i32 @drm_dp_dpcd_readb(i32* %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %47

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %33 [
    i32 129, label %17
    i32 128, label %21
    i32 131, label %25
    i32 130, label %29
  ]

17:                                               ; preds = %15
  %18 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %20 = call i32 @intel_dp_autotest_link_training(%struct.intel_dp* %19)
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %15
  %22 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %24 = call i32 @intel_dp_autotest_video_pattern(%struct.intel_dp* %23)
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %15
  %26 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %28 = call i32 @intel_dp_autotest_edid(%struct.intel_dp* %27)
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %15
  %30 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %32 = call i32 @intel_dp_autotest_phy_pattern(%struct.intel_dp* %31)
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %15
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %29, %25, %21, %17
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @DP_TEST_ACK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %44 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %13
  %48 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %49 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %48, i32 0, i32 0
  %50 = load i32, i32* @DP_TEST_RESPONSE, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @drm_dp_dpcd_writeb(i32* %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %47
  ret void
}

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @intel_dp_autotest_link_training(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_autotest_video_pattern(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_autotest_edid(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_autotest_phy_pattern(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
