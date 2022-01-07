; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt.c_intel_gt_check_and_clear_faults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt.c_intel_gt_check_and_clear_faults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@ALL_ENGINES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_gt_check_and_clear_faults(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %4 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %5 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @INTEL_GEN(%struct.drm_i915_private* %7)
  %9 = icmp sge i32 %8, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %12 = call i32 @gen8_check_faults(%struct.intel_gt* %11)
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call i32 @INTEL_GEN(%struct.drm_i915_private* %14)
  %16 = icmp sge i32 %15, 6
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %19 = call i32 @gen6_check_faults(%struct.intel_gt* %18)
  br label %21

20:                                               ; preds = %13
  br label %26

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %10
  %23 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %24 = load i32, i32* @ALL_ENGINES, align 4
  %25 = call i32 @intel_gt_clear_error_registers(%struct.intel_gt* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %20
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @gen8_check_faults(%struct.intel_gt*) #1

declare dso_local i32 @gen6_check_faults(%struct.intel_gt*) #1

declare dso_local i32 @intel_gt_clear_error_registers(%struct.intel_gt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
