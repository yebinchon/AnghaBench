; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen6_disable_rps_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen6_disable_rps_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_gt, %struct.TYPE_2__ }
%struct.intel_gt = type { i32 }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32 }

@GEN6_PMINTRMSK = common dso_local global i32 0, align 4
@GEN6_PM_RPS_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen6_disable_rps_interrupts(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_rps*, align 8
  %4 = alloca %struct.intel_gt*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.intel_rps* %7, %struct.intel_rps** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  store %struct.intel_gt* %9, %struct.intel_gt** %4, align 8
  %10 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %11 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @READ_ONCE(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %18 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %21 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @GEN6_PMINTRMSK, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = call i32 @gen6_sanitize_rps_pm_mask(%struct.drm_i915_private* %23, i32 -1)
  %25 = call i32 @I915_WRITE(i32 %22, i32 %24)
  %26 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %27 = load i32, i32* @GEN6_PM_RPS_EVENTS, align 4
  %28 = call i32 @gen6_gt_pm_disable_irq(%struct.intel_gt* %26, i32 %27)
  %29 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %30 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = call i32 @intel_synchronize_irq(%struct.drm_i915_private* %32)
  %34 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %35 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %34, i32 0, i32 1
  %36 = call i32 @cancel_work_sync(i32* %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = call i32 @INTEL_GEN(%struct.drm_i915_private* %37)
  %39 = icmp sge i32 %38, 11
  br i1 %39, label %40, label %43

40:                                               ; preds = %16
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %42 = call i32 @gen11_reset_rps_interrupts(%struct.drm_i915_private* %41)
  br label %46

43:                                               ; preds = %16
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %45 = call i32 @gen6_reset_rps_interrupts(%struct.drm_i915_private* %44)
  br label %46

46:                                               ; preds = %15, %43, %40
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @gen6_sanitize_rps_pm_mask(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @gen6_gt_pm_disable_irq(%struct.intel_gt*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @intel_synchronize_irq(%struct.drm_i915_private*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @gen11_reset_rps_interrupts(%struct.drm_i915_private*) #1

declare dso_local i32 @gen6_reset_rps_interrupts(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
