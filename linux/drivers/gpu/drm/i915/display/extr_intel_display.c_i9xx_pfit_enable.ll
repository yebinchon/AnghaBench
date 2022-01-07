; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_pfit_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_pfit_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PFIT_CONTROL = common dso_local global i32 0, align 4
@PFIT_ENABLE = common dso_local global i32 0, align 4
@PFIT_PGM_RATIOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @i9xx_pfit_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_pfit_enable(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %6 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.intel_crtc* @to_intel_crtc(i32 %8)
  store %struct.intel_crtc* %9, %struct.intel_crtc** %3, align 8
  %10 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %49

21:                                               ; preds = %1
  %22 = load i32, i32* @PFIT_CONTROL, align 4
  %23 = call i32 @I915_READ(i32 %22)
  %24 = load i32, i32* @PFIT_ENABLE, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @assert_pipe_disabled(%struct.drm_i915_private* %27, i32 %30)
  %32 = load i32, i32* @PFIT_PGM_RATIOS, align 4
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %34 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @I915_WRITE(i32 %32, i32 %36)
  %38 = load i32, i32* @PFIT_CONTROL, align 4
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %40 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @I915_WRITE(i32 %38, i32 %42)
  %44 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %45 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @BCLRPAT(i32 %46)
  %48 = call i32 @I915_WRITE(i32 %47, i32 0)
  br label %49

49:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @assert_pipe_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @BCLRPAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
