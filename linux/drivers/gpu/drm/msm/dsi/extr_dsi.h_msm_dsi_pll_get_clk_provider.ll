; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi.h_msm_dsi_pll_get_clk_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi.h_msm_dsi_pll_get_clk_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_pll = type { i32 }
%struct.clk = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_dsi_pll*, %struct.clk**, %struct.clk**)* @msm_dsi_pll_get_clk_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_dsi_pll_get_clk_provider(%struct.msm_dsi_pll* %0, %struct.clk** %1, %struct.clk** %2) #0 {
  %4 = alloca %struct.msm_dsi_pll*, align 8
  %5 = alloca %struct.clk**, align 8
  %6 = alloca %struct.clk**, align 8
  store %struct.msm_dsi_pll* %0, %struct.msm_dsi_pll** %4, align 8
  store %struct.clk** %1, %struct.clk*** %5, align 8
  store %struct.clk** %2, %struct.clk*** %6, align 8
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
