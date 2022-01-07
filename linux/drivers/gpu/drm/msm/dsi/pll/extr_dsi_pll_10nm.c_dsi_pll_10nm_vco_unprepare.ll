; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_vco_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_vco_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.msm_dsi_pll = type { i32 }
%struct.dsi_pll_10nm = type { %struct.dsi_pll_10nm*, i64 }

@REG_DSI_10nm_PHY_CMN_PLL_CNTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @dsi_pll_10nm_vco_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_pll_10nm_vco_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.msm_dsi_pll*, align 8
  %4 = alloca %struct.dsi_pll_10nm*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw* %5)
  store %struct.msm_dsi_pll* %6, %struct.msm_dsi_pll** %3, align 8
  %7 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  %8 = call %struct.dsi_pll_10nm* @to_pll_10nm(%struct.msm_dsi_pll* %7)
  store %struct.dsi_pll_10nm* %8, %struct.dsi_pll_10nm** %4, align 8
  %9 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %10 = call i32 @dsi_pll_disable_global_clk(%struct.dsi_pll_10nm* %9)
  %11 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %12 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REG_DSI_10nm_PHY_CMN_PLL_CNTRL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @pll_write(i64 %15, i32 0)
  %17 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %18 = call i32 @dsi_pll_disable_sub(%struct.dsi_pll_10nm* %17)
  %19 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %20 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %19, i32 0, i32 0
  %21 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %20, align 8
  %22 = icmp ne %struct.dsi_pll_10nm* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %25 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %24, i32 0, i32 0
  %26 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %25, align 8
  %27 = call i32 @dsi_pll_disable_global_clk(%struct.dsi_pll_10nm* %26)
  %28 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %29 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %28, i32 0, i32 0
  %30 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %29, align 8
  %31 = call i32 @dsi_pll_disable_sub(%struct.dsi_pll_10nm* %30)
  br label %32

32:                                               ; preds = %23, %1
  %33 = call i32 (...) @wmb()
  %34 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  %35 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  ret void
}

declare dso_local %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw*) #1

declare dso_local %struct.dsi_pll_10nm* @to_pll_10nm(%struct.msm_dsi_pll*) #1

declare dso_local i32 @dsi_pll_disable_global_clk(%struct.dsi_pll_10nm*) #1

declare dso_local i32 @pll_write(i64, i32) #1

declare dso_local i32 @dsi_pll_disable_sub(%struct.dsi_pll_10nm*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
