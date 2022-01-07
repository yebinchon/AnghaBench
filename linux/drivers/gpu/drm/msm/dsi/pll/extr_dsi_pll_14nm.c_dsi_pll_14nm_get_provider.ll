; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_dsi_pll_14nm_get_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_dsi_pll_14nm_get_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_pll = type { i32 }
%struct.clk = type { i32 }
%struct.dsi_pll_14nm = type { %struct.clk_hw_onecell_data* }
%struct.clk_hw_onecell_data = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.clk* }

@DSI_BYTE_PLL_CLK = common dso_local global i64 0, align 8
@DSI_PIXEL_PLL_CLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_dsi_pll*, %struct.clk**, %struct.clk**)* @dsi_pll_14nm_get_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_pll_14nm_get_provider(%struct.msm_dsi_pll* %0, %struct.clk** %1, %struct.clk** %2) #0 {
  %4 = alloca %struct.msm_dsi_pll*, align 8
  %5 = alloca %struct.clk**, align 8
  %6 = alloca %struct.clk**, align 8
  %7 = alloca %struct.dsi_pll_14nm*, align 8
  %8 = alloca %struct.clk_hw_onecell_data*, align 8
  store %struct.msm_dsi_pll* %0, %struct.msm_dsi_pll** %4, align 8
  store %struct.clk** %1, %struct.clk*** %5, align 8
  store %struct.clk** %2, %struct.clk*** %6, align 8
  %9 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %4, align 8
  %10 = call %struct.dsi_pll_14nm* @to_pll_14nm(%struct.msm_dsi_pll* %9)
  store %struct.dsi_pll_14nm* %10, %struct.dsi_pll_14nm** %7, align 8
  %11 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %7, align 8
  %12 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %11, i32 0, i32 0
  %13 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %12, align 8
  store %struct.clk_hw_onecell_data* %13, %struct.clk_hw_onecell_data** %8, align 8
  %14 = load %struct.clk**, %struct.clk*** %5, align 8
  %15 = icmp ne %struct.clk** %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %8, align 8
  %18 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i64, i64* @DSI_BYTE_PLL_CLK, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.clk*, %struct.clk** %23, align 8
  %25 = load %struct.clk**, %struct.clk*** %5, align 8
  store %struct.clk* %24, %struct.clk** %25, align 8
  br label %26

26:                                               ; preds = %16, %3
  %27 = load %struct.clk**, %struct.clk*** %6, align 8
  %28 = icmp ne %struct.clk** %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %8, align 8
  %31 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i64, i64* @DSI_PIXEL_PLL_CLK, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.clk*, %struct.clk** %36, align 8
  %38 = load %struct.clk**, %struct.clk*** %6, align 8
  store %struct.clk* %37, %struct.clk** %38, align 8
  br label %39

39:                                               ; preds = %29, %26
  ret i32 0
}

declare dso_local %struct.dsi_pll_14nm* @to_pll_14nm(%struct.msm_dsi_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
