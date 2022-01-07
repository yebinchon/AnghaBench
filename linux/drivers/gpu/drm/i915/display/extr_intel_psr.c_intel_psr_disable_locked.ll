; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_disable_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_disable_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Disabling PSR%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@EDP_PSR2_STATUS = common dso_local global i32 0, align 4
@EDP_PSR2_STATUS_STATE_MASK = common dso_local global i32 0, align 4
@EDP_PSR_STATUS = common dso_local global i32 0, align 4
@EDP_PSR_STATUS_STATE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Timed out waiting PSR idle state\0A\00", align 1
@DP_PSR_EN_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_psr_disable_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_psr_disable_locked(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %7 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %6)
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i32 @intel_psr_exit(%struct.drm_i915_private* %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32, i32* @EDP_PSR2_STATUS, align 4
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @EDP_PSR2_STATUS_STATE_MASK, align 4
  store i32 %36, i32* %5, align 4
  br label %40

37:                                               ; preds = %18
  %38 = load i32, i32* @EDP_PSR_STATUS, align 4
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @EDP_PSR_STATUS_STATE_MASK, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %41, i32 %42, i32 %43, i32 2000)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %40
  %49 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %50 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %49, i32 0, i32 0
  %51 = load i32, i32* @DP_PSR_EN_CFG, align 4
  %52 = call i32 @drm_dp_dpcd_writeb(i32* %50, i32 %51, i32 0)
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %48, %17
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*) #1

declare dso_local i32 @intel_psr_exit(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_de_wait_for_clear(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
