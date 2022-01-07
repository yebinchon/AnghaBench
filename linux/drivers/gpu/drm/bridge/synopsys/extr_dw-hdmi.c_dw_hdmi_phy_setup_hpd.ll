; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_setup_hpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_setup_hpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }

@HDMI_PHY_HPD = common dso_local global i32 0, align 4
@HDMI_PHY_RX_SENSE = common dso_local global i32 0, align 4
@HDMI_PHY_POL0 = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0_HPD = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0_RX_SENSE = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_PHY_MASK0 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_PHY_STAT0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_hdmi_phy_setup_hpd(%struct.dw_hdmi* %0, i8* %1) #0 {
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca i8*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %6 = load i32, i32* @HDMI_PHY_HPD, align 4
  %7 = load i32, i32* @HDMI_PHY_RX_SENSE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @HDMI_PHY_POL0, align 4
  %10 = call i32 @hdmi_writeb(%struct.dw_hdmi* %5, i32 %8, i32 %9)
  %11 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %12 = load i32, i32* @HDMI_IH_PHY_STAT0_HPD, align 4
  %13 = load i32, i32* @HDMI_IH_PHY_STAT0_RX_SENSE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @HDMI_IH_PHY_STAT0, align 4
  %16 = call i32 @hdmi_writeb(%struct.dw_hdmi* %11, i32 %14, i32 %15)
  %17 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %19 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HDMI_PHY_MASK0, align 4
  %22 = call i32 @hdmi_writeb(%struct.dw_hdmi* %17, i32 %20, i32 %21)
  %23 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %24 = load i32, i32* @HDMI_IH_PHY_STAT0_HPD, align 4
  %25 = load i32, i32* @HDMI_IH_PHY_STAT0_RX_SENSE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @HDMI_IH_PHY_STAT0, align 4
  %28 = call i32 @hdmi_writeb(%struct.dw_hdmi* %23, i32 %26, i32 %27)
  %29 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %30 = load i32, i32* @HDMI_IH_PHY_STAT0_HPD, align 4
  %31 = load i32, i32* @HDMI_IH_PHY_STAT0_RX_SENSE, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @HDMI_IH_MUTE_PHY_STAT0, align 4
  %35 = call i32 @hdmi_writeb(%struct.dw_hdmi* %29, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
