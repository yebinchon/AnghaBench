; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_meson_dw_hdmi_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_meson_dw_hdmi_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_dw_hdmi = type { %struct.meson_drm* }
%struct.meson_drm = type { i32 }

@HHI_HDMI_PHY_CNTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_dw_hdmi*)* @meson_dw_hdmi_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_dw_hdmi_phy_reset(%struct.meson_dw_hdmi* %0) #0 {
  %2 = alloca %struct.meson_dw_hdmi*, align 8
  %3 = alloca %struct.meson_drm*, align 8
  store %struct.meson_dw_hdmi* %0, %struct.meson_dw_hdmi** %2, align 8
  %4 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %2, align 8
  %5 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %4, i32 0, i32 0
  %6 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  store %struct.meson_drm* %6, %struct.meson_drm** %3, align 8
  %7 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %8 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HHI_HDMI_PHY_CNTL1, align 4
  %11 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 15, i32 15)
  %12 = call i32 @mdelay(i32 2)
  %13 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %14 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HHI_HDMI_PHY_CNTL1, align 4
  %17 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 15, i32 14)
  %18 = call i32 @mdelay(i32 2)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
