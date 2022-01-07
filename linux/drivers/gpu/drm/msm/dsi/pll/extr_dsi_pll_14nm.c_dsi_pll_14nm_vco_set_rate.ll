; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_dsi_pll_14nm_vco_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_dsi_pll_14nm_vco_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.msm_dsi_pll = type { i32 }
%struct.dsi_pll_14nm = type { i64, i64, %struct.dsi_pll_14nm*, i32, i32, %struct.dsi_pll_output, %struct.dsi_pll_input }
%struct.dsi_pll_output = type { i32 }
%struct.dsi_pll_input = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"DSI PLL%d rate=%lu, parent's=%lu\00", align 1
@VCO_REF_CLK_RATE = common dso_local global i32 0, align 4
@DSI_PLL_DEFAULT_VCO_POSTDIV = common dso_local global i32 0, align 4
@MSM_DSI_PHY_MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @dsi_pll_14nm_vco_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_pll_14nm_vco_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.msm_dsi_pll*, align 8
  %8 = alloca %struct.dsi_pll_14nm*, align 8
  %9 = alloca %struct.dsi_pll_input*, align 8
  %10 = alloca %struct.dsi_pll_output*, align 8
  %11 = alloca %struct.dsi_pll_14nm*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw* %12)
  store %struct.msm_dsi_pll* %13, %struct.msm_dsi_pll** %7, align 8
  %14 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %7, align 8
  %15 = call %struct.dsi_pll_14nm* @to_pll_14nm(%struct.msm_dsi_pll* %14)
  store %struct.dsi_pll_14nm* %15, %struct.dsi_pll_14nm** %8, align 8
  %16 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %17 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %16, i32 0, i32 6
  store %struct.dsi_pll_input* %17, %struct.dsi_pll_input** %9, align 8
  %18 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %19 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %18, i32 0, i32 5
  store %struct.dsi_pll_output* %19, %struct.dsi_pll_output** %10, align 8
  %20 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %21 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %23, i64 %24)
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %28 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @VCO_REF_CLK_RATE, align 4
  %30 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %31 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %33 = call i32 @dsi_pll_14nm_input_init(%struct.dsi_pll_14nm* %32)
  %34 = load i32, i32* @DSI_PLL_DEFAULT_VCO_POSTDIV, align 4
  %35 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %10, align 8
  %36 = getelementptr inbounds %struct.dsi_pll_output, %struct.dsi_pll_output* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %38 = call i32 @pll_14nm_dec_frac_calc(%struct.dsi_pll_14nm* %37)
  %39 = load %struct.dsi_pll_input*, %struct.dsi_pll_input** %9, align 8
  %40 = getelementptr inbounds %struct.dsi_pll_input, %struct.dsi_pll_input* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %3
  %44 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %45 = call i32 @pll_14nm_ssc_calc(%struct.dsi_pll_14nm* %44)
  br label %46

46:                                               ; preds = %43, %3
  %47 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %48 = call i32 @pll_14nm_calc_vco_count(%struct.dsi_pll_14nm* %47)
  %49 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %50 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MSM_DSI_PHY_MASTER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %56 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %55, i32 0, i32 2
  %57 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %56, align 8
  store %struct.dsi_pll_14nm* %57, %struct.dsi_pll_14nm** %11, align 8
  %58 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %11, align 8
  %59 = load %struct.dsi_pll_input*, %struct.dsi_pll_input** %9, align 8
  %60 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %10, align 8
  %61 = call i32 @pll_db_commit_14nm(%struct.dsi_pll_14nm* %58, %struct.dsi_pll_input* %59, %struct.dsi_pll_output* %60)
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %8, align 8
  %64 = load %struct.dsi_pll_input*, %struct.dsi_pll_input** %9, align 8
  %65 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %10, align 8
  %66 = call i32 @pll_db_commit_14nm(%struct.dsi_pll_14nm* %63, %struct.dsi_pll_input* %64, %struct.dsi_pll_output* %65)
  ret i32 0
}

declare dso_local %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw*) #1

declare dso_local %struct.dsi_pll_14nm* @to_pll_14nm(%struct.msm_dsi_pll*) #1

declare dso_local i32 @DBG(i8*, i32, i64, i64) #1

declare dso_local i32 @dsi_pll_14nm_input_init(%struct.dsi_pll_14nm*) #1

declare dso_local i32 @pll_14nm_dec_frac_calc(%struct.dsi_pll_14nm*) #1

declare dso_local i32 @pll_14nm_ssc_calc(%struct.dsi_pll_14nm*) #1

declare dso_local i32 @pll_14nm_calc_vco_count(%struct.dsi_pll_14nm*) #1

declare dso_local i32 @pll_db_commit_14nm(%struct.dsi_pll_14nm*, %struct.dsi_pll_input*, %struct.dsi_pll_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
