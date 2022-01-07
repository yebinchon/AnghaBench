; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_force_pll_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_force_pll_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.dpll = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.dpll, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlv_force_pll_on(%struct.drm_i915_private* %0, i32 %1, %struct.dpll* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpll*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca %struct.intel_crtc_state*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dpll* %2, %struct.dpll** %7, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private* %10, i32 %11)
  store %struct.intel_crtc* %12, %struct.intel_crtc** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.intel_crtc_state* @kzalloc(i32 16, i32 %13)
  store %struct.intel_crtc_state* %14, %struct.intel_crtc_state** %9, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %16 = icmp ne %struct.intel_crtc_state* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 0
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* %22, i32** %25, align 8
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 1
  %30 = load %struct.dpll*, %struct.dpll** %7, align 8
  %31 = bitcast %struct.dpll* %29 to i8*
  %32 = bitcast %struct.dpll* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %34 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %20
  %37 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %38 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %39 = call i32 @chv_compute_dpll(%struct.intel_crtc* %37, %struct.intel_crtc_state* %38)
  %40 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %42 = call i32 @chv_prepare_pll(%struct.intel_crtc* %40, %struct.intel_crtc_state* %41)
  %43 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %45 = call i32 @chv_enable_pll(%struct.intel_crtc* %43, %struct.intel_crtc_state* %44)
  br label %56

46:                                               ; preds = %20
  %47 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %49 = call i32 @vlv_compute_dpll(%struct.intel_crtc* %47, %struct.intel_crtc_state* %48)
  %50 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %52 = call i32 @vlv_prepare_pll(%struct.intel_crtc* %50, %struct.intel_crtc_state* %51)
  %53 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %55 = call i32 @vlv_enable_pll(%struct.intel_crtc* %53, %struct.intel_crtc_state* %54)
  br label %56

56:                                               ; preds = %46, %36
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %58 = call i32 @kfree(%struct.intel_crtc_state* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.intel_crtc_state* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @chv_compute_dpll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @chv_prepare_pll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @chv_enable_pll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @vlv_compute_dpll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @vlv_prepare_pll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @vlv_enable_pll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @kfree(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
