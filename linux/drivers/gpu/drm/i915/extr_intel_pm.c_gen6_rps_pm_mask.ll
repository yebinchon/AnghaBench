; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_rps_pm_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_rps_pm_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i64, i64 }

@GEN6_PM_RP_UP_EI_EXPIRED = common dso_local global i32 0, align 4
@GEN6_PM_RP_DOWN_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_PM_RP_DOWN_TIMEOUT = common dso_local global i32 0, align 4
@GEN6_PM_RP_UP_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i64)* @gen6_rps_pm_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_rps_pm_mask(%struct.drm_i915_private* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.intel_rps*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.intel_rps* %9, %struct.intel_rps** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %12 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @GEN6_PM_RP_UP_EI_EXPIRED, align 4
  %17 = load i32, i32* @GEN6_PM_RP_DOWN_THRESHOLD, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GEN6_PM_RP_DOWN_TIMEOUT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %15, %2
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %26 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @GEN6_PM_RP_UP_EI_EXPIRED, align 4
  %31 = load i32, i32* @GEN6_PM_RP_UP_THRESHOLD, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = xor i32 %42, -1
  %44 = call i32 @gen6_sanitize_rps_pm_mask(%struct.drm_i915_private* %41, i32 %43)
  ret i32 %44
}

declare dso_local i32 @gen6_sanitize_rps_pm_mask(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
