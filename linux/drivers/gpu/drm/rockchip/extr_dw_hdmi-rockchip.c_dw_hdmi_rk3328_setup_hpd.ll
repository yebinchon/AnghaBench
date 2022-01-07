; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_dw_hdmi_rk3328_setup_hpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_dw_hdmi_rk3328_setup_hpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.rockchip_hdmi = type { i32 }

@RK3328_GRF_SOC_CON4 = common dso_local global i32 0, align 4
@RK3328_HDMI_HPD_SARADC = common dso_local global i32 0, align 4
@RK3328_HDMI_CEC_5V = common dso_local global i32 0, align 4
@RK3328_HDMI_SDA_5V = common dso_local global i32 0, align 4
@RK3328_HDMI_SCL_5V = common dso_local global i32 0, align 4
@RK3328_HDMI_HPD_5V = common dso_local global i32 0, align 4
@RK3328_GRF_SOC_CON3 = common dso_local global i32 0, align 4
@RK3328_HDMI_SDA5V_GRF = common dso_local global i32 0, align 4
@RK3328_HDMI_SCL5V_GRF = common dso_local global i32 0, align 4
@RK3328_HDMI_HPD5V_GRF = common dso_local global i32 0, align 4
@RK3328_HDMI_CEC5V_GRF = common dso_local global i32 0, align 4
@RK3328_GRF_SOC_CON2 = common dso_local global i32 0, align 4
@RK3328_HDMI_SDAIN_MSK = common dso_local global i32 0, align 4
@RK3328_HDMI_SCLIN_MSK = common dso_local global i32 0, align 4
@RK3328_HDMI_HPD_IOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*, i8*)* @dw_hdmi_rk3328_setup_hpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_rk3328_setup_hpd(%struct.dw_hdmi* %0, i8* %1) #0 {
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rockchip_hdmi*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.rockchip_hdmi*
  store %struct.rockchip_hdmi* %7, %struct.rockchip_hdmi** %5, align 8
  %8 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @dw_hdmi_phy_setup_hpd(%struct.dw_hdmi* %8, i8* %9)
  %11 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %5, align 8
  %12 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RK3328_GRF_SOC_CON4, align 4
  %15 = load i32, i32* @RK3328_HDMI_HPD_SARADC, align 4
  %16 = load i32, i32* @RK3328_HDMI_CEC_5V, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RK3328_HDMI_SDA_5V, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @RK3328_HDMI_SCL_5V, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @RK3328_HDMI_HPD_5V, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @HIWORD_UPDATE(i32 0, i32 %23)
  %25 = call i32 @regmap_write(i32 %13, i32 %14, i32 %24)
  %26 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %5, align 8
  %27 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RK3328_GRF_SOC_CON3, align 4
  %30 = load i32, i32* @RK3328_HDMI_SDA5V_GRF, align 4
  %31 = load i32, i32* @RK3328_HDMI_SCL5V_GRF, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RK3328_HDMI_HPD5V_GRF, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RK3328_HDMI_CEC5V_GRF, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @HIWORD_UPDATE(i32 0, i32 %36)
  %38 = call i32 @regmap_write(i32 %28, i32 %29, i32 %37)
  %39 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %5, align 8
  %40 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RK3328_GRF_SOC_CON2, align 4
  %43 = load i32, i32* @RK3328_HDMI_SDAIN_MSK, align 4
  %44 = load i32, i32* @RK3328_HDMI_SCLIN_MSK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RK3328_HDMI_SDAIN_MSK, align 4
  %47 = load i32, i32* @RK3328_HDMI_SCLIN_MSK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RK3328_HDMI_HPD_IOE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @HIWORD_UPDATE(i32 %45, i32 %50)
  %52 = call i32 @regmap_write(i32 %41, i32 %42, i32 %51)
  ret void
}

declare dso_local i32 @dw_hdmi_phy_setup_hpd(%struct.dw_hdmi*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @HIWORD_UPDATE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
