; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_frequency_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_frequency_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.intel_uncore*, %struct.drm_i915_private* }
%struct.intel_uncore = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.i915_pmu }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i915_pmu = type { i32, i32* }

@I915_PMU_ACTUAL_FREQUENCY = common dso_local global i32 0, align 4
@GEN6_RPSTAT1 = common dso_local global i32 0, align 4
@__I915_SAMPLE_FREQ_ACT = common dso_local global i64 0, align 8
@I915_PMU_REQUESTED_FREQUENCY = common dso_local global i32 0, align 4
@__I915_SAMPLE_FREQ_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*, i32)* @frequency_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frequency_sample(%struct.intel_gt* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_uncore*, align 8
  %7 = alloca %struct.i915_pmu*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %10 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %9, i32 0, i32 1
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  %12 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %13 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %12, i32 0, i32 0
  %14 = load %struct.intel_uncore*, %struct.intel_uncore** %13, align 8
  store %struct.intel_uncore* %14, %struct.intel_uncore** %6, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 1
  store %struct.i915_pmu* %16, %struct.i915_pmu** %7, align 8
  %17 = load %struct.i915_pmu*, %struct.i915_pmu** %7, align 8
  %18 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @I915_PMU_ACTUAL_FREQUENCY, align 4
  %21 = call i32 @config_enabled_mask(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %2
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %31 = call i64 @intel_gt_pm_get_if_awake(%struct.intel_gt* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %35 = load i32, i32* @GEN6_RPSTAT1, align 4
  %36 = call i32 @intel_uncore_read_notrace(%struct.intel_uncore* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @intel_get_cagf(%struct.drm_i915_private* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %41 = call i32 @intel_gt_pm_put(%struct.intel_gt* %40)
  br label %42

42:                                               ; preds = %33, %24
  %43 = load %struct.i915_pmu*, %struct.i915_pmu** %7, align 8
  %44 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @__I915_SAMPLE_FREQ_ACT, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = udiv i32 %51, 1000
  %53 = call i32 @add_sample_mult(i32* %47, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %42, %2
  %55 = load %struct.i915_pmu*, %struct.i915_pmu** %7, align 8
  %56 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @I915_PMU_REQUESTED_FREQUENCY, align 4
  %59 = call i32 @config_enabled_mask(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load %struct.i915_pmu*, %struct.i915_pmu** %7, align 8
  %64 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @__I915_SAMPLE_FREQ_REQ, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %70 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %68, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = udiv i32 %75, 1000
  %77 = call i32 @add_sample_mult(i32* %67, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %62, %54
  ret void
}

declare dso_local i32 @config_enabled_mask(i32) #1

declare dso_local i64 @intel_gt_pm_get_if_awake(%struct.intel_gt*) #1

declare dso_local i32 @intel_uncore_read_notrace(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_get_cagf(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_gt_pm_put(%struct.intel_gt*) #1

declare dso_local i32 @add_sample_mult(i32*, i32, i32) #1

declare dso_local i32 @intel_gpu_freq(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
