; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_skl_get_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_skl_get_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i32, i32, i32, i32, i32 }

@CDCLK_CTL = common dso_local global i32 0, align 4
@CDCLK_FREQ_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @skl_get_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_get_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_cdclk_state*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %4, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %8 = call i32 @skl_dpll0_update(%struct.drm_i915_private* %6, %struct.intel_cdclk_state* %7)
  %9 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %10 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %13 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %15 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %17 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %73

21:                                               ; preds = %2
  %22 = load i32, i32* @CDCLK_CTL, align 4
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %25 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 8640000
  br i1 %27, label %28, label %50

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @CDCLK_FREQ_SEL_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %44 [
    i32 130, label %32
    i32 131, label %35
    i32 129, label %38
    i32 128, label %41
  ]

32:                                               ; preds = %28
  %33 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %34 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %33, i32 0, i32 0
  store i32 432000, i32* %34, align 4
  br label %49

35:                                               ; preds = %28
  %36 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %37 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %36, i32 0, i32 0
  store i32 308571, i32* %37, align 4
  br label %49

38:                                               ; preds = %28
  %39 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %40 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %39, i32 0, i32 0
  store i32 540000, i32* %40, align 4
  br label %49

41:                                               ; preds = %28
  %42 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %43 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %42, i32 0, i32 0
  store i32 617143, i32* %43, align 4
  br label %49

44:                                               ; preds = %28
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CDCLK_FREQ_SEL_MASK, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @MISSING_CASE(i32 %47)
  br label %49

49:                                               ; preds = %44, %41, %38, %35, %32
  br label %72

50:                                               ; preds = %21
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @CDCLK_FREQ_SEL_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %66 [
    i32 130, label %54
    i32 131, label %57
    i32 129, label %60
    i32 128, label %63
  ]

54:                                               ; preds = %50
  %55 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %56 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %55, i32 0, i32 0
  store i32 450000, i32* %56, align 4
  br label %71

57:                                               ; preds = %50
  %58 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %59 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %58, i32 0, i32 0
  store i32 337500, i32* %59, align 4
  br label %71

60:                                               ; preds = %50
  %61 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %62 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %61, i32 0, i32 0
  store i32 540000, i32* %62, align 4
  br label %71

63:                                               ; preds = %50
  %64 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %65 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %64, i32 0, i32 0
  store i32 675000, i32* %65, align 4
  br label %71

66:                                               ; preds = %50
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @CDCLK_FREQ_SEL_MASK, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @MISSING_CASE(i32 %69)
  br label %71

71:                                               ; preds = %66, %63, %60, %57, %54
  br label %72

72:                                               ; preds = %71, %49
  br label %73

73:                                               ; preds = %72, %20
  %74 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %75 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @skl_calc_voltage_level(i32 %76)
  %78 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %79 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  ret void
}

declare dso_local i32 @skl_dpll0_update(%struct.drm_i915_private*, %struct.intel_cdclk_state*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @skl_calc_voltage_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
