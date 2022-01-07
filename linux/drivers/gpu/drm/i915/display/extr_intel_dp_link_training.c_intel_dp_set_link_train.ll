; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_link_training.c_intel_dp_set_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_link_training.c_intel_dp_set_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32, i32 }

@DP_TRAINING_PATTERN_MASK = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_DISABLE = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, i32)* @intel_dp_set_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_set_link_train(%struct.intel_dp* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @intel_dp_program_link_training_pattern(%struct.intel_dp* %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 %11, i32* %12, align 16
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DP_TRAINING_PATTERN_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @DP_TRAINING_PATTERN_DISABLE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %33

19:                                               ; preds = %2
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %23 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32* %21, i32 %24, i32 %27)
  %29 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %30 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %19, %18
  %34 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %35 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %34, i32 0, i32 1
  %36 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @drm_dp_dpcd_write(i32* %35, i32 %36, i32* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i32 @intel_dp_program_link_training_pattern(%struct.intel_dp*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_write(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
