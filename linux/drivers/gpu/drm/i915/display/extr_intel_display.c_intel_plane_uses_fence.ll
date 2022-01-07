; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_uses_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_uses_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_plane = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@I915_GGTT_VIEW_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane_state*)* @intel_plane_uses_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_plane_uses_fence(%struct.intel_plane_state* %0) #0 {
  %2 = alloca %struct.intel_plane_state*, align 8
  %3 = alloca %struct.intel_plane*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %2, align 8
  %5 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %6 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.intel_plane* @to_intel_plane(i32 %8)
  store %struct.intel_plane* %9, %struct.intel_plane** %3, align 8
  %10 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %11 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = call i32 @INTEL_GEN(%struct.drm_i915_private* %15)
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %32, label %18

18:                                               ; preds = %1
  %19 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %20 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %25 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @I915_GGTT_VIEW_NORMAL, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %23, %18
  %31 = phi i1 [ false, %18 ], [ %29, %23 ]
  br label %32

32:                                               ; preds = %30, %1
  %33 = phi i1 [ true, %1 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
