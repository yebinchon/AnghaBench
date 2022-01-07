; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_guc_action_control_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_guc_action_control_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }

@INTEL_GUC_ACTION_UK_LOG_ENABLE_LOGGING = common dso_local global i64 0, align 8
@GUC_LOG_CONTROL_LOGGING_ENABLED = common dso_local global i64 0, align 8
@GUC_LOG_CONTROL_VERBOSITY_SHIFT = common dso_local global i64 0, align 8
@GUC_LOG_CONTROL_DEFAULT_LOGGING = common dso_local global i64 0, align 8
@GUC_LOG_VERBOSITY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc*, i32, i32, i64)* @guc_action_control_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guc_action_control_log(%struct.intel_guc* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.intel_guc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [2 x i64], align 16
  store %struct.intel_guc* %0, %struct.intel_guc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %11 = load i64, i64* @INTEL_GUC_ACTION_UK_LOG_ENABLE_LOGGING, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 1
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* @GUC_LOG_CONTROL_LOGGING_ENABLED, align 8
  br label %18

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %17 ]
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @GUC_LOG_CONTROL_VERBOSITY_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = or i64 %19, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i64, i64* @GUC_LOG_CONTROL_DEFAULT_LOGGING, align 8
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i64 [ %27, %26 ], [ 0, %28 ]
  %31 = or i64 %23, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @GUC_LOG_VERBOSITY_MAX, align 8
  %34 = icmp sgt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @GEM_BUG_ON(i32 %35)
  %37 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %40 = call i32 @ARRAY_SIZE(i64* %39)
  %41 = call i32 @intel_guc_send(%struct.intel_guc* %37, i64* %38, i32 %40)
  ret i32 %41
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_guc_send(%struct.intel_guc*, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
