; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_ggtt_suspend_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_ggtt_suspend_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ggtt = type { i32 (%struct.i915_ggtt*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32, i32)*, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_ggtt*)* @ggtt_suspend_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ggtt_suspend_mappings(%struct.i915_ggtt* %0) #0 {
  %2 = alloca %struct.i915_ggtt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %2, align 8
  %4 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %5 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = call i32 @INTEL_GEN(%struct.drm_i915_private* %8)
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %14 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @intel_gt_check_and_clear_faults(i32 %16)
  %18 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %19 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.TYPE_2__*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32)** %20, align 8
  %22 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %23 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %22, i32 0, i32 1
  %24 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %25 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %21(%struct.TYPE_2__* %23, i32 0, i32 %27)
  %29 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %30 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %29, i32 0, i32 0
  %31 = load i32 (%struct.i915_ggtt*)*, i32 (%struct.i915_ggtt*)** %30, align 8
  %32 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %33 = call i32 %31(%struct.i915_ggtt* %32)
  br label %34

34:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_check_and_clear_faults(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
