; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_dsi_pll_14nm_postdiv_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_dsi_pll_14nm_postdiv_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.dsi_pll_14nm_postdiv = type { i32, i32, %struct.dsi_pll_14nm* }
%struct.dsi_pll_14nm = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"DSI%d PLL parent rate=%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @dsi_pll_14nm_postdiv_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dsi_pll_14nm_postdiv_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.dsi_pll_14nm_postdiv*, align 8
  %8 = alloca %struct.dsi_pll_14nm*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.dsi_pll_14nm_postdiv* @to_pll_14nm_postdiv(%struct.clk_hw* %9)
  store %struct.dsi_pll_14nm_postdiv* %10, %struct.dsi_pll_14nm_postdiv** %7, align 8
  %11 = load %struct.dsi_pll_14nm_postdiv*, %struct.dsi_pll_14nm_postdiv** %7, align 8
  %12 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, %struct.dsi_pll_14nm_postdiv* %11, i32 0, i32 2
  %13 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %12, align 8
  store %struct.dsi_pll_14nm* %13, %struct.dsi_pll_14nm** %8, align 8
  %14 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %15 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load %struct.dsi_pll_14nm_postdiv*, %struct.dsi_pll_14nm_postdiv** %7, align 8
  %23 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, %struct.dsi_pll_14nm_postdiv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dsi_pll_14nm_postdiv*, %struct.dsi_pll_14nm_postdiv** %7, align 8
  %26 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, %struct.dsi_pll_14nm_postdiv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @divider_round_rate(%struct.clk_hw* %19, i64 %20, i64* %21, i32* null, i32 %24, i32 %27)
  ret i64 %28
}

declare dso_local %struct.dsi_pll_14nm_postdiv* @to_pll_14nm_postdiv(%struct.clk_hw*) #1

declare dso_local i32 @DBG(i8*, i32, i64) #1

declare dso_local i64 @divider_round_rate(%struct.clk_hw*, i64, i64*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
