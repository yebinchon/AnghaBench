; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_enable_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_enable_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_i915_private = type { i32* }

@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@CBR4_VLV = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@DPLL_VGA_MODE_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @chv_enable_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_enable_pll(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %7 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @assert_pipe_disabled(%struct.drm_i915_private* %15, i32 %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @assert_panel_unlocked(%struct.drm_i915_private* %18, i32 %19)
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %31 = call i32 @_chv_enable_pll(%struct.intel_crtc* %29, %struct.intel_crtc_state* %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PIPE_A, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load i32, i32* @CBR4_VLV, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @CBR_DPLLBMD_PIPE(i32 %38)
  %40 = call i32 @I915_WRITE(i32 %37, i32 %39)
  %41 = load i32, i32* @PIPE_B, align 4
  %42 = call i32 @DPLL_MD(i32 %41)
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @I915_WRITE(i32 %42, i32 %46)
  %48 = load i32, i32* @CBR4_VLV, align 4
  %49 = call i32 @I915_WRITE(i32 %48, i32 0)
  %50 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %51 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* @PIPE_B, align 4
  %61 = call i32 @DPLL(i32 %60)
  %62 = call i32 @I915_READ(i32 %61)
  %63 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  br label %79

68:                                               ; preds = %32
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @DPLL_MD(i32 %69)
  %71 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %72 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @I915_WRITE(i32 %70, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @DPLL_MD(i32 %76)
  %78 = call i32 @POSTING_READ(i32 %77)
  br label %79

79:                                               ; preds = %68, %36
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @assert_pipe_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_panel_unlocked(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @_chv_enable_pll(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @CBR_DPLLBMD_PIPE(i32) #1

declare dso_local i32 @DPLL_MD(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
