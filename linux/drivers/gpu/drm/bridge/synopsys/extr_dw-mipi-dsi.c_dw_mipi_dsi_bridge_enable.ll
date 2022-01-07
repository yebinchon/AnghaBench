; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_bridge_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_bridge_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.dw_mipi_dsi = type { %struct.TYPE_2__*, %struct.dw_mipi_dsi* }
%struct.TYPE_2__ = type { i32, %struct.dw_mipi_dsi_phy_ops* }
%struct.dw_mipi_dsi_phy_ops = type { i32 (i32)* }

@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @dw_mipi_dsi_bridge_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_dsi_bridge_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.dw_mipi_dsi*, align 8
  %4 = alloca %struct.dw_mipi_dsi_phy_ops*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = call %struct.dw_mipi_dsi* @bridge_to_dsi(%struct.drm_bridge* %5)
  store %struct.dw_mipi_dsi* %6, %struct.dw_mipi_dsi** %3, align 8
  %7 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %8 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.dw_mipi_dsi_phy_ops*, %struct.dw_mipi_dsi_phy_ops** %10, align 8
  store %struct.dw_mipi_dsi_phy_ops* %11, %struct.dw_mipi_dsi_phy_ops** %4, align 8
  %12 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %13 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %14 = call i32 @dw_mipi_dsi_set_mode(%struct.dw_mipi_dsi* %12, i32 %13)
  %15 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %16 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %15, i32 0, i32 1
  %17 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %16, align 8
  %18 = icmp ne %struct.dw_mipi_dsi* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %21 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %20, i32 0, i32 1
  %22 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %21, align 8
  %23 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %24 = call i32 @dw_mipi_dsi_set_mode(%struct.dw_mipi_dsi* %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.dw_mipi_dsi_phy_ops*, %struct.dw_mipi_dsi_phy_ops** %4, align 8
  %27 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, %struct.dw_mipi_dsi_phy_ops* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = icmp ne i32 (i32)* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.dw_mipi_dsi_phy_ops*, %struct.dw_mipi_dsi_phy_ops** %4, align 8
  %32 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, %struct.dw_mipi_dsi_phy_ops* %31, i32 0, i32 0
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %35 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %33(i32 %38)
  br label %40

40:                                               ; preds = %30, %25
  ret void
}

declare dso_local %struct.dw_mipi_dsi* @bridge_to_dsi(%struct.drm_bridge*) #1

declare dso_local i32 @dw_mipi_dsi_set_mode(%struct.dw_mipi_dsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
