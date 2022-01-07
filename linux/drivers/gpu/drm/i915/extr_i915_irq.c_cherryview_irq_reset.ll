; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_cherryview_irq_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_cherryview_irq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i64, i32, %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@GEN8_MASTER_IRQ = common dso_local global i32 0, align 4
@GEN8_PCU_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @cherryview_irq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cherryview_irq_reset(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 3
  store %struct.intel_uncore* %5, %struct.intel_uncore** %3, align 8
  %6 = load i32, i32* @GEN8_MASTER_IRQ, align 4
  %7 = call i32 @I915_WRITE(i32 %6, i32 0)
  %8 = load i32, i32* @GEN8_MASTER_IRQ, align 4
  %9 = call i32 @POSTING_READ(i32 %8)
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 2
  %12 = call i32 @gen8_gt_irq_reset(i32* %11)
  %13 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %14 = load i32, i32* @GEN8_PCU_, align 4
  %15 = call i32 @GEN3_IRQ_RESET(%struct.intel_uncore* %13, i32 %14)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = call i32 @vlv_display_irq_reset(%struct.drm_i915_private* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_irq(i32* %28)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @gen8_gt_irq_reset(i32*) #1

declare dso_local i32 @GEN3_IRQ_RESET(%struct.intel_uncore*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @vlv_display_irq_reset(%struct.drm_i915_private*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
