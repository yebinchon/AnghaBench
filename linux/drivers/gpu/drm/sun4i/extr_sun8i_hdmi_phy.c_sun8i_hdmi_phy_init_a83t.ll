; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_init_a83t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_init_a83t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_hdmi_phy = type { i32 }

@SUN8I_HDMI_PHY_DBG_CTRL_REG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_DBG_CTRL_PX_LOCK = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_DBG_CTRL_ADDR_MASK = common dso_local global i32 0, align 4
@I2C_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun8i_hdmi_phy*)* @sun8i_hdmi_phy_init_a83t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun8i_hdmi_phy_init_a83t(%struct.sun8i_hdmi_phy* %0) #0 {
  %2 = alloca %struct.sun8i_hdmi_phy*, align 8
  store %struct.sun8i_hdmi_phy* %0, %struct.sun8i_hdmi_phy** %2, align 8
  %3 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %4 = call i32 @sun8i_hdmi_phy_unlock(%struct.sun8i_hdmi_phy* %3)
  %5 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %6 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SUN8I_HDMI_PHY_DBG_CTRL_REG, align 4
  %9 = load i32, i32* @SUN8I_HDMI_PHY_DBG_CTRL_PX_LOCK, align 4
  %10 = load i32, i32* @SUN8I_HDMI_PHY_DBG_CTRL_PX_LOCK, align 4
  %11 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %13 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SUN8I_HDMI_PHY_DBG_CTRL_REG, align 4
  %16 = load i32, i32* @SUN8I_HDMI_PHY_DBG_CTRL_ADDR_MASK, align 4
  %17 = load i32, i32* @I2C_ADDR, align 4
  %18 = call i32 @SUN8I_HDMI_PHY_DBG_CTRL_ADDR(i32 %17)
  %19 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %18)
  ret void
}

declare dso_local i32 @sun8i_hdmi_phy_unlock(%struct.sun8i_hdmi_phy*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN8I_HDMI_PHY_DBG_CTRL_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
