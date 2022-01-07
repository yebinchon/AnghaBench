; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_display_hub_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_display_hub_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dc = type { i32 }

@DC_CMD_IHUB_COMMON_MISC_CTL = common dso_local global i32 0, align 4
@LATENCY_EVENT = common dso_local global i32 0, align 4
@DC_DISP_IHUB_COMMON_DISPLAY_FETCH_METER = common dso_local global i32 0, align 4
@COMMON_UPDATE = common dso_local global i32 0, align 4
@DC_CMD_STATE_CONTROL = common dso_local global i32 0, align 4
@COMMON_ACTREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dc*)* @tegra_display_hub_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_display_hub_update(%struct.tegra_dc* %0) #0 {
  %2 = alloca %struct.tegra_dc*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_dc* %0, %struct.tegra_dc** %2, align 8
  %4 = load %struct.tegra_dc*, %struct.tegra_dc** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pm_runtime_get_sync(i32 %6)
  %8 = load %struct.tegra_dc*, %struct.tegra_dc** %2, align 8
  %9 = load i32, i32* @DC_CMD_IHUB_COMMON_MISC_CTL, align 4
  %10 = call i32 @tegra_dc_readl(%struct.tegra_dc* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @LATENCY_EVENT, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.tegra_dc*, %struct.tegra_dc** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @DC_CMD_IHUB_COMMON_MISC_CTL, align 4
  %18 = call i32 @tegra_dc_writel(%struct.tegra_dc* %15, i32 %16, i32 %17)
  %19 = load %struct.tegra_dc*, %struct.tegra_dc** %2, align 8
  %20 = load i32, i32* @DC_DISP_IHUB_COMMON_DISPLAY_FETCH_METER, align 4
  %21 = call i32 @tegra_dc_readl(%struct.tegra_dc* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = call i32 @CURS_SLOTS(i32 1)
  %23 = call i32 @WGRP_SLOTS(i32 1)
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load %struct.tegra_dc*, %struct.tegra_dc** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DC_DISP_IHUB_COMMON_DISPLAY_FETCH_METER, align 4
  %28 = call i32 @tegra_dc_writel(%struct.tegra_dc* %25, i32 %26, i32 %27)
  %29 = load %struct.tegra_dc*, %struct.tegra_dc** %2, align 8
  %30 = load i32, i32* @COMMON_UPDATE, align 4
  %31 = load i32, i32* @DC_CMD_STATE_CONTROL, align 4
  %32 = call i32 @tegra_dc_writel(%struct.tegra_dc* %29, i32 %30, i32 %31)
  %33 = load %struct.tegra_dc*, %struct.tegra_dc** %2, align 8
  %34 = load i32, i32* @DC_CMD_STATE_CONTROL, align 4
  %35 = call i32 @tegra_dc_readl(%struct.tegra_dc* %33, i32 %34)
  %36 = load %struct.tegra_dc*, %struct.tegra_dc** %2, align 8
  %37 = load i32, i32* @COMMON_ACTREQ, align 4
  %38 = load i32, i32* @DC_CMD_STATE_CONTROL, align 4
  %39 = call i32 @tegra_dc_writel(%struct.tegra_dc* %36, i32 %37, i32 %38)
  %40 = load %struct.tegra_dc*, %struct.tegra_dc** %2, align 8
  %41 = load i32, i32* @DC_CMD_STATE_CONTROL, align 4
  %42 = call i32 @tegra_dc_readl(%struct.tegra_dc* %40, i32 %41)
  %43 = load %struct.tegra_dc*, %struct.tegra_dc** %2, align 8
  %44 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pm_runtime_put(i32 %45)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @CURS_SLOTS(i32) #1

declare dso_local i32 @WGRP_SLOTS(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
