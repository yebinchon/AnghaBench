; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_enable_global_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_enable_global_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_pll_10nm = type { i64 }

@REG_DSI_10nm_PHY_CMN_CLK_CFG1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_pll_10nm*)* @dsi_pll_enable_global_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_pll_enable_global_clk(%struct.dsi_pll_10nm* %0) #0 {
  %2 = alloca %struct.dsi_pll_10nm*, align 8
  %3 = alloca i32, align 4
  store %struct.dsi_pll_10nm* %0, %struct.dsi_pll_10nm** %2, align 8
  %4 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %2, align 8
  %5 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @REG_DSI_10nm_PHY_CMN_CLK_CFG1, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @pll_read(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %2, align 8
  %11 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REG_DSI_10nm_PHY_CMN_CLK_CFG1, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @BIT(i32 5)
  %17 = or i32 %15, %16
  %18 = call i32 @pll_write(i64 %14, i32 %17)
  ret void
}

declare dso_local i32 @pll_read(i64) #1

declare dso_local i32 @pll_write(i64, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
