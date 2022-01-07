; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_off_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_off_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_overlay = type { i32, %struct.TYPE_2__*, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32* }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_overlay*)* @intel_overlay_off_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_overlay_off_tail(%struct.intel_overlay* %0) #0 {
  %2 = alloca %struct.intel_overlay*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_overlay* %0, %struct.intel_overlay** %2, align 8
  %4 = load %struct.intel_overlay*, %struct.intel_overlay** %2, align 8
  %5 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %4, i32 0, i32 2
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.intel_overlay*, %struct.intel_overlay** %2, align 8
  %8 = call i32 @intel_overlay_release_old_vma(%struct.intel_overlay* %7)
  %9 = load %struct.intel_overlay*, %struct.intel_overlay** %2, align 8
  %10 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.intel_overlay*, %struct.intel_overlay** %2, align 8
  %14 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %13, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.intel_overlay*, %struct.intel_overlay** %2, align 8
  %16 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i64 @IS_I830(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = call i32 @i830_overlay_clock_gating(%struct.drm_i915_private* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @intel_overlay_release_old_vma(%struct.intel_overlay*) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i32 @i830_overlay_clock_gating(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
