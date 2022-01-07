; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dsi*, i32)* @tegra_dsi_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_readl(%struct.tegra_dsi* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_dsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 2
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @trace_dsi_readl(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @trace_dsi_readl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
