; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_set_hw_training_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_set_hw_training_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32 }

@DP_TEST_PATTERN_UNSUPPORTED = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_TRAINING_PATTERN1 = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_TRAINING_PATTERN2 = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_TRAINING_PATTERN3 = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_TRAINING_PATTERN4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dp_set_hw_training_pattern(%struct.dc_link* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @DP_TEST_PATTERN_UNSUPPORTED, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %16 [
    i32 131, label %8
    i32 130, label %10
    i32 129, label %12
    i32 128, label %14
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @DP_TEST_PATTERN_TRAINING_PATTERN1, align 4
  store i32 %9, i32* %5, align 4
  br label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @DP_TEST_PATTERN_TRAINING_PATTERN2, align 4
  store i32 %11, i32* %5, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @DP_TEST_PATTERN_TRAINING_PATTERN3, align 4
  store i32 %13, i32* %5, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @DP_TEST_PATTERN_TRAINING_PATTERN4, align 4
  store i32 %15, i32* %5, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14, %12, %10, %8
  %18 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dp_set_hw_test_pattern(%struct.dc_link* %18, i32 %19, i32* null, i32 0)
  ret i32 1
}

declare dso_local i32 @dp_set_hw_test_pattern(%struct.dc_link*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
