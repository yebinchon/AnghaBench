; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_plane_ctl_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_plane_ctl_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PLANE_CTL_PIPE_GAMMA_ENABLE = common dso_local global i32 0, align 4
@PLANE_CTL_PIPE_CSC_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_plane_ctl_crtc(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  %6 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %7 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = call i32 @INTEL_GEN(%struct.drm_i915_private* %13)
  %15 = icmp sge i32 %14, 10
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %16
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @PLANE_CTL_PIPE_GAMMA_ENABLE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %33 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @PLANE_CTL_PIPE_CSC_ENABLE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %20
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
