; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_update_pll_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_update_pll_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__, %struct.dpll }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.dpll = type { i32 }
%struct.drm_i915_private = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.dpll*)* @i9xx_update_pll_dividers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_update_pll_dividers(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1, %struct.dpll* %2) #0 {
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.dpll*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.dpll* %2, %struct.dpll** %6, align 8
  %10 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %11 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %7, align 8
  store i8* null, i8** %9, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %16 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 1
  %21 = call i8* @pnv_dpll_compute_fp(%struct.dpll* %20)
  store i8* %21, i8** %8, align 8
  %22 = load %struct.dpll*, %struct.dpll** %6, align 8
  %23 = icmp ne %struct.dpll* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.dpll*, %struct.dpll** %6, align 8
  %26 = call i8* @pnv_dpll_compute_fp(%struct.dpll* %25)
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %24, %18
  br label %38

28:                                               ; preds = %3
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %30 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %29, i32 0, i32 1
  %31 = call i8* @i9xx_dpll_compute_fp(%struct.dpll* %30)
  store i8* %31, i8** %8, align 8
  %32 = load %struct.dpll*, %struct.dpll** %6, align 8
  %33 = icmp ne %struct.dpll* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.dpll*, %struct.dpll** %6, align 8
  %36 = call i8* @i9xx_dpll_compute_fp(%struct.dpll* %35)
  store i8* %36, i8** %9, align 8
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %44 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %45 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load %struct.dpll*, %struct.dpll** %6, align 8
  %49 = icmp ne %struct.dpll* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  br label %60

55:                                               ; preds = %47, %38
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %58 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  br label %60

60:                                               ; preds = %55, %50
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i8* @pnv_dpll_compute_fp(%struct.dpll*) #1

declare dso_local i8* @i9xx_dpll_compute_fp(%struct.dpll*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
