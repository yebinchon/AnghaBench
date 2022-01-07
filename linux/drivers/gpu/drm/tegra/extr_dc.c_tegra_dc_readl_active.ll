; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_readl_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_readl_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dc = type { i32 }

@READ_MUX = common dso_local global i32 0, align 4
@DC_CMD_STATE_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dc*, i64)* @tegra_dc_readl_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dc_readl_active(%struct.tegra_dc* %0, i64 %1) #0 {
  %3 = alloca %struct.tegra_dc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_dc* %0, %struct.tegra_dc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %7 = load i32, i32* @READ_MUX, align 4
  %8 = load i32, i32* @DC_CMD_STATE_ACCESS, align 4
  %9 = call i32 @tegra_dc_writel(%struct.tegra_dc* %6, i32 %7, i32 %8)
  %10 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @tegra_dc_readl(%struct.tegra_dc* %10, i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %14 = load i32, i32* @DC_CMD_STATE_ACCESS, align 4
  %15 = call i32 @tegra_dc_writel(%struct.tegra_dc* %13, i32 0, i32 %14)
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
