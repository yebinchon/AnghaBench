; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_power_off_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_power_off_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@HDMI_IRQ_CORE = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hdmi*)* @hdmi_power_off_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_power_off_full(%struct.omap_hdmi* %0) #0 {
  %2 = alloca %struct.omap_hdmi*, align 8
  store %struct.omap_hdmi* %0, %struct.omap_hdmi** %2, align 8
  %3 = load %struct.omap_hdmi*, %struct.omap_hdmi** %2, align 8
  %4 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %3, i32 0, i32 1
  %5 = load i32, i32* @HDMI_IRQ_CORE, align 4
  %6 = xor i32 %5, -1
  %7 = call i32 @hdmi_wp_clear_irqenable(i32* %4, i32 %6)
  %8 = load %struct.omap_hdmi*, %struct.omap_hdmi** %2, align 8
  %9 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %8, i32 0, i32 1
  %10 = call i32 @hdmi_wp_video_stop(i32* %9)
  %11 = load %struct.omap_hdmi*, %struct.omap_hdmi** %2, align 8
  %12 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %11, i32 0, i32 2
  %13 = call i32 @dss_mgr_disable(i32* %12)
  %14 = load %struct.omap_hdmi*, %struct.omap_hdmi** %2, align 8
  %15 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %14, i32 0, i32 1
  %16 = load i32, i32* @HDMI_PHYPWRCMD_OFF, align 4
  %17 = call i32 @hdmi_wp_set_phy_pwr(i32* %15, i32 %16)
  %18 = load %struct.omap_hdmi*, %struct.omap_hdmi** %2, align 8
  %19 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dss_pll_disable(i32* %20)
  %22 = load %struct.omap_hdmi*, %struct.omap_hdmi** %2, align 8
  %23 = call i32 @hdmi_power_off_core(%struct.omap_hdmi* %22)
  ret void
}

declare dso_local i32 @hdmi_wp_clear_irqenable(i32*, i32) #1

declare dso_local i32 @hdmi_wp_video_stop(i32*) #1

declare dso_local i32 @dss_mgr_disable(i32*) #1

declare dso_local i32 @hdmi_wp_set_phy_pwr(i32*, i32) #1

declare dso_local i32 @dss_pll_disable(i32*) #1

declare dso_local i32 @hdmi_power_off_core(%struct.omap_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
