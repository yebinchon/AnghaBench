; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c___get_rc6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c___get_rc6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@VLV_GT_RENDER_RC6 = common dso_local global i32 0, align 4
@GEN6_GT_GFX_RC6 = common dso_local global i32 0, align 4
@GEN6_GT_GFX_RC6p = common dso_local global i32 0, align 4
@GEN6_GT_GFX_RC6pp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_gt*)* @__get_rc6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__get_rc6(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i64, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %5 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %6 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @VLV_GT_RENDER_RC6, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @GEN6_GT_GFX_RC6, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = call i64 @intel_rc6_residency_ns(%struct.drm_i915_private* %8, i32 %17)
  store i64 %18, i64* %4, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = call i64 @HAS_RC6p(%struct.drm_i915_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = load i32, i32* @GEN6_GT_GFX_RC6p, align 4
  %25 = call i64 @intel_rc6_residency_ns(%struct.drm_i915_private* %23, i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = call i64 @HAS_RC6pp(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = load i32, i32* @GEN6_GT_GFX_RC6pp, align 4
  %35 = call i64 @intel_rc6_residency_ns(%struct.drm_i915_private* %33, i32 %34)
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %32, %28
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i64 @intel_rc6_residency_ns(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_RC6p(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_RC6pp(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
