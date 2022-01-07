; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c___get_default_log_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c___get_default_log_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.intel_guc_log = type { i32 }

@i915_modparams = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CONFIG_DRM_I915_DEBUG = common dso_local global i32 0, align 4
@CONFIG_DRM_I915_DEBUG_GEM = common dso_local global i32 0, align 4
@GUC_LOG_LEVEL_MAX = common dso_local global i64 0, align 8
@GUC_LOG_LEVEL_NON_VERBOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Incompatible option detected: %s=%d, %s!\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"guc_log_level\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"verbosity too high\00", align 1
@GUC_LOG_LEVEL_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_guc_log*)* @__get_default_log_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__get_default_log_level(%struct.intel_guc_log* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.intel_guc_log*, align 8
  store %struct.intel_guc_log* %0, %struct.intel_guc_log** %3, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_modparams, i32 0, i32 0), align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i32, i32* @CONFIG_DRM_I915_DEBUG, align 4
  %8 = call i64 @IS_ENABLED(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @CONFIG_DRM_I915_DEBUG_GEM, align 4
  %12 = call i64 @IS_ENABLED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %6
  %15 = load i64, i64* @GUC_LOG_LEVEL_MAX, align 8
  br label %18

16:                                               ; preds = %10
  %17 = load i64, i64* @GUC_LOG_LEVEL_NON_VERBOSE, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %2, align 8
  br label %52

20:                                               ; preds = %1
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_modparams, i32 0, i32 0), align 8
  %22 = load i64, i64* @GUC_LOG_LEVEL_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_modparams, i32 0, i32 0), align 8
  %26 = call i32 @DRM_WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @CONFIG_DRM_I915_DEBUG, align 4
  %28 = call i64 @IS_ENABLED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @CONFIG_DRM_I915_DEBUG_GEM, align 4
  %32 = call i64 @IS_ENABLED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %24
  %35 = load i64, i64* @GUC_LOG_LEVEL_MAX, align 8
  br label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @GUC_LOG_LEVEL_DISABLED, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ]
  store i64 %39, i64* %2, align 8
  br label %52

40:                                               ; preds = %20
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_modparams, i32 0, i32 0), align 8
  %42 = load i64, i64* @GUC_LOG_LEVEL_DISABLED, align 8
  %43 = icmp slt i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @GEM_BUG_ON(i32 %44)
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_modparams, i32 0, i32 0), align 8
  %47 = load i64, i64* @GUC_LOG_LEVEL_MAX, align 8
  %48 = icmp sgt i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @GEM_BUG_ON(i32 %49)
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_modparams, i32 0, i32 0), align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %40, %38, %18
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @DRM_WARN(i8*, i8*, i64, i8*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
