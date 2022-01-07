; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c___intel_display_power_put_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c___intel_display_power_put_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_runtime_pm, %struct.i915_power_domains }
%struct.intel_runtime_pm = type { i32 }
%struct.i915_power_domains = type { i32*, i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__intel_display_power_put_async(%struct.drm_i915_private* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.i915_power_domains*, align 8
  %8 = alloca %struct.intel_runtime_pm*, align 8
  %9 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 1
  store %struct.i915_power_domains* %11, %struct.i915_power_domains** %7, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  store %struct.intel_runtime_pm* %13, %struct.intel_runtime_pm** %8, align 8
  %14 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %8, align 8
  %15 = call i64 @intel_runtime_pm_get_raw(%struct.intel_runtime_pm* %14)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.i915_power_domains*, %struct.i915_power_domains** %7, align 8
  %17 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.i915_power_domains*, %struct.i915_power_domains** %7, align 8
  %20 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @__intel_display_power_put_domain(%struct.drm_i915_private* %28, i32 %29)
  br label %68

31:                                               ; preds = %3
  %32 = load %struct.i915_power_domains*, %struct.i915_power_domains** %7, align 8
  %33 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.i915_power_domains*, %struct.i915_power_domains** %7, align 8
  %43 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %31
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @BIT_ULL(i32 %47)
  %49 = load %struct.i915_power_domains*, %struct.i915_power_domains** %7, align 8
  %50 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 4
  br label %67

55:                                               ; preds = %31
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @BIT_ULL(i32 %56)
  %58 = load %struct.i915_power_domains*, %struct.i915_power_domains** %7, align 8
  %59 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %57
  store i32 %63, i32* %61, align 4
  %64 = load %struct.i915_power_domains*, %struct.i915_power_domains** %7, align 8
  %65 = call i32 @fetch_and_zero(i64* %9)
  %66 = call i32 @queue_async_put_domains_work(%struct.i915_power_domains* %64, i32 %65)
  br label %67

67:                                               ; preds = %55, %46
  br label %68

68:                                               ; preds = %67, %27
  %69 = load %struct.i915_power_domains*, %struct.i915_power_domains** %7, align 8
  %70 = call i32 @verify_async_put_domains_state(%struct.i915_power_domains* %69)
  %71 = load %struct.i915_power_domains*, %struct.i915_power_domains** %7, align 8
  %72 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @intel_runtime_pm_put_raw(%struct.intel_runtime_pm* %77, i64 %78)
  br label %80

80:                                               ; preds = %76, %68
  %81 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %8, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @intel_runtime_pm_put(%struct.intel_runtime_pm* %81, i64 %82)
  ret void
}

declare dso_local i64 @intel_runtime_pm_get_raw(%struct.intel_runtime_pm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__intel_display_power_put_domain(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @queue_async_put_domains_work(%struct.i915_power_domains*, i32) #1

declare dso_local i32 @fetch_and_zero(i64*) #1

declare dso_local i32 @verify_async_put_domains_state(%struct.i915_power_domains*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_runtime_pm_put_raw(%struct.intel_runtime_pm*, i64) #1

declare dso_local i32 @intel_runtime_pm_put(%struct.intel_runtime_pm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
