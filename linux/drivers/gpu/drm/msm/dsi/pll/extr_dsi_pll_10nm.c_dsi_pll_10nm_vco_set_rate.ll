; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_vco_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_vco_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.msm_dsi_pll = type { i32 }
%struct.dsi_pll_10nm = type { i64, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"DSI PLL%d rate=%lu, parent's=%lu\00", align 1
@VCO_REF_CLK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @dsi_pll_10nm_vco_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_pll_10nm_vco_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.msm_dsi_pll*, align 8
  %8 = alloca %struct.dsi_pll_10nm*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw* %9)
  store %struct.msm_dsi_pll* %10, %struct.msm_dsi_pll** %7, align 8
  %11 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %12 = call %struct.dsi_pll_10nm* @to_pll_10nm(%struct.msm_dsi_pll* %11)
  store %struct.dsi_pll_10nm* %12, %struct.dsi_pll_10nm** %8, align 8
  %13 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %8, align 8
  %14 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16, i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %8, align 8
  %21 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @VCO_REF_CLK_RATE, align 4
  %23 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %8, align 8
  %24 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %8, align 8
  %26 = call i32 @dsi_pll_setup_config(%struct.dsi_pll_10nm* %25)
  %27 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %8, align 8
  %28 = call i32 @dsi_pll_calc_dec_frac(%struct.dsi_pll_10nm* %27)
  %29 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %8, align 8
  %30 = call i32 @dsi_pll_calc_ssc(%struct.dsi_pll_10nm* %29)
  %31 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %8, align 8
  %32 = call i32 @dsi_pll_commit(%struct.dsi_pll_10nm* %31)
  %33 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %8, align 8
  %34 = call i32 @dsi_pll_config_hzindep_reg(%struct.dsi_pll_10nm* %33)
  %35 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %8, align 8
  %36 = call i32 @dsi_pll_ssc_commit(%struct.dsi_pll_10nm* %35)
  %37 = call i32 (...) @wmb()
  ret i32 0
}

declare dso_local %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw*) #1

declare dso_local %struct.dsi_pll_10nm* @to_pll_10nm(%struct.msm_dsi_pll*) #1

declare dso_local i32 @DBG(i8*, i32, i64, i64) #1

declare dso_local i32 @dsi_pll_setup_config(%struct.dsi_pll_10nm*) #1

declare dso_local i32 @dsi_pll_calc_dec_frac(%struct.dsi_pll_10nm*) #1

declare dso_local i32 @dsi_pll_calc_ssc(%struct.dsi_pll_10nm*) #1

declare dso_local i32 @dsi_pll_commit(%struct.dsi_pll_10nm*) #1

declare dso_local i32 @dsi_pll_config_hzindep_reg(%struct.dsi_pll_10nm*) #1

declare dso_local i32 @dsi_pll_ssc_commit(%struct.dsi_pll_10nm*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
