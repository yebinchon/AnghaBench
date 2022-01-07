; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_enable_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_enable_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@DPLL_VGA_MODE_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @i9xx_enable_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_enable_pll(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DPLL(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %24 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @assert_pipe_disabled(%struct.drm_i915_private* %22, i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %28 = call i64 @i9xx_has_pps(%struct.drm_i915_private* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %32 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %33 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @assert_panel_unlocked(%struct.drm_i915_private* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %2
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @I915_WRITE(i32 %37, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @I915_WRITE(i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @POSTING_READ(i32 %46)
  %48 = call i32 @udelay(i32 150)
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %50 = call i32 @INTEL_GEN(%struct.drm_i915_private* %49)
  %51 = icmp sge i32 %50, 4
  br i1 %51, label %52, label %62

52:                                               ; preds = %36
  %53 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %54 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DPLL_MD(i32 %55)
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %58 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @I915_WRITE(i32 %56, i32 %60)
  br label %66

62:                                               ; preds = %36
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @I915_WRITE(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %52
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %77, %66
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @I915_WRITE(i32 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @POSTING_READ(i32 %74)
  %76 = call i32 @udelay(i32 150)
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %67

80:                                               ; preds = %67
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @assert_pipe_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @i9xx_has_pps(%struct.drm_i915_private*) #1

declare dso_local i32 @assert_panel_unlocked(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @DPLL_MD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
