; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_raw_crtc_wm_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_raw_crtc_wm_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@PLANE_PRIMARY = common dso_local global i32 0, align 4
@PLANE_SPRITE0 = common dso_local global i32 0, align 4
@PLANE_CURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, i32)* @g4x_raw_crtc_wm_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_raw_crtc_wm_is_valid(%struct.intel_crtc_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %8 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %23 = load i32, i32* @PLANE_PRIMARY, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @g4x_raw_plane_wm_is_valid(%struct.intel_crtc_state* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %29 = load i32, i32* @PLANE_SPRITE0, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @g4x_raw_plane_wm_is_valid(%struct.intel_crtc_state* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %35 = load i32, i32* @PLANE_CURSOR, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @g4x_raw_plane_wm_is_valid(%struct.intel_crtc_state* %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %33, %27, %21
  %40 = phi i1 [ false, %27 ], [ false, %21 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @g4x_raw_plane_wm_is_valid(%struct.intel_crtc_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
