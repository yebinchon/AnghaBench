; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_guc_log_relay_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_guc_log_relay_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_log = type { %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.rchan*, i32 }
%struct.rchan = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.intel_guc = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.drm_i915_private* }

@.str = private unnamed_addr constant [8 x i8] c"guc_log\00", align 1
@relay_callbacks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Couldn't create relay chan for GuC logging\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc_log*)* @guc_log_relay_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guc_log_relay_create(%struct.intel_guc_log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc_log*, align 8
  %4 = alloca %struct.intel_guc*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.rchan*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.intel_guc_log* %0, %struct.intel_guc_log** %3, align 8
  %10 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %11 = call %struct.intel_guc* @log_to_guc(%struct.intel_guc_log* %10)
  store %struct.intel_guc* %11, %struct.intel_guc** %4, align 8
  %12 = load %struct.intel_guc*, %struct.intel_guc** %4, align 8
  %13 = call %struct.TYPE_10__* @guc_to_gt(%struct.intel_guc* %12)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %5, align 8
  %16 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %17 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %21 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @GEM_BUG_ON(i32 %25)
  %27 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %28 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  store i64 8, i64* %7, align 8
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %41 = call %struct.rchan* @relay_open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38, i64 %39, i32* @relay_callbacks, %struct.drm_i915_private* %40)
  store %struct.rchan* %41, %struct.rchan** %6, align 8
  %42 = load %struct.rchan*, %struct.rchan** %6, align 8
  %43 = icmp ne %struct.rchan* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %1
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %2, align 4
  br label %61

49:                                               ; preds = %1
  %50 = load %struct.rchan*, %struct.rchan** %6, align 8
  %51 = getelementptr inbounds %struct.rchan, %struct.rchan* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ult i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @GEM_BUG_ON(i32 %55)
  %57 = load %struct.rchan*, %struct.rchan** %6, align 8
  %58 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %59 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store %struct.rchan* %57, %struct.rchan** %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %49, %44
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.intel_guc* @log_to_guc(%struct.intel_guc_log*) #1

declare dso_local %struct.TYPE_10__* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local %struct.rchan* @relay_open(i8*, i32, i64, i64, i32*, %struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
