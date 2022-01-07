; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ivybridge_update_fdi_bc_bifurcation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ivybridge_update_fdi_bc_bifurcation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @ivybridge_update_fdi_bc_bifurcation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivybridge_update_fdi_bc_bifurcation(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %6 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.intel_crtc* @to_intel_crtc(i32 %8)
  store %struct.intel_crtc* %9, %struct.intel_crtc** %3, align 8
  %10 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %34 [
    i32 130, label %18
    i32 129, label %19
    i32 128, label %31
  ]

18:                                               ; preds = %1
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = call i32 @cpt_set_fdi_bc_bifurcation(%struct.drm_i915_private* %25, i32 0)
  br label %30

27:                                               ; preds = %19
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = call i32 @cpt_set_fdi_bc_bifurcation(%struct.drm_i915_private* %28, i32 1)
  br label %30

30:                                               ; preds = %27, %24
  br label %36

31:                                               ; preds = %1
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %33 = call i32 @cpt_set_fdi_bc_bifurcation(%struct.drm_i915_private* %32, i32 1)
  br label %36

34:                                               ; preds = %1
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %31, %30, %18
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @cpt_set_fdi_bc_bifurcation(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
