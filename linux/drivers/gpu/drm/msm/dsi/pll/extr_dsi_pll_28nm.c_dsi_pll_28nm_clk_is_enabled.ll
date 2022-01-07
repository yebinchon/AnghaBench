; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_28nm.c_dsi_pll_28nm_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_28nm.c_dsi_pll_28nm_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.msm_dsi_pll = type { i32 }
%struct.dsi_pll_28nm = type { i32 }

@POLL_MAX_READS = common dso_local global i32 0, align 4
@POLL_TIMEOUT_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @dsi_pll_28nm_clk_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_pll_28nm_clk_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.msm_dsi_pll*, align 8
  %4 = alloca %struct.dsi_pll_28nm*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw* %5)
  store %struct.msm_dsi_pll* %6, %struct.msm_dsi_pll** %3, align 8
  %7 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  %8 = call %struct.dsi_pll_28nm* @to_pll_28nm(%struct.msm_dsi_pll* %7)
  store %struct.dsi_pll_28nm* %8, %struct.dsi_pll_28nm** %4, align 8
  %9 = load %struct.dsi_pll_28nm*, %struct.dsi_pll_28nm** %4, align 8
  %10 = load i32, i32* @POLL_MAX_READS, align 4
  %11 = load i32, i32* @POLL_TIMEOUT_US, align 4
  %12 = call i32 @pll_28nm_poll_for_ready(%struct.dsi_pll_28nm* %9, i32 %10, i32 %11)
  ret i32 %12
}

declare dso_local %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw*) #1

declare dso_local %struct.dsi_pll_28nm* @to_pll_28nm(%struct.msm_dsi_pll*) #1

declare dso_local i32 @pll_28nm_poll_for_ready(%struct.dsi_pll_28nm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
