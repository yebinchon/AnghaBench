; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_vco_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_10nm.c_dsi_pll_10nm_vco_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.msm_dsi_pll = type { i32 }
%struct.dsi_pll_10nm = type { i64, %struct.dsi_pll_10nm*, i32 }

@REG_DSI_10nm_PHY_CMN_PLL_CNTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"PLL(%d) lock failed\0A\00", align 1
@REG_DSI_10nm_PHY_CMN_RBUF_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @dsi_pll_10nm_vco_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_pll_10nm_vco_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.msm_dsi_pll*, align 8
  %4 = alloca %struct.dsi_pll_10nm*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw* %6)
  store %struct.msm_dsi_pll* %7, %struct.msm_dsi_pll** %3, align 8
  %8 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  %9 = call %struct.dsi_pll_10nm* @to_pll_10nm(%struct.msm_dsi_pll* %8)
  store %struct.dsi_pll_10nm* %9, %struct.dsi_pll_10nm** %4, align 8
  %10 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %11 = call i32 @dsi_pll_enable_pll_bias(%struct.dsi_pll_10nm* %10)
  %12 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %13 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %12, i32 0, i32 1
  %14 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %13, align 8
  %15 = icmp ne %struct.dsi_pll_10nm* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %18 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %17, i32 0, i32 1
  %19 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %18, align 8
  %20 = call i32 @dsi_pll_enable_pll_bias(%struct.dsi_pll_10nm* %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %23 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REG_DSI_10nm_PHY_CMN_PLL_CNTRL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @pll_write(i64 %26, i32 1)
  %28 = call i32 (...) @wmb()
  %29 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %30 = call i32 @dsi_pll_10nm_lock_status(%struct.dsi_pll_10nm* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %35 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %73

38:                                               ; preds = %21
  %39 = load %struct.msm_dsi_pll*, %struct.msm_dsi_pll** %3, align 8
  %40 = getelementptr inbounds %struct.msm_dsi_pll, %struct.msm_dsi_pll* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %42 = call i32 @dsi_pll_enable_global_clk(%struct.dsi_pll_10nm* %41)
  %43 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %44 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %43, i32 0, i32 1
  %45 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %44, align 8
  %46 = icmp ne %struct.dsi_pll_10nm* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %49 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %48, i32 0, i32 1
  %50 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %49, align 8
  %51 = call i32 @dsi_pll_enable_global_clk(%struct.dsi_pll_10nm* %50)
  br label %52

52:                                               ; preds = %47, %38
  %53 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %54 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REG_DSI_10nm_PHY_CMN_RBUF_CTRL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @pll_write(i64 %57, i32 1)
  %59 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %60 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %59, i32 0, i32 1
  %61 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %60, align 8
  %62 = icmp ne %struct.dsi_pll_10nm* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %52
  %64 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %4, align 8
  %65 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %64, i32 0, i32 1
  %66 = load %struct.dsi_pll_10nm*, %struct.dsi_pll_10nm** %65, align 8
  %67 = getelementptr inbounds %struct.dsi_pll_10nm, %struct.dsi_pll_10nm* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @REG_DSI_10nm_PHY_CMN_RBUF_CTRL, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @pll_write(i64 %70, i32 1)
  br label %72

72:                                               ; preds = %63, %52
  br label %73

73:                                               ; preds = %72, %33
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.msm_dsi_pll* @hw_clk_to_pll(%struct.clk_hw*) #1

declare dso_local %struct.dsi_pll_10nm* @to_pll_10nm(%struct.msm_dsi_pll*) #1

declare dso_local i32 @dsi_pll_enable_pll_bias(%struct.dsi_pll_10nm*) #1

declare dso_local i32 @pll_write(i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dsi_pll_10nm_lock_status(%struct.dsi_pll_10nm*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dsi_pll_enable_global_clk(%struct.dsi_pll_10nm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
