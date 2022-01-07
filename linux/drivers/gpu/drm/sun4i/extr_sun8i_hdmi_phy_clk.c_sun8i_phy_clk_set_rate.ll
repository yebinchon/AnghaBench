; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy_clk.c_sun8i_phy_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy_clk.c_sun8i_phy_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sun8i_phy_clk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SUN8I_HDMI_PHY_PLL_CFG2_REG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @sun8i_phy_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_phy_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sun8i_phy_clk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.sun8i_phy_clk* @hw_to_phy_clk(%struct.clk_hw* %12)
  store %struct.sun8i_phy_clk* %13, %struct.sun8i_phy_clk** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %14

14:                                               ; preds = %41, %3
  %15 = load i32, i32* %10, align 4
  %16 = icmp sle i32 %15, 16
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %18, %20
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %41

26:                                               ; preds = %17
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %11, align 8
  %32 = sub i64 %30, %31
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %33, %34
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29, %26
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %29
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %14

44:                                               ; preds = %14
  %45 = load %struct.sun8i_phy_clk*, %struct.sun8i_phy_clk** %7, align 8
  %46 = getelementptr inbounds %struct.sun8i_phy_clk, %struct.sun8i_phy_clk* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SUN8I_HDMI_PHY_PLL_CFG2_REG, align 4
  %51 = load i32, i32* @SUN8I_HDMI_PHY_PLL_CFG2_PREDIV_MSK, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @SUN8I_HDMI_PHY_PLL_CFG2_PREDIV(i32 %52)
  %54 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 %53)
  ret i32 0
}

declare dso_local %struct.sun8i_phy_clk* @hw_to_phy_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN8I_HDMI_PHY_PLL_CFG2_PREDIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
