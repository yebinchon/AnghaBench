; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_mcc_hpd_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_mcc_hpd_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SDE_DDI_MASK_TGP = common dso_local global i32 0, align 4
@hpd_mcc = common dso_local global i32 0, align 4
@TGP_DDI_HPD_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @mcc_hpd_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcc_hpd_irq_setup(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load i32, i32* @SDE_DDI_MASK_TGP, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = load i32, i32* @hpd_mcc, align 4
  %8 = call i32 @intel_hpd_enabled_irqs(%struct.drm_i915_private* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ibx_display_interrupt_update(%struct.drm_i915_private* %9, i32 %10, i32 %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = load i32, i32* @TGP_DDI_HPD_ENABLE_MASK, align 4
  %15 = call i32 @icp_hpd_detection_setup(%struct.drm_i915_private* %13, i32 %14, i32 0)
  ret void
}

declare dso_local i32 @intel_hpd_enabled_irqs(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ibx_display_interrupt_update(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @icp_hpd_detection_setup(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
