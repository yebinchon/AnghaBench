; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_power_domains_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_power_domains_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.i915_power_domains }
%struct.i915_power_domains = type { i32, i32 }

@POWER_DOMAIN_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_power_domains_resume(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.i915_power_domains*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  store %struct.i915_power_domains* %5, %struct.i915_power_domains** %3, align 8
  %6 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %7 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call i32 @intel_power_domains_init_hw(%struct.drm_i915_private* %11, i32 1)
  %13 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %14 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %17 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = load i32, i32* @POWER_DOMAIN_INIT, align 4
  %22 = call i32 @intel_display_power_get(%struct.drm_i915_private* %20, i32 %21)
  %23 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %24 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %15, %10
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = call i32 @intel_power_domains_verify_state(%struct.drm_i915_private* %26)
  ret void
}

declare dso_local i32 @intel_power_domains_init_hw(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_power_domains_verify_state(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
