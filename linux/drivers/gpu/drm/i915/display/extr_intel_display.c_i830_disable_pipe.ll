; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i830_disable_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i830_disable_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"disabling pipe %c due to force quirk\0A\00", align 1
@PLANE_A = common dso_local global i32 0, align 4
@DISPLAY_PLANE_ENABLE = common dso_local global i32 0, align 4
@PLANE_B = common dso_local global i32 0, align 4
@PLANE_C = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@MCURSOR_MODE = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@DPLL_VGA_MODE_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i830_disable_pipe(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_crtc*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private* %6, i32 %7)
  store %struct.intel_crtc* %8, %struct.intel_crtc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pipe_name(i32 %9)
  %11 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @PLANE_A, align 4
  %13 = call i32 @DSPCNTR(i32 %12)
  %14 = call i32 @I915_READ(i32 %13)
  %15 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* @PLANE_B, align 4
  %19 = call i32 @DSPCNTR(i32 %18)
  %20 = call i32 @I915_READ(i32 %19)
  %21 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load i32, i32* @PLANE_C, align 4
  %25 = call i32 @DSPCNTR(i32 %24)
  %26 = call i32 @I915_READ(i32 %25)
  %27 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load i32, i32* @PIPE_A, align 4
  %31 = call i32 @CURCNTR(i32 %30)
  %32 = call i32 @I915_READ(i32 %31)
  %33 = load i32, i32* @MCURSOR_MODE, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load i32, i32* @PIPE_B, align 4
  %37 = call i32 @CURCNTR(i32 %36)
  %38 = call i32 @I915_READ(i32 %37)
  %39 = load i32, i32* @MCURSOR_MODE, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @PIPECONF(i32 %42)
  %44 = call i32 @I915_WRITE(i32 %43, i32 0)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @PIPECONF(i32 %45)
  %47 = call i32 @POSTING_READ(i32 %46)
  %48 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %49 = call i32 @intel_wait_for_pipe_scanline_stopped(%struct.intel_crtc* %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @DPLL(i32 %50)
  %52 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  %53 = call i32 @I915_WRITE(i32 %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @DPLL(i32 %54)
  %56 = call i32 @POSTING_READ(i32 %55)
  ret void
}

declare dso_local %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DSPCNTR(i32) #1

declare dso_local i32 @CURCNTR(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_wait_for_pipe_scanline_stopped(%struct.intel_crtc*) #1

declare dso_local i32 @DPLL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
