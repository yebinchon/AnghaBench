; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_disable_pch_transcoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_disable_pch_transcoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@LPT_TRANSCONF = common dso_local global i32 0, align 4
@TRANS_ENABLE = common dso_local global i32 0, align 4
@TRANS_STATE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to disable PCH transcoder\0A\00", align 1
@PIPE_A = common dso_local global i32 0, align 4
@TRANS_CHICKEN2_TIMING_OVERRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpt_disable_pch_transcoder(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @LPT_TRANSCONF, align 4
  %5 = call i32 @I915_READ(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @TRANS_ENABLE, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @LPT_TRANSCONF, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @I915_WRITE(i32 %10, i32 %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = load i32, i32* @LPT_TRANSCONF, align 4
  %15 = load i32, i32* @TRANS_STATE_ENABLE, align 4
  %16 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %13, i32 %14, i32 %15, i32 50)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* @PIPE_A, align 4
  %22 = call i32 @TRANS_CHICKEN2(i32 %21)
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @TRANS_CHICKEN2_TIMING_OVERRIDE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @PIPE_A, align 4
  %29 = call i32 @TRANS_CHICKEN2(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @I915_WRITE(i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @intel_de_wait_for_clear(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @TRANS_CHICKEN2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
