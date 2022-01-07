; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_hdmi_8996_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_hdmi_8996_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hdmi_pll_8996 = type { i32 }

@REG_HDMI_PHY_QSERDES_COM_LOCK_CMP1_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_LOCK_CMP2_MODE0 = common dso_local global i32 0, align 4
@REG_HDMI_PHY_QSERDES_COM_LOCK_CMP3_MODE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @hdmi_8996_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hdmi_8996_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hdmi_pll_8996*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.hdmi_pll_8996* @hw_clk_to_pll(%struct.clk_hw* %11)
  store %struct.hdmi_pll_8996* %12, %struct.hdmi_pll_8996** %5, align 8
  %13 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %5, align 8
  %14 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_LOCK_CMP1_MODE0, align 4
  %15 = call i32 @hdmi_pll_read(%struct.hdmi_pll_8996* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %5, align 8
  %17 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_LOCK_CMP2_MODE0, align 4
  %18 = call i32 @hdmi_pll_read(%struct.hdmi_pll_8996* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %5, align 8
  %20 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_LOCK_CMP3_MODE0, align 4
  %21 = call i32 @hdmi_pll_read(%struct.hdmi_pll_8996* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 8
  %25 = or i32 %22, %24
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 %26, 16
  %28 = or i32 %25, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @pll_cmp_to_fdata(i32 %30, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @do_div(i64 %33, i32 10)
  %35 = load i64, i64* %6, align 8
  ret i64 %35
}

declare dso_local %struct.hdmi_pll_8996* @hw_clk_to_pll(%struct.clk_hw*) #1

declare dso_local i32 @hdmi_pll_read(%struct.hdmi_pll_8996*, i32) #1

declare dso_local i64 @pll_cmp_to_fdata(i32, i64) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
