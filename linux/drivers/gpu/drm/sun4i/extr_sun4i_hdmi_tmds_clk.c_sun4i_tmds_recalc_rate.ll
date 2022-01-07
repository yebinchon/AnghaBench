; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_tmds_clk.c_sun4i_tmds_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_tmds_clk.c_sun4i_tmds_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sun4i_tmds = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SUN4I_HDMI_PAD_CTRL1_REG = common dso_local global i64 0, align 8
@SUN4I_HDMI_PAD_CTRL1_HALVE_CLK = common dso_local global i32 0, align 4
@SUN4I_HDMI_PLL_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @sun4i_tmds_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun4i_tmds_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sun4i_tmds*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.sun4i_tmds* @hw_to_tmds(%struct.clk_hw* %7)
  store %struct.sun4i_tmds* %8, %struct.sun4i_tmds** %5, align 8
  %9 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %5, align 8
  %10 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SUN4I_HDMI_PAD_CTRL1_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SUN4I_HDMI_PAD_CTRL1_HALVE_CLK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = udiv i64 %22, 2
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %5, align 8
  %26 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SUN4I_HDMI_PLL_CTRL_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 4
  %35 = and i32 %34, 15
  %36 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %5, align 8
  %37 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %44, %46
  ret i64 %47
}

declare dso_local %struct.sun4i_tmds* @hw_to_tmds(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
