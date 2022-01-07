; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_get_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_get_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_pll = type { i32 }
%struct.clk = type { i32 }
%struct.dsi_pll_10nm = type { i32, %struct.clk_hw_onecell_data* }
%struct.clk_hw_onecell_data = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.clk* }

@.str = private unnamed_addr constant [10 x i8] c"DSI PLL%d\00", align 1
@DSI_BYTE_PLL_CLK = common dso_local global i64 0, align 8
@DSI_PIXEL_PLL_CLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_dsi_pll*, %struct.clk**, %struct.clk**)* @dsi_pll_10nm_get_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_pll_10nm_get_provider(%struct.msm_dsi_pll* %0, %struct.clk** %1, %struct.clk** %2) #0 {
  %4 = alloca %struct.msm_dsi_pll*, align 8
  %5 = alloca %struct.clk**, align 8
  %6 = alloca %struct.clk**, align 8
  %7 = alloca %struct.dsi_pll_10nm*, align 8
  %8 = alloca %struct.clk_hw_onecell_data*, align 8
  store %struct.msm_dsi_pll* %0, %struct.msm_dsi_pll** %4, align 8
  store %struct.clk** %1, %struct.clk*** %5, align 8
  store %struct.clk** %2, %struct.clk*** %6, align 8
  %9 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %4, align 8
  %10 = call %struct.dsi_pll_10nm* @to_pll_10nm(%struct.msm_dsi_pll* %9)
  store %struct.dsi_pll_10nm* %10, %struct.dsi_pll_10nm** %7, align 8
  %11 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %7, align 8
  %12 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %11, i32 0, i32 1
  %13 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %12, align 8
  store %struct.clk_hw_onecell_data* %13, %struct.clk_hw_onecell_data** %8, align 8
  %14 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %7, align 8
  %15 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.clk**, %struct.clk*** %5, align 8
  %19 = icmp ne %struct.clk** %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %8, align 8
  %22 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i64, i64* @DSI_BYTE_PLL_CLK, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.clk*, %struct.clk** %27, align 8
  %29 = load %struct.clk**, %struct.clk*** %5, align 8
  store %struct.clk* %28, %struct.clk** %29, align 8
  br label %30

30:                                               ; preds = %20, %3
  %31 = load %struct.clk**, %struct.clk*** %6, align 8
  %32 = icmp ne %struct.clk** %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %8, align 8
  %35 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = load i64, i64* @DSI_PIXEL_PLL_CLK, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.clk*, %struct.clk** %40, align 8
  %42 = load %struct.clk**, %struct.clk*** %6, align 8
  store %struct.clk* %41, %struct.clk** %42, align 8
  br label %43

43:                                               ; preds = %33, %30
  ret i32 0
}

declare dso_local %struct.dsi_pll_10nm* @to_pll_10nm(%struct.msm_dsi_pll*) #1

declare dso_local i32 @DBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
