; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3066_hdmi = type { i32 }

@HDMI_SYS_CTRL = common dso_local global i32 0, align 4
@HDMI_SYS_PLL_RESET_MASK = common dso_local global i32 0, align 4
@HDMI_SYS_PLL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3066_hdmi*, i32, i32)* @rk3066_hdmi_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rk3066_hdmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rk3066_hdmi* %0, %struct.rk3066_hdmi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %7, i32 %8, i32 %9)
  %11 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %4, align 8
  %12 = load i32, i32* @HDMI_SYS_CTRL, align 4
  %13 = load i32, i32* @HDMI_SYS_PLL_RESET_MASK, align 4
  %14 = load i32, i32* @HDMI_SYS_PLL_RESET, align 4
  %15 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %11, i32 %12, i32 %13, i32 %14)
  %16 = call i32 @usleep_range(i32 90, i32 100)
  %17 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %4, align 8
  %18 = load i32, i32* @HDMI_SYS_CTRL, align 4
  %19 = load i32, i32* @HDMI_SYS_PLL_RESET_MASK, align 4
  %20 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %17, i32 %18, i32 %19, i32 0)
  %21 = call i32 @usleep_range(i32 900, i32 1000)
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.rk3066_hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_modb(%struct.rk3066_hdmi*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
