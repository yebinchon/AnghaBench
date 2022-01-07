; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_get_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_get_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@DSS_CLK_SRC_PLL1_1 = common dso_local global i32 0, align 4
@DSS_CLK_SRC_PLL2_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpi_data*)* @dpi_get_clk_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_get_clk_src(%struct.dpi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.dpi_data* %0, %struct.dpi_data** %3, align 8
  %5 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %6 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %10 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %35 [
    i32 134, label %12
    i32 133, label %12
    i32 132, label %14
    i32 131, label %22
    i32 135, label %31
  ]

12:                                               ; preds = %1, %1
  %13 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  store i32 %13, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %20 [
    i32 130, label %16
    i32 129, label %18
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @DSS_CLK_SRC_PLL1_1, align 4
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %14
  %19 = load i32, i32* @DSS_CLK_SRC_PLL2_1, align 4
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %14
  %21 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %29 [
    i32 130, label %24
    i32 128, label %26
    i32 129, label %28
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @DSS_CLK_SRC_PLL1_1, align 4
  store i32 %25, i32* %2, align 4
  br label %37

26:                                               ; preds = %22
  %27 = load i32, i32* @DSS_CLK_SRC_PLL2_1, align 4
  store i32 %27, i32* %2, align 4
  br label %37

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %22, %28
  %30 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  store i32 %30, i32* %2, align 4
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @dpi_get_clk_src_dra7xx(%struct.dpi_data* %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %31, %29, %26, %24, %20, %18, %16, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @dpi_get_clk_src_dra7xx(%struct.dpi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
