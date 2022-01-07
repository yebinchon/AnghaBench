; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lvds_pll.c_mpd4_lvds_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lvds_pll.c_mpd4_lvds_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mdp4_lvds_pll = type { i32 }
%struct.mdp4_kms = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REG_MDP4_LVDS_PHY_CFG0 = common dso_local global i32 0, align 4
@REG_MDP4_LVDS_PHY_PLL_CTRL_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @mpd4_lvds_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpd4_lvds_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mdp4_lvds_pll*, align 8
  %4 = alloca %struct.mdp4_kms*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.mdp4_lvds_pll* @to_mdp4_lvds_pll(%struct.clk_hw* %5)
  store %struct.mdp4_lvds_pll* %6, %struct.mdp4_lvds_pll** %3, align 8
  %7 = load %struct.mdp4_lvds_pll*, %struct.mdp4_lvds_pll** %3, align 8
  %8 = call %struct.mdp4_kms* @get_kms(%struct.mdp4_lvds_pll* %7)
  store %struct.mdp4_kms* %8, %struct.mdp4_kms** %4, align 8
  %9 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %11 = load i32, i32* @REG_MDP4_LVDS_PHY_CFG0, align 4
  %12 = call i32 @mdp4_write(%struct.mdp4_kms* %10, i32 %11, i32 0)
  %13 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %14 = load i32, i32* @REG_MDP4_LVDS_PHY_PLL_CTRL_0, align 4
  %15 = call i32 @mdp4_write(%struct.mdp4_kms* %13, i32 %14, i32 0)
  ret void
}

declare dso_local %struct.mdp4_lvds_pll* @to_mdp4_lvds_pll(%struct.clk_hw*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.mdp4_lvds_pll*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
