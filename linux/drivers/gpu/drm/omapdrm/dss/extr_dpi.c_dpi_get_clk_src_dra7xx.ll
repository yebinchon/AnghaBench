; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_get_clk_src_dra7xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_get_clk_src_dra7xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { i32 }

@DSS_CLK_SRC_PLL1_1 = common dso_local global i32 0, align 4
@DSS_CLK_SRC_PLL1_3 = common dso_local global i32 0, align 4
@DSS_CLK_SRC_PLL2_3 = common dso_local global i32 0, align 4
@DSS_CLK_SRC_PLL2_1 = common dso_local global i32 0, align 4
@DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpi_data*, i32)* @dpi_get_clk_src_dra7xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_get_clk_src_dra7xx(%struct.dpi_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpi_data*, align 8
  %5 = alloca i32, align 4
  store %struct.dpi_data* %0, %struct.dpi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %55 [
    i32 130, label %7
    i32 129, label %17
    i32 128, label %36
  ]

7:                                                ; preds = %2
  %8 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %9 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DSS_CLK_SRC_PLL1_1, align 4
  %12 = call i32 @dss_pll_find_by_src(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = load i32, i32* @DSS_CLK_SRC_PLL1_1, align 4
  store i32 %15, i32* %3, align 4
  br label %58

16:                                               ; preds = %7
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %19 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DSS_CLK_SRC_PLL1_3, align 4
  %22 = call i32 @dss_pll_find_by_src(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @DSS_CLK_SRC_PLL1_3, align 4
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %17
  %27 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %28 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DSS_CLK_SRC_PLL2_3, align 4
  %31 = call i32 @dss_pll_find_by_src(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @DSS_CLK_SRC_PLL2_3, align 4
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %26
  br label %56

36:                                               ; preds = %2
  %37 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %38 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DSS_CLK_SRC_PLL2_1, align 4
  %41 = call i32 @dss_pll_find_by_src(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @DSS_CLK_SRC_PLL2_1, align 4
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %36
  %46 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %47 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DSS_CLK_SRC_PLL1_3, align 4
  %50 = call i32 @dss_pll_find_by_src(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @DSS_CLK_SRC_PLL1_3, align 4
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %45
  br label %56

55:                                               ; preds = %2
  br label %56

56:                                               ; preds = %55, %54, %35, %16
  %57 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %52, %43, %33, %24, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @dss_pll_find_by_src(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
