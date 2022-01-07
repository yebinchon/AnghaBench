; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_bxt_find_best_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_bxt_find_best_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_limit = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.dpll = type { i32 }

@intel_limits_bxt = common dso_local global %struct.intel_limit zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bxt_find_best_dpll(%struct.intel_crtc_state* %0, %struct.dpll* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.dpll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_limit*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.dpll* %1, %struct.dpll** %4, align 8
  store i32 100000, i32* %5, align 4
  store %struct.intel_limit* @intel_limits_bxt, %struct.intel_limit** %6, align 8
  %7 = load %struct.intel_limit*, %struct.intel_limit** %6, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.dpll*, %struct.dpll** %4, align 8
  %14 = call i32 @chv_find_best_dpll(%struct.intel_limit* %7, %struct.intel_crtc_state* %8, i32 %11, i32 %12, i32* null, %struct.dpll* %13)
  ret i32 %14
}

declare dso_local i32 @chv_find_best_dpll(%struct.intel_limit*, %struct.intel_crtc_state*, i32, i32, i32*, %struct.dpll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
