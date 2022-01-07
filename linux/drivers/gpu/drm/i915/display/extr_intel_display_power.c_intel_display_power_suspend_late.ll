; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_display_power_suspend_late.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_display_power_suspend_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_display_power_suspend_late(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i32 @INTEL_GEN(%struct.drm_i915_private* %3)
  %5 = icmp sge i32 %4, 11
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call i32 @bxt_enable_dc9(%struct.drm_i915_private* %11)
  br label %25

13:                                               ; preds = %6
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = call i64 @IS_HASWELL(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %13
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = call i32 @hsw_enable_pc8(%struct.drm_i915_private* %22)
  br label %24

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_enable_dc9(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @hsw_enable_pc8(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
