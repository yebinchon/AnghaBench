; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_display_power_get_if_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_display_power_get_if_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.i915_power_domains }
%struct.i915_power_domains = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_power_domains*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 1
  store %struct.i915_power_domains* %10, %struct.i915_power_domains** %6, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = call i32 @intel_runtime_pm_get_if_in_use(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.i915_power_domains*, %struct.i915_power_domains** %6, align 8
  %19 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @__intel_display_power_is_enabled(%struct.drm_i915_private* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @__intel_display_power_get_domain(%struct.drm_i915_private* %26, i32 %27)
  store i32 1, i32* %8, align 4
  br label %30

29:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load %struct.i915_power_domains*, %struct.i915_power_domains** %6, align 8
  %32 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @intel_runtime_pm_put(i32* %38, i32 %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @intel_runtime_pm_get_if_in_use(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__intel_display_power_is_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @__intel_display_power_get_domain(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
