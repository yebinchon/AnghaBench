; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_dsi_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_dsi_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@CCK_REG_DSI_PLL_CONTROL = common dso_local global i32 0, align 4
@DSI_PLL_VCO_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"DSI PLL state assertion failure (expected %s, current %s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_dsi_pll(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @vlv_cck_get(%struct.drm_i915_private* %7)
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = load i32, i32* @CCK_REG_DSI_PLL_CONTROL, align 4
  %11 = call i32 @vlv_cck_read(%struct.drm_i915_private* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i32 @vlv_cck_put(%struct.drm_i915_private* %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @DSI_PLL_VCO_EN, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @onoff(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @onoff(i32 %23)
  %25 = call i32 @I915_STATE_WARN(i32 %20, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  ret void
}

declare dso_local i32 @vlv_cck_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_cck_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_cck_put(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_STATE_WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @onoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
