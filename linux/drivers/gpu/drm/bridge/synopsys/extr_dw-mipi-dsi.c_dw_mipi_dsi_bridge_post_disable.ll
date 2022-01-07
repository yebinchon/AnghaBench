; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_bridge_post_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_bridge_post_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.dw_mipi_dsi = type { i32, i32, %struct.dw_mipi_dsi*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }
%struct.TYPE_4__ = type { i32, %struct.dw_mipi_dsi_phy_ops* }
%struct.dw_mipi_dsi_phy_ops = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @dw_mipi_dsi_bridge_post_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_dsi_bridge_post_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.dw_mipi_dsi*, align 8
  %4 = alloca %struct.dw_mipi_dsi_phy_ops*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = call %struct.dw_mipi_dsi* @bridge_to_dsi(%struct.drm_bridge* %5)
  store %struct.dw_mipi_dsi* %6, %struct.dw_mipi_dsi** %3, align 8
  %7 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %8 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %7, i32 0, i32 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.dw_mipi_dsi_phy_ops*, %struct.dw_mipi_dsi_phy_ops** %10, align 8
  store %struct.dw_mipi_dsi_phy_ops* %11, %struct.dw_mipi_dsi_phy_ops** %4, align 8
  %12 = load %struct.dw_mipi_dsi_phy_ops*, %struct.dw_mipi_dsi_phy_ops** %4, align 8
  %13 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, %struct.dw_mipi_dsi_phy_ops* %12, i32 0, i32 0
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = icmp ne i32 (i32)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.dw_mipi_dsi_phy_ops*, %struct.dw_mipi_dsi_phy_ops** %4, align 8
  %18 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, %struct.dw_mipi_dsi_phy_ops* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %21 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %19(i32 %24)
  br label %26

26:                                               ; preds = %16, %1
  %27 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %28 = call i32 @dw_mipi_dsi_set_mode(%struct.dw_mipi_dsi* %27, i32 0)
  %29 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %30 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %34, align 8
  %36 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %37 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 %35(%struct.TYPE_6__* %38)
  %40 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %41 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %40, i32 0, i32 2
  %42 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %41, align 8
  %43 = icmp ne %struct.dw_mipi_dsi* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %26
  %45 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %46 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %45, i32 0, i32 2
  %47 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %46, align 8
  %48 = call i32 @dw_mipi_dsi_disable(%struct.dw_mipi_dsi* %47)
  %49 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %50 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %49, i32 0, i32 2
  %51 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %50, align 8
  %52 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_disable_unprepare(i32 %53)
  %55 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %56 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %55, i32 0, i32 2
  %57 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %56, align 8
  %58 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pm_runtime_put(i32 %59)
  br label %61

61:                                               ; preds = %44, %26
  %62 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %63 = call i32 @dw_mipi_dsi_disable(%struct.dw_mipi_dsi* %62)
  %64 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %65 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_disable_unprepare(i32 %66)
  %68 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %69 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pm_runtime_put(i32 %70)
  ret void
}

declare dso_local %struct.dw_mipi_dsi* @bridge_to_dsi(%struct.drm_bridge*) #1

declare dso_local i32 @dw_mipi_dsi_set_mode(%struct.dw_mipi_dsi*, i32) #1

declare dso_local i32 @dw_mipi_dsi_disable(%struct.dw_mipi_dsi*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
