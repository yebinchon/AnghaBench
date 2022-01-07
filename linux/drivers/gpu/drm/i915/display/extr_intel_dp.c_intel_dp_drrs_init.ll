; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_drrs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_drrs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@intel_edp_drrs_downclock_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DRRS supported for Gen7 and above\0A\00", align 1
@SEAMLESS_DRRS_SUPPORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"VBT doesn't support DRRS\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Downclock mode is not found. DRRS not supported\0A\00", align 1
@DRRS_HIGH_RR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"seamless DRRS supported for eDP panel.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_display_mode* (%struct.intel_connector*, %struct.drm_display_mode*)* @intel_dp_drrs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_display_mode* @intel_dp_drrs_init(%struct.intel_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  store %struct.intel_connector* %0, %struct.intel_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %9 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %6, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %7, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32, i32* @intel_edp_drrs_downclock_work, align 4
  %17 = call i32 @INIT_DELAYED_WORK(i32* %15, i32 %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = call i32 @INTEL_GEN(%struct.drm_i915_private* %22)
  %24 = icmp sle i32 %23, 6
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  br label %58

27:                                               ; preds = %2
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SEAMLESS_DRRS_SUPPORT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  br label %58

36:                                               ; preds = %27
  %37 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = call %struct.drm_display_mode* @intel_panel_edid_downclock_mode(%struct.intel_connector* %37, %struct.drm_display_mode* %38)
  store %struct.drm_display_mode* %39, %struct.drm_display_mode** %7, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %41 = icmp ne %struct.drm_display_mode* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  br label %58

44:                                               ; preds = %36
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %50 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i32, i32* @DRRS_HIGH_RR, align 4
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %54 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  store %struct.drm_display_mode* %57, %struct.drm_display_mode** %3, align 8
  br label %58

58:                                               ; preds = %44, %42, %34, %25
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  ret %struct.drm_display_mode* %59
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.drm_display_mode* @intel_panel_edid_downclock_mode(%struct.intel_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
