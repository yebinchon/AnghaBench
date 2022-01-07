; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_early_display_was.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_early_display_was.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GEN9_CLKGATE_DIS_0 = common dso_local global i32 0, align 4
@DARBF_GATING_DIS = common dso_local global i32 0, align 4
@CHICKEN_PAR1_1 = common dso_local global i32 0, align 4
@FORCE_ARB_IDLE_PLANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @intel_early_display_was to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_early_display_was(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @GEN9_CLKGATE_DIS_0, align 4
  %12 = load i32, i32* @GEN9_CLKGATE_DIS_0, align 4
  %13 = call i32 @I915_READ(i32 %12)
  %14 = load i32, i32* @DARBF_GATING_DIS, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @I915_WRITE(i32 %11, i32 %15)
  br label %17

17:                                               ; preds = %10, %6
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = call i64 @IS_HASWELL(%struct.drm_i915_private* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* @CHICKEN_PAR1_1, align 4
  %23 = load i32, i32* @CHICKEN_PAR1_1, align 4
  %24 = call i32 @I915_READ(i32 %23)
  %25 = load i32, i32* @FORCE_ARB_IDLE_PLANES, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @I915_WRITE(i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %21, %17
  ret void
}

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
