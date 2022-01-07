; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_autotest_link_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_autotest_link_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DP_TEST_LANE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Lane count read failed\0A\00", align 1
@DP_TEST_NAK = common dso_local global i32 0, align 4
@DP_MAX_LANE_COUNT_MASK = common dso_local global i32 0, align 4
@DP_TEST_LINK_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Link Rate read failed\0A\00", align 1
@DP_TEST_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_dp_autotest_link_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_autotest_link_training(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %9 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %8, i32 0, i32 1
  %10 = load i32, i32* @DP_TEST_LANE_COUNT, align 4
  %11 = call i32 @drm_dp_dpcd_readb(i32* %9, i32 %10, i32* %6)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @DP_TEST_NAK, align 4
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %1
  %18 = load i32, i32* @DP_MAX_LANE_COUNT_MASK, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 1
  %23 = load i32, i32* @DP_TEST_LINK_RATE, align 4
  %24 = call i32 @drm_dp_dpcd_readb(i32* %22, i32 %23, i32* %7)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @DP_TEST_NAK, align 4
  store i32 %29, i32* %2, align 4
  br label %50

30:                                               ; preds = %17
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @drm_dp_bw_code_to_link_rate(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @intel_dp_link_params_valid(%struct.intel_dp* %33, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @DP_TEST_NAK, align 4
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %43 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %47 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @DP_TEST_ACK, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %40, %38, %27, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_dp_bw_code_to_link_rate(i32) #1

declare dso_local i32 @intel_dp_link_params_valid(%struct.intel_dp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
