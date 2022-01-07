; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lvds_pll.c_mpd4_lvds_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lvds_pll.c_mpd4_lvds_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mdp4_lvds_pll = type { i32 }
%struct.mdp4_kms = type { i32 }
%struct.pll_rate = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"pixclk=%lu (%lu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_MDP4_LCDC_LVDS_PHY_RESET = common dso_local global i64 0, align 8
@REG_MDP4_LVDS_PHY_PLL_CTRL_0 = common dso_local global i64 0, align 8
@REG_MDP4_LVDS_PHY_PLL_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mpd4_lvds_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpd4_lvds_pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.mdp4_lvds_pll*, align 8
  %5 = alloca %struct.mdp4_kms*, align 8
  %6 = alloca %struct.pll_rate*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.mdp4_lvds_pll* @to_mdp4_lvds_pll(%struct.clk_hw* %8)
  store %struct.mdp4_lvds_pll* %9, %struct.mdp4_lvds_pll** %4, align 8
  %10 = load %struct.mdp4_lvds_pll*, %struct.mdp4_lvds_pll** %4, align 8
  %11 = call %struct.mdp4_kms* @get_kms(%struct.mdp4_lvds_pll* %10)
  store %struct.mdp4_kms* %11, %struct.mdp4_kms** %5, align 8
  %12 = load %struct.mdp4_lvds_pll*, %struct.mdp4_lvds_pll** %4, align 8
  %13 = getelementptr inbounds %struct.mdp4_lvds_pll, %struct.mdp4_lvds_pll* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pll_rate* @find_rate(i32 %14)
  store %struct.pll_rate* %15, %struct.pll_rate** %6, align 8
  %16 = load %struct.mdp4_lvds_pll*, %struct.mdp4_lvds_pll** %4, align 8
  %17 = getelementptr inbounds %struct.mdp4_lvds_pll, %struct.mdp4_lvds_pll* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pll_rate*, %struct.pll_rate** %6, align 8
  %20 = getelementptr inbounds %struct.pll_rate, %struct.pll_rate* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.pll_rate*, %struct.pll_rate** %6, align 8
  %24 = icmp ne %struct.pll_rate* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %81

32:                                               ; preds = %1
  %33 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %34 = load i64, i64* @REG_MDP4_LCDC_LVDS_PHY_RESET, align 8
  %35 = call i32 @mdp4_write(%struct.mdp4_kms* %33, i64 %34, i32 51)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %65, %32
  %37 = load %struct.pll_rate*, %struct.pll_rate** %6, align 8
  %38 = getelementptr inbounds %struct.pll_rate, %struct.pll_rate* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %36
  %47 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %48 = load %struct.pll_rate*, %struct.pll_rate** %6, align 8
  %49 = getelementptr inbounds %struct.pll_rate, %struct.pll_rate* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.pll_rate*, %struct.pll_rate** %6, align 8
  %57 = getelementptr inbounds %struct.pll_rate, %struct.pll_rate* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mdp4_write(%struct.mdp4_kms* %47, i64 %55, i32 %63)
  br label %65

65:                                               ; preds = %46
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %36

68:                                               ; preds = %36
  %69 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %70 = load i64, i64* @REG_MDP4_LVDS_PHY_PLL_CTRL_0, align 8
  %71 = call i32 @mdp4_write(%struct.mdp4_kms* %69, i64 %70, i32 1)
  br label %72

72:                                               ; preds = %78, %68
  %73 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %74 = load i32, i32* @REG_MDP4_LVDS_PHY_PLL_LOCKED, align 4
  %75 = call i32 @mdp4_read(%struct.mdp4_kms* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 (...) @cpu_relax()
  br label %72

80:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %29
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.mdp4_lvds_pll* @to_mdp4_lvds_pll(%struct.clk_hw*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.mdp4_lvds_pll*) #1

declare dso_local %struct.pll_rate* @find_rate(i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i64, i32) #1

declare dso_local i32 @mdp4_read(%struct.mdp4_kms*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
