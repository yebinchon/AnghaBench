; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i915_hpd_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i915_hpd_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@hpd_mask_i915 = common dso_local global i32 0, align 4
@CRT_HOTPLUG_ACTIVATION_PERIOD_64 = common dso_local global i32 0, align 4
@CRT_HOTPLUG_VOLTAGE_COMPARE_50 = common dso_local global i32 0, align 4
@HOTPLUG_INT_EN_MASK = common dso_local global i32 0, align 4
@CRT_HOTPLUG_VOLTAGE_COMPARE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @i915_hpd_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_hpd_irq_setup(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = load i32, i32* @hpd_mask_i915, align 4
  %9 = call i32 @intel_hpd_enabled_irqs(%struct.drm_i915_private* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = call i64 @IS_G4X(%struct.drm_i915_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @CRT_HOTPLUG_ACTIVATION_PERIOD_64, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* @CRT_HOTPLUG_VOLTAGE_COMPARE_50, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = load i32, i32* @HOTPLUG_INT_EN_MASK, align 4
  %23 = load i32, i32* @CRT_HOTPLUG_VOLTAGE_COMPARE_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CRT_HOTPLUG_ACTIVATION_PERIOD_64, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @i915_hotplug_interrupt_update_locked(%struct.drm_i915_private* %21, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @intel_hpd_enabled_irqs(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_hotplug_interrupt_update_locked(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
