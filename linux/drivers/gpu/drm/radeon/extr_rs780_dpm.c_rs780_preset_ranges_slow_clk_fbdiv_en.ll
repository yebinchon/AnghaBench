; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_preset_ranges_slow_clk_fbdiv_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_preset_ranges_slow_clk_fbdiv_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@FVTHROT_SLOW_CLK_FEEDBACK_DIV_REG1 = common dso_local global i32 0, align 4
@RANGE_SLOW_CLK_FEEDBACK_DIV_EN = common dso_local global i32 0, align 4
@RS780_SLOWCLKFEEDBACKDIV_DFLT = common dso_local global i32 0, align 4
@RANGE0_SLOW_CLK_FEEDBACK_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rs780_preset_ranges_slow_clk_fbdiv_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs780_preset_ranges_slow_clk_fbdiv_en(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load i32, i32* @FVTHROT_SLOW_CLK_FEEDBACK_DIV_REG1, align 4
  %4 = load i32, i32* @RANGE_SLOW_CLK_FEEDBACK_DIV_EN, align 4
  %5 = load i32, i32* @RANGE_SLOW_CLK_FEEDBACK_DIV_EN, align 4
  %6 = xor i32 %5, -1
  %7 = call i32 @WREG32_P(i32 %3, i32 %4, i32 %6)
  %8 = load i32, i32* @FVTHROT_SLOW_CLK_FEEDBACK_DIV_REG1, align 4
  %9 = load i32, i32* @RS780_SLOWCLKFEEDBACKDIV_DFLT, align 4
  %10 = call i32 @RANGE0_SLOW_CLK_FEEDBACK_DIV(i32 %9)
  %11 = load i32, i32* @RANGE0_SLOW_CLK_FEEDBACK_DIV_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = call i32 @WREG32_P(i32 %8, i32 %10, i32 %12)
  ret void
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @RANGE0_SLOW_CLK_FEEDBACK_DIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
