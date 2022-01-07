; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_assert_can_enable_dc9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_assert_can_enable_dc9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@DC_STATE_EN = common dso_local global i32 0, align 4
@DC_STATE_EN_DC9 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"DC9 already programmed to be enabled.\0A\00", align 1
@DC_STATE_EN_UPTO_DC5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"DC5 still not disabled to enable DC9.\0A\00", align 1
@HSW_PWR_WELL_CTL2 = common dso_local global i32 0, align 4
@SKL_PW_CTL_IDX_PW_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Power well 2 on.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Interrupts not disabled yet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @assert_can_enable_dc9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_can_enable_dc9(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load i32, i32* @DC_STATE_EN, align 4
  %4 = call i32 @I915_READ(i32 %3)
  %5 = load i32, i32* @DC_STATE_EN_DC9, align 4
  %6 = and i32 %4, %5
  %7 = call i32 @WARN_ONCE(i32 %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @DC_STATE_EN, align 4
  %9 = call i32 @I915_READ(i32 %8)
  %10 = load i32, i32* @DC_STATE_EN_UPTO_DC5, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @WARN_ONCE(i32 %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @HSW_PWR_WELL_CTL2, align 4
  %14 = call i32 @I915_READ(i32 %13)
  %15 = load i32, i32* @SKL_PW_CTL_IDX_PW_2, align 4
  %16 = call i32 @HSW_PWR_WELL_CTL_REQ(i32 %15)
  %17 = and i32 %14, %16
  %18 = call i32 @WARN_ONCE(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = call i32 @intel_irqs_enabled(%struct.drm_i915_private* %19)
  %21 = call i32 @WARN_ONCE(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @HSW_PWR_WELL_CTL_REQ(i32) #1

declare dso_local i32 @intel_irqs_enabled(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
