; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_setup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_setup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { i32, i32 }
%struct.clk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dsi*)* @tegra_dsi_setup_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_setup_clocks(%struct.tegra_dsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dsi*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %3, align 8
  %6 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.clk* @clk_get_parent(i32 %8)
  store %struct.clk* %9, %struct.clk** %4, align 8
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = icmp ne %struct.clk* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.clk*, %struct.clk** %4, align 8
  %17 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_set_parent(%struct.clk* %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i32 @clk_set_parent(%struct.clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
