; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_cursor_ctl_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_cursor_ctl_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@MCURSOR_GAMMA_ENABLE = common dso_local global i32 0, align 4
@MCURSOR_PIPE_CSC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*)* @i9xx_cursor_ctl_crtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_cursor_ctl_crtc(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  %7 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %8 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.intel_crtc* @to_intel_crtc(i32 %10)
  store %struct.intel_crtc* %11, %struct.intel_crtc** %4, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = call i32 @INTEL_GEN(%struct.drm_i915_private* %17)
  %19 = icmp sge i32 %18, 11
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @MCURSOR_GAMMA_ENABLE, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @MCURSOR_PIPE_CSC_ENABLE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %40 = call i32 @INTEL_GEN(%struct.drm_i915_private* %39)
  %41 = icmp slt i32 %40, 5
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %44 = call i32 @IS_G4X(%struct.drm_i915_private* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %48 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MCURSOR_PIPE_SELECT(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %46, %42, %38
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @MCURSOR_PIPE_SELECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
