; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8x74.c_hdmi_phy_8x74_powerup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8x74.c_hdmi_phy_8x74_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_phy = type { i32 }

@REG_HDMI_8x74_ANA_CFG0 = common dso_local global i32 0, align 4
@REG_HDMI_8x74_ANA_CFG1 = common dso_local global i32 0, align 4
@REG_HDMI_8x74_BIST_CFG0 = common dso_local global i32 0, align 4
@REG_HDMI_8x74_BIST_PATN0 = common dso_local global i32 0, align 4
@REG_HDMI_8x74_BIST_PATN1 = common dso_local global i32 0, align 4
@REG_HDMI_8x74_BIST_PATN2 = common dso_local global i32 0, align 4
@REG_HDMI_8x74_BIST_PATN3 = common dso_local global i32 0, align 4
@REG_HDMI_8x74_PD_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_phy*, i64)* @hdmi_phy_8x74_powerup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_phy_8x74_powerup(%struct.hdmi_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.hdmi_phy*, align 8
  %4 = alloca i64, align 8
  store %struct.hdmi_phy* %0, %struct.hdmi_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %6 = load i32, i32* @REG_HDMI_8x74_ANA_CFG0, align 4
  %7 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %5, i32 %6, i32 27)
  %8 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %9 = load i32, i32* @REG_HDMI_8x74_ANA_CFG1, align 4
  %10 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %8, i32 %9, i32 242)
  %11 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %12 = load i32, i32* @REG_HDMI_8x74_BIST_CFG0, align 4
  %13 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %11, i32 %12, i32 0)
  %14 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %15 = load i32, i32* @REG_HDMI_8x74_BIST_PATN0, align 4
  %16 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %14, i32 %15, i32 0)
  %17 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %18 = load i32, i32* @REG_HDMI_8x74_BIST_PATN1, align 4
  %19 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %17, i32 %18, i32 0)
  %20 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %21 = load i32, i32* @REG_HDMI_8x74_BIST_PATN2, align 4
  %22 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %20, i32 %21, i32 0)
  %23 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %24 = load i32, i32* @REG_HDMI_8x74_BIST_PATN3, align 4
  %25 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %23, i32 %24, i32 0)
  %26 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %27 = load i32, i32* @REG_HDMI_8x74_PD_CTRL1, align 4
  %28 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %26, i32 %27, i32 32)
  ret void
}

declare dso_local i32 @hdmi_phy_write(%struct.hdmi_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
