; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_intel_guc_log_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_intel_guc_log_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_log = type { i32, %struct.i915_vma* }
%struct.i915_vma = type { i32 }
%struct.intel_guc = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@CRASH_BUFFER_SIZE = common dso_local global i64 0, align 8
@DPC_BUFFER_SIZE = common dso_local global i64 0, align 8
@ISR_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"guc_log_level=%d (%s, verbose:%s, verbosity:%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to allocate GuC log buffer. %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_guc_log_create(%struct.intel_guc_log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc_log*, align 8
  %4 = alloca %struct.intel_guc*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.intel_guc_log* %0, %struct.intel_guc_log** %3, align 8
  %8 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %9 = call %struct.intel_guc* @log_to_guc(%struct.intel_guc_log* %8)
  store %struct.intel_guc* %9, %struct.intel_guc** %4, align 8
  %10 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %11 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %10, i32 0, i32 1
  %12 = load %struct.i915_vma*, %struct.i915_vma** %11, align 8
  %13 = call i32 @GEM_BUG_ON(%struct.i915_vma* %12)
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = load i64, i64* @CRASH_BUFFER_SIZE, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @DPC_BUFFER_SIZE, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @ISR_BUFFER_SIZE, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %6, align 8
  %21 = load %struct.intel_guc*, %struct.intel_guc** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.i915_vma* @intel_guc_allocate_vma(%struct.intel_guc* %21, i64 %22)
  store %struct.i915_vma* %23, %struct.i915_vma** %5, align 8
  %24 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %25 = call i64 @IS_ERR(%struct.i915_vma* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %29 = call i32 @PTR_ERR(%struct.i915_vma* %28)
  store i32 %29, i32* %7, align 4
  br label %55

30:                                               ; preds = %1
  %31 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %32 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %33 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %32, i32 0, i32 1
  store %struct.i915_vma* %31, %struct.i915_vma** %33, align 8
  %34 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %35 = call i32 @__get_default_log_level(%struct.intel_guc_log* %34)
  %36 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %37 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %39 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %42 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @enableddisabled(i32 %43)
  %45 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %46 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @GUC_LOG_LEVEL_IS_VERBOSE(i32 %47)
  %49 = call i32 @yesno(i32 %48)
  %50 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %51 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @GUC_LOG_LEVEL_TO_VERBOSITY(i32 %52)
  %54 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44, i32 %49, i32 %53)
  store i32 0, i32* %2, align 4
  br label %59

55:                                               ; preds = %27
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %30
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.intel_guc* @log_to_guc(%struct.intel_guc_log*) #1

declare dso_local i32 @GEM_BUG_ON(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @intel_guc_allocate_vma(%struct.intel_guc*, i64) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @__get_default_log_level(%struct.intel_guc_log*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @enableddisabled(i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @GUC_LOG_LEVEL_IS_VERBOSE(i32) #1

declare dso_local i32 @GUC_LOG_LEVEL_TO_VERBOSITY(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
