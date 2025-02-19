; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }

@HDMI_MC_PHYRSTZ_PHYRSTZ = common dso_local global i32 0, align 4
@HDMI_MC_PHYRSTZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_hdmi_phy_reset(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %3 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %4 = load i32, i32* @HDMI_MC_PHYRSTZ_PHYRSTZ, align 4
  %5 = load i32, i32* @HDMI_MC_PHYRSTZ, align 4
  %6 = call i32 @hdmi_writeb(%struct.dw_hdmi* %3, i32 %4, i32 %5)
  %7 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %8 = load i32, i32* @HDMI_MC_PHYRSTZ, align 4
  %9 = call i32 @hdmi_writeb(%struct.dw_hdmi* %7, i32 0, i32 %8)
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
