; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_mipi.c_tegra_mipi_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_mipi.c_tegra_mipi_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mipi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MIPI_CAL_BIAS_PAD_CFG0 = common dso_local global i32 0, align 4
@MIPI_CAL_BIAS_PAD_PDVCLAMP = common dso_local global i32 0, align 4
@MIPI_CAL_BIAS_PAD_E_VCLAMP_REF = common dso_local global i32 0, align 4
@MIPI_CAL_BIAS_PAD_CFG2 = common dso_local global i32 0, align 4
@MIPI_CAL_BIAS_PAD_PDVREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_mipi*)* @tegra_mipi_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_mipi_power_up(%struct.tegra_mipi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_mipi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_mipi* %0, %struct.tegra_mipi** %3, align 8
  %6 = load %struct.tegra_mipi*, %struct.tegra_mipi** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @clk_enable(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.tegra_mipi*, %struct.tegra_mipi** %3, align 8
  %16 = load i32, i32* @MIPI_CAL_BIAS_PAD_CFG0, align 4
  %17 = call i32 @tegra_mipi_readl(%struct.tegra_mipi* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @MIPI_CAL_BIAS_PAD_PDVCLAMP, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.tegra_mipi*, %struct.tegra_mipi** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = load i32, i32* @MIPI_CAL_BIAS_PAD_E_VCLAMP_REF, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %14
  %33 = load %struct.tegra_mipi*, %struct.tegra_mipi** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MIPI_CAL_BIAS_PAD_CFG0, align 4
  %36 = call i32 @tegra_mipi_writel(%struct.tegra_mipi* %33, i32 %34, i32 %35)
  %37 = load %struct.tegra_mipi*, %struct.tegra_mipi** %3, align 8
  %38 = load i32, i32* @MIPI_CAL_BIAS_PAD_CFG2, align 4
  %39 = call i32 @tegra_mipi_readl(%struct.tegra_mipi* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @MIPI_CAL_BIAS_PAD_PDVREG, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.tegra_mipi*, %struct.tegra_mipi** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MIPI_CAL_BIAS_PAD_CFG2, align 4
  %47 = call i32 @tegra_mipi_writel(%struct.tegra_mipi* %44, i32 %45, i32 %46)
  %48 = load %struct.tegra_mipi*, %struct.tegra_mipi** %3, align 8
  %49 = getelementptr inbounds %struct.tegra_mipi, %struct.tegra_mipi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @clk_disable(i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %32, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @tegra_mipi_readl(%struct.tegra_mipi*, i32) #1

declare dso_local i32 @tegra_mipi_writel(%struct.tegra_mipi*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
