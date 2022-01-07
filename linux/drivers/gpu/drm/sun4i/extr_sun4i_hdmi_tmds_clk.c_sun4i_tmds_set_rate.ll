; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_tmds_clk.c_sun4i_tmds_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_tmds_clk.c_sun4i_tmds_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sun4i_tmds = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@SUN4I_HDMI_PAD_CTRL1_REG = common dso_local global i64 0, align 8
@SUN4I_HDMI_PAD_CTRL1_HALVE_CLK = common dso_local global i32 0, align 4
@SUN4I_HDMI_PLL_CTRL_REG = common dso_local global i64 0, align 8
@SUN4I_HDMI_PLL_CTRL_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @sun4i_tmds_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_tmds_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sun4i_tmds*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.sun4i_tmds* @hw_to_tmds(%struct.clk_hw* %11)
  store %struct.sun4i_tmds* %12, %struct.sun4i_tmds** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %7, align 8
  %16 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @sun4i_tmds_calc_divider(i64 %13, i64 %14, i64 %17, i64* %10, i32* %8)
  %19 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %7, align 8
  %20 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SUN4I_HDMI_PAD_CTRL1_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @SUN4I_HDMI_PAD_CTRL1_HALVE_CLK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @SUN4I_HDMI_PAD_CTRL1_HALVE_CLK, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %3
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %7, align 8
  %40 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SUN4I_HDMI_PAD_CTRL1_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %38, i64 %45)
  %47 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %7, align 8
  %48 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SUN4I_HDMI_PLL_CTRL_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @SUN4I_HDMI_PLL_CTRL_DIV_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %7, align 8
  %62 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = call i32 @SUN4I_HDMI_PLL_CTRL_DIV(i64 %64)
  %66 = or i32 %59, %65
  %67 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %7, align 8
  %68 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SUN4I_HDMI_PLL_CTRL_REG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %66, i64 %73)
  ret i32 0
}

declare dso_local %struct.sun4i_tmds* @hw_to_tmds(%struct.clk_hw*) #1

declare dso_local i32 @sun4i_tmds_calc_divider(i64, i64, i64, i64*, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @SUN4I_HDMI_PLL_CTRL_DIV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
