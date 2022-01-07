; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen6_enable_rps_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen6_enable_rps_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_2__, %struct.intel_gt }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32 }
%struct.intel_gt = type { i32 }

@GEN11_GTPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen6_enable_rps_interrupts(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca %struct.intel_rps*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 2
  store %struct.intel_gt* %6, %struct.intel_gt** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.intel_rps* %9, %struct.intel_rps** %4, align 8
  %10 = load %struct.intel_rps*, %struct.intel_rps** %4, align 8
  %11 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @READ_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %18 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.intel_rps*, %struct.intel_rps** %4, align 8
  %21 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @WARN_ON_ONCE(i32 %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = call i32 @INTEL_GEN(%struct.drm_i915_private* %24)
  %26 = icmp sge i32 %25, 11
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %29 = load i32, i32* @GEN11_GTPM, align 4
  %30 = call i32 @gen11_gt_reset_one_iir(%struct.intel_gt* %28, i32 0, i32 %29)
  %31 = call i32 @WARN_ON_ONCE(i32 %30)
  br label %41

32:                                               ; preds = %16
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = call i32 @gen6_pm_iir(%struct.drm_i915_private* %33)
  %35 = call i32 @I915_READ(i32 %34)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = call i32 @WARN_ON_ONCE(i32 %39)
  br label %41

41:                                               ; preds = %32, %27
  %42 = load %struct.intel_rps*, %struct.intel_rps** %4, align 8
  %43 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gen6_gt_pm_enable_irq(%struct.intel_gt* %44, i32 %47)
  %49 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %50 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_irq(i32* %50)
  br label %52

52:                                               ; preds = %41, %15
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @gen11_gt_reset_one_iir(%struct.intel_gt*, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @gen6_pm_iir(%struct.drm_i915_private*) #1

declare dso_local i32 @gen6_gt_pm_enable_irq(%struct.intel_gt*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
