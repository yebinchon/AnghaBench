; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_get_pipe_color_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_get_pipe_color_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.intel_plane = type { i32 }
%struct.drm_i915_private = type { i32 }

@DISPPLANE_GAMMA_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_PIPE_CSC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @i9xx_get_pipe_color_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_get_pipe_color_config(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_crtc* @to_intel_crtc(i32 %11)
  store %struct.intel_crtc* %12, %struct.intel_crtc** %3, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.intel_plane* @to_intel_plane(i32 %16)
  store %struct.intel_plane* %17, %struct.intel_plane** %4, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.drm_i915_private* @to_i915(i32 %21)
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %5, align 8
  %23 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %24 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @DSPCNTR(i32 %26)
  %28 = call i32 @I915_READ(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DISPPLANE_GAMMA_ENABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %35 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %1
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %38 = call i32 @HAS_GMCH(%struct.drm_i915_private* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DISPPLANE_PIPE_CSC_ENABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40, %36
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DSPCNTR(i32) #1

declare dso_local i32 @HAS_GMCH(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
