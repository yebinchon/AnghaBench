; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@RENCLK_GATE_D1 = common dso_local global i32 0, align 4
@RENCLK_GATE_D2 = common dso_local global i32 0, align 4
@VF_UNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@GS_UNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@CL_UNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@RAMCLK_GATE_D = common dso_local global i32 0, align 4
@VRHUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@OVRUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@OVCUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@DSSUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@DSPCLK_GATE_D = common dso_local global i32 0, align 4
@CACHE_MODE_0 = common dso_local global i32 0, align 4
@CM0_PIPELINED_RENDER_FLUSH_DISABLE = common dso_local global i32 0, align 4
@RC_OP_FLUSH_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @g4x_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @RENCLK_GATE_D1, align 4
  %5 = call i32 @I915_WRITE(i32 %4, i32 0)
  %6 = load i32, i32* @RENCLK_GATE_D2, align 4
  %7 = load i32, i32* @VF_UNIT_CLOCK_GATE_DISABLE, align 4
  %8 = load i32, i32* @GS_UNIT_CLOCK_GATE_DISABLE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CL_UNIT_CLOCK_GATE_DISABLE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @I915_WRITE(i32 %6, i32 %11)
  %13 = load i32, i32* @RAMCLK_GATE_D, align 4
  %14 = call i32 @I915_WRITE(i32 %13, i32 0)
  %15 = load i32, i32* @VRHUNIT_CLOCK_GATE_DISABLE, align 4
  %16 = load i32, i32* @OVRUNIT_CLOCK_GATE_DISABLE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @OVCUNIT_CLOCK_GATE_DISABLE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = call i64 @IS_GM45(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @DSSUNIT_CLOCK_GATE_DISABLE, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load i32, i32* @DSPCLK_GATE_D, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @I915_WRITE(i32 %28, i32 %29)
  %31 = load i32, i32* @CACHE_MODE_0, align 4
  %32 = load i32, i32* @CM0_PIPELINED_RENDER_FLUSH_DISABLE, align 4
  %33 = call i32 @_MASKED_BIT_ENABLE(i32 %32)
  %34 = call i32 @I915_WRITE(i32 %31, i32 %33)
  %35 = load i32, i32* @CACHE_MODE_0, align 4
  %36 = load i32, i32* @RC_OP_FLUSH_ENABLE, align 4
  %37 = call i32 @_MASKED_BIT_DISABLE(i32 %36)
  %38 = call i32 @I915_WRITE(i32 %35, i32 %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = call i32 @g4x_disable_trickle_feed(%struct.drm_i915_private* %39)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @IS_GM45(%struct.drm_i915_private*) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i32 @g4x_disable_trickle_feed(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
