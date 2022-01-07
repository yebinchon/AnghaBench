; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_pad_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_pad_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { i32 }

@DSI_PAD_CONTROL_0 = common dso_local global i32 0, align 4
@DSI_PAD_CONTROL_1 = common dso_local global i32 0, align 4
@DSI_PAD_CONTROL_2 = common dso_local global i32 0, align 4
@DSI_PAD_CONTROL_3 = common dso_local global i32 0, align 4
@DSI_PAD_CONTROL_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dsi*)* @tegra_dsi_pad_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_pad_calibrate(%struct.tegra_dsi* %0) #0 {
  %2 = alloca %struct.tegra_dsi*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %2, align 8
  %4 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %5 = load i32, i32* @DSI_PAD_CONTROL_0, align 4
  %6 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %4, i32 0, i32 %5)
  %7 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %8 = load i32, i32* @DSI_PAD_CONTROL_1, align 4
  %9 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %7, i32 0, i32 %8)
  %10 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %11 = load i32, i32* @DSI_PAD_CONTROL_2, align 4
  %12 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %10, i32 0, i32 %11)
  %13 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %14 = load i32, i32* @DSI_PAD_CONTROL_3, align 4
  %15 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %13, i32 0, i32 %14)
  %16 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %17 = load i32, i32* @DSI_PAD_CONTROL_4, align 4
  %18 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %16, i32 0, i32 %17)
  %19 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %20 = call i32 @tegra_dsi_pad_enable(%struct.tegra_dsi* %19)
  %21 = call i32 @DSI_PAD_SLEW_UP(i32 7)
  %22 = call i32 @DSI_PAD_SLEW_DN(i32 7)
  %23 = or i32 %21, %22
  %24 = call i32 @DSI_PAD_LP_UP(i32 1)
  %25 = or i32 %23, %24
  %26 = call i32 @DSI_PAD_LP_DN(i32 1)
  %27 = or i32 %25, %26
  %28 = call i32 @DSI_PAD_OUT_CLK(i32 0)
  %29 = or i32 %27, %28
  store i32 %29, i32* %3, align 4
  %30 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @DSI_PAD_CONTROL_2, align 4
  %33 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %30, i32 %31, i32 %32)
  %34 = call i32 @DSI_PAD_PREEMP_PD_CLK(i32 3)
  %35 = call i32 @DSI_PAD_PREEMP_PU_CLK(i32 3)
  %36 = or i32 %34, %35
  %37 = call i32 @DSI_PAD_PREEMP_PD(i32 3)
  %38 = or i32 %36, %37
  %39 = call i32 @DSI_PAD_PREEMP_PU(i32 3)
  %40 = or i32 %38, %39
  store i32 %40, i32* %3, align 4
  %41 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @DSI_PAD_CONTROL_3, align 4
  %44 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %41, i32 %42, i32 %43)
  %45 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %46 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @tegra_mipi_calibrate(i32 %47)
  ret i32 %48
}

declare dso_local i32 @tegra_dsi_writel(%struct.tegra_dsi*, i32, i32) #1

declare dso_local i32 @tegra_dsi_pad_enable(%struct.tegra_dsi*) #1

declare dso_local i32 @DSI_PAD_SLEW_UP(i32) #1

declare dso_local i32 @DSI_PAD_SLEW_DN(i32) #1

declare dso_local i32 @DSI_PAD_LP_UP(i32) #1

declare dso_local i32 @DSI_PAD_LP_DN(i32) #1

declare dso_local i32 @DSI_PAD_OUT_CLK(i32) #1

declare dso_local i32 @DSI_PAD_PREEMP_PD_CLK(i32) #1

declare dso_local i32 @DSI_PAD_PREEMP_PU_CLK(i32) #1

declare dso_local i32 @DSI_PAD_PREEMP_PD(i32) #1

declare dso_local i32 @DSI_PAD_PREEMP_PU(i32) #1

declare dso_local i32 @tegra_mipi_calibrate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
