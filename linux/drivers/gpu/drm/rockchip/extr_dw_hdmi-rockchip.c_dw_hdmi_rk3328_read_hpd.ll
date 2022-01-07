; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_dw_hdmi_rk3328_read_hpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_dw_hdmi_rk3328_read_hpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.rockchip_hdmi = type { i32 }

@connector_status_connected = common dso_local global i32 0, align 4
@RK3328_GRF_SOC_CON4 = common dso_local global i32 0, align 4
@RK3328_HDMI_SDA_5V = common dso_local global i32 0, align 4
@RK3328_HDMI_SCL_5V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*, i8*)* @dw_hdmi_rk3328_read_hpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_rk3328_read_hpd(%struct.dw_hdmi* %0, i8* %1) #0 {
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rockchip_hdmi*, align 8
  %6 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.rockchip_hdmi*
  store %struct.rockchip_hdmi* %8, %struct.rockchip_hdmi** %5, align 8
  %9 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @dw_hdmi_phy_read_hpd(%struct.dw_hdmi* %9, i8* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @connector_status_connected, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %5, align 8
  %17 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RK3328_GRF_SOC_CON4, align 4
  %20 = load i32, i32* @RK3328_HDMI_SDA_5V, align 4
  %21 = load i32, i32* @RK3328_HDMI_SCL_5V, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RK3328_HDMI_SDA_5V, align 4
  %24 = load i32, i32* @RK3328_HDMI_SCL_5V, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @HIWORD_UPDATE(i32 %22, i32 %25)
  %27 = call i32 @regmap_write(i32 %18, i32 %19, i32 %26)
  br label %38

28:                                               ; preds = %2
  %29 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %5, align 8
  %30 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RK3328_GRF_SOC_CON4, align 4
  %33 = load i32, i32* @RK3328_HDMI_SDA_5V, align 4
  %34 = load i32, i32* @RK3328_HDMI_SCL_5V, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @HIWORD_UPDATE(i32 0, i32 %35)
  %37 = call i32 @regmap_write(i32 %31, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %28, %15
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @dw_hdmi_phy_read_hpd(%struct.dw_hdmi*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @HIWORD_UPDATE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
