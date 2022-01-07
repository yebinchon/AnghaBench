; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8x60.c_hdmi_phy_8x60_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8x60.c_hdmi_phy_8x60_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_phy = type { i32 }

@REG_HDMI_PHY_CTRL = common dso_local global i32 0, align 4
@HDMI_PHY_CTRL_SW_RESET = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG2 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_DRIVE_4 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_DRIVE_3 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_DRIVE_2 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_DRIVE_1 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_DESER = common dso_local global i32 0, align 4
@REG_HDMI_8x60_PHY_REG3 = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_RCV_SENSE_EN = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_PWRGEN = common dso_local global i32 0, align 4
@HDMI_8x60_PHY_REG2_PD_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_phy*)* @hdmi_phy_8x60_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_phy_8x60_powerdown(%struct.hdmi_phy* %0) #0 {
  %2 = alloca %struct.hdmi_phy*, align 8
  store %struct.hdmi_phy* %0, %struct.hdmi_phy** %2, align 8
  %3 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %4 = load i32, i32* @REG_HDMI_PHY_CTRL, align 4
  %5 = load i32, i32* @HDMI_PHY_CTRL_SW_RESET, align 4
  %6 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %3, i32 %4, i32 %5)
  %7 = call i32 @udelay(i32 10)
  %8 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %9 = load i32, i32* @REG_HDMI_PHY_CTRL, align 4
  %10 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %8, i32 %9, i32 0)
  %11 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %12 = load i32, i32* @REG_HDMI_8x60_PHY_REG2, align 4
  %13 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_4, align 4
  %14 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_3, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_2, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_1, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DESER, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %11, i32 %12, i32 %21)
  %23 = call i32 @udelay(i32 10)
  %24 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %25 = load i32, i32* @REG_HDMI_8x60_PHY_REG3, align 4
  %26 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %24, i32 %25, i32 0)
  %27 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %28 = load i32, i32* @REG_HDMI_8x60_PHY_REG2, align 4
  %29 = load i32, i32* @HDMI_8x60_PHY_REG2_RCV_SENSE_EN, align 4
  %30 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_PWRGEN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_PLL, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_4, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_3, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_2, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DRIVE_1, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @HDMI_8x60_PHY_REG2_PD_DESER, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %27, i32 %28, i32 %43)
  ret void
}

declare dso_local i32 @hdmi_phy_write(%struct.hdmi_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
