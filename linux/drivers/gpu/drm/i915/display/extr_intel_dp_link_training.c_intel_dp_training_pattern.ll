; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_link_training.c_intel_dp_training_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_link_training.c_intel_dp_training_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32 }

@DP_TRAINING_PATTERN_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"8.1 Gbps link rate without source HBR3/TPS4 support\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"8.1 Gbps link rate without sink TPS4 support\0A\00", align 1
@DP_TRAINING_PATTERN_3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c">=5.4/6.48 Gbps link rate without source HBR2/TPS3 support\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c">=5.4/6.48 Gbps link rate without sink TPS3 support\0A\00", align 1
@DP_TRAINING_PATTERN_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_dp_training_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_training_pattern(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %9 = call i32 @intel_dp_source_supports_hbr3(%struct.intel_dp* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %11 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @drm_dp_tps4_supported(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @DP_TRAINING_PATTERN_4, align 4
  store i32 %20, i32* %2, align 4
  br label %71

21:                                               ; preds = %16, %1
  %22 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %23 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 810000
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %21
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %40 = call i32 @intel_dp_source_supports_hbr2(%struct.intel_dp* %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %42 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @drm_dp_tps3_supported(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @DP_TRAINING_PATTERN_3, align 4
  store i32 %51, i32* %2, align 4
  br label %71

52:                                               ; preds = %47, %38
  %53 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %54 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 540000
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* @DP_TRAINING_PATTERN_2, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %50, %19
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @intel_dp_source_supports_hbr3(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_tps4_supported(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_dp_source_supports_hbr2(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_tps3_supported(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
