; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_vlv_display_irq_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_vlv_display_irq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@DPINVGTT = common dso_local global i32 0, align 4
@DPINVGTT_STATUS_MASK_CHV = common dso_local global i32 0, align 4
@DPINVGTT_STATUS_MASK = common dso_local global i32 0, align 4
@PORT_HOTPLUG_STAT = common dso_local global i32 0, align 4
@VLV_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @vlv_display_irq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_display_irq_reset(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 1
  store %struct.intel_uncore* %5, %struct.intel_uncore** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %11 = load i32, i32* @DPINVGTT, align 4
  %12 = load i32, i32* @DPINVGTT_STATUS_MASK_CHV, align 4
  %13 = call i32 @intel_uncore_write(%struct.intel_uncore* %10, i32 %11, i32 %12)
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %16 = load i32, i32* @DPINVGTT, align 4
  %17 = load i32, i32* @DPINVGTT_STATUS_MASK, align 4
  %18 = call i32 @intel_uncore_write(%struct.intel_uncore* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = call i32 @i915_hotplug_interrupt_update_locked(%struct.drm_i915_private* %20, i32 -1, i32 0)
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %23 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %24 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %25 = call i32 @I915_READ(i32 %24)
  %26 = call i32 @intel_uncore_write(%struct.intel_uncore* %22, i32 %23, i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i32 @i9xx_pipestat_irq_reset(%struct.drm_i915_private* %27)
  %29 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %30 = load i32, i32* @VLV_, align 4
  %31 = call i32 @GEN3_IRQ_RESET(%struct.intel_uncore* %29, i32 %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  ret void
}

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @i915_hotplug_interrupt_update_locked(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @i9xx_pipestat_irq_reset(%struct.drm_i915_private*) #1

declare dso_local i32 @GEN3_IRQ_RESET(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
