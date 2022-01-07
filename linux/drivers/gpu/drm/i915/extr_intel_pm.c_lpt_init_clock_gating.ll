; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_lpt_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_lpt_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SOUTH_DSPCLK_GATE_D = common dso_local global i32 0, align 4
@PCH_LP_PARTITION_LEVEL_DISABLE = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@TRANS_CHICKEN1_DP0UNIT_GC_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @lpt_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpt_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i64 @HAS_PCH_LPT_LP(%struct.drm_i915_private* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* @SOUTH_DSPCLK_GATE_D, align 4
  %8 = load i32, i32* @SOUTH_DSPCLK_GATE_D, align 4
  %9 = call i32 @I915_READ(i32 %8)
  %10 = load i32, i32* @PCH_LP_PARTITION_LEVEL_DISABLE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @I915_WRITE(i32 %7, i32 %11)
  br label %13

13:                                               ; preds = %6, %1
  %14 = load i32, i32* @PIPE_A, align 4
  %15 = call i32 @TRANS_CHICKEN1(i32 %14)
  %16 = load i32, i32* @PIPE_A, align 4
  %17 = call i32 @TRANS_CHICKEN1(i32 %16)
  %18 = call i32 @I915_READ(i32 %17)
  %19 = load i32, i32* @TRANS_CHICKEN1_DP0UNIT_GC_DISABLE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @I915_WRITE(i32 %15, i32 %20)
  ret void
}

declare dso_local i64 @HAS_PCH_LPT_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TRANS_CHICKEN1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
