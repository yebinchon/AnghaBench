; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_ganged_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_ganged_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.clk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dsi*)* @tegra_dsi_ganged_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_ganged_setup(%struct.tegra_dsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dsi*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %3, align 8
  %6 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.clk* @clk_get_parent(i32 %10)
  store %struct.clk* %11, %struct.clk** %4, align 8
  %12 = load %struct.clk*, %struct.clk** %4, align 8
  %13 = icmp ne %struct.clk* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = load %struct.tegra_dsi*, %struct.tegra_dsi** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @clk_set_parent(%struct.clk* %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %25, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i32 @clk_set_parent(%struct.clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
