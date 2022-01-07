; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_unpin_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_unpin_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { i32, i32 }
%struct.i915_vma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane_state*)* @intel_plane_unpin_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_plane_unpin_fb(%struct.intel_plane_state* %0) #0 {
  %2 = alloca %struct.intel_plane_state*, align 8
  %3 = alloca %struct.i915_vma*, align 8
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %2, align 8
  %4 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %5 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %4, i32 0, i32 1
  %6 = call %struct.i915_vma* @fetch_and_zero(i32* %5)
  store %struct.i915_vma* %6, %struct.i915_vma** %3, align 8
  %7 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %8 = icmp ne %struct.i915_vma* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %11 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %12 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @intel_unpin_fb_vma(%struct.i915_vma* %10, i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.i915_vma* @fetch_and_zero(i32*) #1

declare dso_local i32 @intel_unpin_fb_vma(%struct.i915_vma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
