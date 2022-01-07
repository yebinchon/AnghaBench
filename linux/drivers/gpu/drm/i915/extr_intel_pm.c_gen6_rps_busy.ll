; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_rps_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_rps_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32, i32, i32, i32, i64 }

@GEN6_PM_RP_UP_EI_EXPIRED = common dso_local global i32 0, align 4
@GEN6_PMINTRMSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to set idle frequency\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen6_rps_busy(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_rps*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.intel_rps* %7, %struct.intel_rps** %3, align 8
  %8 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %9 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %12 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GEN6_PM_RP_UP_EI_EXPIRED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = call i32 @gen6_rps_reset_ei(%struct.drm_i915_private* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* @GEN6_PMINTRMSK, align 4
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %29 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @gen6_rps_pm_mask(%struct.drm_i915_private* %27, i32 %30)
  %32 = call i32 @I915_WRITE(i32 %26, i32 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = call i32 @gen6_enable_rps_interrupts(%struct.drm_i915_private* %33)
  %35 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %36 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %39 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @max(i32 %37, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %45 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %48 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clamp(i32 %43, i32 %46, i32 %49)
  %51 = call i64 @intel_set_rps(%struct.drm_i915_private* %42, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %25
  %54 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %25
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %58 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gen6_rps_reset_ei(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @gen6_rps_pm_mask(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @gen6_enable_rps_interrupts(%struct.drm_i915_private*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @intel_set_rps(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
