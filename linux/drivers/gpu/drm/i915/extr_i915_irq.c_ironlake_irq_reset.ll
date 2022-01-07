; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@DE = common dso_local global i32 0, align 4
@GEN7_ERR_INT = common dso_local global i32 0, align 4
@EDP_PSR_IMR = common dso_local global i32 0, align 4
@EDP_PSR_IIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @ironlake_irq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_irq_reset(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 1
  store %struct.intel_uncore* %5, %struct.intel_uncore** %3, align 8
  %6 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %7 = load i32, i32* @DE, align 4
  %8 = call i32 @GEN3_IRQ_RESET(%struct.intel_uncore* %6, i32 %7)
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = call i64 @IS_GEN(%struct.drm_i915_private* %9, i32 7)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %14 = load i32, i32* @GEN7_ERR_INT, align 4
  %15 = call i32 @intel_uncore_write(%struct.intel_uncore* %13, i32 %14, i32 -1)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = call i64 @IS_HASWELL(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %22 = load i32, i32* @EDP_PSR_IMR, align 4
  %23 = call i32 @intel_uncore_write(%struct.intel_uncore* %21, i32 %22, i32 -1)
  %24 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %25 = load i32, i32* @EDP_PSR_IIR, align 4
  %26 = call i32 @intel_uncore_write(%struct.intel_uncore* %24, i32 %25, i32 -1)
  br label %27

27:                                               ; preds = %20, %16
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = call i32 @gen5_gt_irq_reset(i32* %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %32 = call i32 @ibx_irq_reset(%struct.drm_i915_private* %31)
  ret void
}

declare dso_local i32 @GEN3_IRQ_RESET(%struct.intel_uncore*, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @gen5_gt_irq_reset(i32*) #1

declare dso_local i32 @ibx_irq_reset(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
