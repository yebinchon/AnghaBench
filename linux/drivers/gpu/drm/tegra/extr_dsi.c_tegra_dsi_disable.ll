; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { %struct.tegra_dsi* }

@DSI_POWER_CONTROL = common dso_local global i32 0, align 4
@DSI_POWER_CONTROL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dsi*)* @tegra_dsi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dsi_disable(%struct.tegra_dsi* %0) #0 {
  %2 = alloca %struct.tegra_dsi*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %2, align 8
  %4 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %4, i32 0, i32 0
  %6 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %7 = icmp ne %struct.tegra_dsi* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %9, i32 0, i32 0
  %11 = load %struct.tegra_dsi*, %struct.tegra_dsi** %10, align 8
  %12 = call i32 @tegra_dsi_ganged_disable(%struct.tegra_dsi* %11)
  %13 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %14 = call i32 @tegra_dsi_ganged_disable(%struct.tegra_dsi* %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %17 = load i32, i32* @DSI_POWER_CONTROL, align 4
  %18 = call i32 @tegra_dsi_readl(%struct.tegra_dsi* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @DSI_POWER_CONTROL_ENABLE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @DSI_POWER_CONTROL, align 4
  %26 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %23, i32 %24, i32 %25)
  %27 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %28 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %27, i32 0, i32 0
  %29 = load %struct.tegra_dsi*, %struct.tegra_dsi** %28, align 8
  %30 = icmp ne %struct.tegra_dsi* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %15
  %32 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %33 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %32, i32 0, i32 0
  %34 = load %struct.tegra_dsi*, %struct.tegra_dsi** %33, align 8
  call void @tegra_dsi_disable(%struct.tegra_dsi* %34)
  br label %35

35:                                               ; preds = %31, %15
  %36 = call i32 @usleep_range(i32 5000, i32 10000)
  ret void
}

declare dso_local i32 @tegra_dsi_ganged_disable(%struct.tegra_dsi*) #1

declare dso_local i32 @tegra_dsi_readl(%struct.tegra_dsi*, i32) #1

declare dso_local i32 @tegra_dsi_writel(%struct.tegra_dsi*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
