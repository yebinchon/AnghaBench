; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_enable_pch_transcoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_enable_pch_transcoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PIPE_A = common dso_local global i32 0, align 4
@TRANS_CHICKEN2_TIMING_OVERRIDE = common dso_local global i32 0, align 4
@TRANS_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_MASK_HSW = common dso_local global i32 0, align 4
@PIPECONF_INTERLACED_ILK = common dso_local global i32 0, align 4
@TRANS_INTERLACED = common dso_local global i32 0, align 4
@TRANS_PROGRESSIVE = common dso_local global i32 0, align 4
@LPT_TRANSCONF = common dso_local global i32 0, align 4
@TRANS_STATE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to enable PCH transcoder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @lpt_enable_pch_transcoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpt_enable_pch_transcoder(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @assert_fdi_tx_enabled(%struct.drm_i915_private* %7, i32 %8)
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = load i32, i32* @PIPE_A, align 4
  %12 = call i32 @assert_fdi_rx_enabled(%struct.drm_i915_private* %10, i32 %11)
  %13 = load i32, i32* @PIPE_A, align 4
  %14 = call i32 @TRANS_CHICKEN2(i32 %13)
  %15 = call i32 @I915_READ(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @TRANS_CHICKEN2_TIMING_OVERRIDE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @PIPE_A, align 4
  %20 = call i32 @TRANS_CHICKEN2(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @I915_WRITE(i32 %20, i32 %21)
  %23 = load i32, i32* @TRANS_ENABLE, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @PIPECONF(i32 %24)
  %26 = call i32 @I915_READ(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PIPECONF_INTERLACE_MASK_HSW, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @PIPECONF_INTERLACED_ILK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @TRANS_INTERLACED, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* @TRANS_PROGRESSIVE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @LPT_TRANSCONF, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @I915_WRITE(i32 %41, i32 %42)
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = load i32, i32* @LPT_TRANSCONF, align 4
  %46 = load i32, i32* @TRANS_STATE_ENABLE, align 4
  %47 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %44, i32 %45, i32 %46, i32 100)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %40
  ret void
}

declare dso_local i32 @assert_fdi_tx_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_fdi_rx_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TRANS_CHICKEN2(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
