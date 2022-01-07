; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_clk_sor_pad_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_clk_sor_pad_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_sor_pad = type { %struct.tegra_sor* }
%struct.tegra_sor = type { i32 }

@SOR_CLK_CNTRL = common dso_local global i32 0, align 4
@SOR_CLK_CNTRL_DP_CLK_SEL_MASK = common dso_local global i32 0, align 4
@SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_PCLK = common dso_local global i32 0, align 4
@SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_DPCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @tegra_clk_sor_pad_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_clk_sor_pad_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_clk_sor_pad*, align 8
  %6 = alloca %struct.tegra_sor*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.tegra_clk_sor_pad* @to_pad(%struct.clk_hw* %8)
  store %struct.tegra_clk_sor_pad* %9, %struct.tegra_clk_sor_pad** %5, align 8
  %10 = load %struct.tegra_clk_sor_pad*, %struct.tegra_clk_sor_pad** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_clk_sor_pad, %struct.tegra_clk_sor_pad* %10, i32 0, i32 0
  %12 = load %struct.tegra_sor*, %struct.tegra_sor** %11, align 8
  store %struct.tegra_sor* %12, %struct.tegra_sor** %6, align 8
  %13 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %14 = load i32, i32* @SOR_CLK_CNTRL, align 4
  %15 = call i32 @tegra_sor_readl(%struct.tegra_sor* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @SOR_CLK_CNTRL_DP_CLK_SEL_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %29 [
    i32 0, label %21
    i32 1, label %25
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_PCLK, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_DPCLK, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %2, %25, %21
  %30 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SOR_CLK_CNTRL, align 4
  %33 = call i32 @tegra_sor_writel(%struct.tegra_sor* %30, i32 %31, i32 %32)
  ret i32 0
}

declare dso_local %struct.tegra_clk_sor_pad* @to_pad(%struct.clk_hw*) #1

declare dso_local i32 @tegra_sor_readl(%struct.tegra_sor*, i32) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
