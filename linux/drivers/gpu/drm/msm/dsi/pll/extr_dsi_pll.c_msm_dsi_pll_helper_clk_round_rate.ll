; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll.c_msm_dsi_pll_helper_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll.c_msm_dsi_pll_helper_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.msm_dsi_pll = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msm_dsi_pll_helper_clk_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.msm_dsi_pll*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %10 = call %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw* %9)
  store %struct.msm_dsi_pll* %10, %struct.msm_dsi_pll** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %8, align 8
  %13 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %8, align 8
  %18 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  br label %32

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %8, align 8
  %23 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %8, align 8
  %28 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %4, align 8
  br label %32

30:                                               ; preds = %20
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %30, %26, %16
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
