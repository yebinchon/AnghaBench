; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_glk_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_glk_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GEN9_CLKGATE_DIS_0 = common dso_local global i32 0, align 4
@PWM1_GATING_DIS = common dso_local global i32 0, align 4
@PWM2_GATING_DIS = common dso_local global i32 0, align 4
@GLK_REVID_A1 = common dso_local global i32 0, align 4
@CHICKEN_MISC_2 = common dso_local global i32 0, align 4
@GLK_CL0_PWR_DOWN = common dso_local global i32 0, align 4
@GLK_CL1_PWR_DOWN = common dso_local global i32 0, align 4
@GLK_CL2_PWR_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @glk_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glk_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = call i32 @gen9_init_clock_gating(%struct.drm_i915_private* %4)
  %6 = load i32, i32* @GEN9_CLKGATE_DIS_0, align 4
  %7 = load i32, i32* @GEN9_CLKGATE_DIS_0, align 4
  %8 = call i32 @I915_READ(i32 %7)
  %9 = load i32, i32* @PWM1_GATING_DIS, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PWM2_GATING_DIS, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @I915_WRITE(i32 %6, i32 %12)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = load i32, i32* @GLK_REVID_A1, align 4
  %16 = call i64 @IS_GLK_REVID(%struct.drm_i915_private* %14, i32 0, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load i32, i32* @CHICKEN_MISC_2, align 4
  %20 = call i32 @I915_READ(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @GLK_CL0_PWR_DOWN, align 4
  %22 = load i32, i32* @GLK_CL1_PWR_DOWN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GLK_CL2_PWR_DOWN, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @CHICKEN_MISC_2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @I915_WRITE(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @gen9_init_clock_gating(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_GLK_REVID(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
