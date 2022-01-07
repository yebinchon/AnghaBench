; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_link_train_fallback_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_link_train_fallback_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [53 x i8] c"Retrying Link training for eDP with same parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Link Training Unsuccessful\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_get_link_train_fallback_values(%struct.intel_dp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_dp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %10 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %13 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @intel_dp_rate_index(i32* %11, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %3
  %20 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %21 = call i64 @intel_dp_is_edp(%struct.intel_dp* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %25 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @intel_dp_can_link_train_fallback_for_edp(%struct.intel_dp* %24, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %23
  %37 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %82

38:                                               ; preds = %23, %19
  %39 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %40 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %48 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %51 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %81

52:                                               ; preds = %3
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %57 = call i64 @intel_dp_is_edp(%struct.intel_dp* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %61 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %62 = call i32 @intel_dp_max_common_rate(%struct.intel_dp* %61)
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 1
  %65 = call i32 @intel_dp_can_link_train_fallback_for_edp(%struct.intel_dp* %60, i32 %62, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %82

69:                                               ; preds = %59, %55
  %70 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %71 = call i32 @intel_dp_max_common_rate(%struct.intel_dp* %70)
  %72 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %73 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 1
  %76 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %77 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %80

78:                                               ; preds = %52
  %79 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %82

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %38
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %78, %67, %36
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @intel_dp_rate_index(i32*, i32, i32) #1

declare dso_local i64 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_can_link_train_fallback_for_edp(%struct.intel_dp*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_dp_max_common_rate(%struct.intel_dp*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
