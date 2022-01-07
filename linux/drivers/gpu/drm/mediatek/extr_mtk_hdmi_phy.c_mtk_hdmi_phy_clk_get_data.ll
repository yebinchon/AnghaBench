; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_phy.c_mtk_hdmi_phy_clk_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_phy.c_mtk_hdmi_phy_clk_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.clk_init_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi_phy*, %struct.clk_init_data*)* @mtk_hdmi_phy_clk_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_phy_clk_get_data(%struct.mtk_hdmi_phy* %0, %struct.clk_init_data* %1) #0 {
  %3 = alloca %struct.mtk_hdmi_phy*, align 8
  %4 = alloca %struct.clk_init_data*, align 8
  store %struct.mtk_hdmi_phy* %0, %struct.mtk_hdmi_phy** %3, align 8
  store %struct.clk_init_data* %1, %struct.clk_init_data** %4, align 8
  %5 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.clk_init_data*, %struct.clk_init_data** %4, align 8
  %11 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clk_init_data*, %struct.clk_init_data** %4, align 8
  %18 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
