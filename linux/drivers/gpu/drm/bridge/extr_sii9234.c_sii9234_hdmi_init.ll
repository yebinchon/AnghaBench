; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_hdmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { i32 }

@HDMI_RX_TMDS0_CCTRL1_REG = common dso_local global i32 0, align 4
@HDMI_RX_PLL_CALREFSEL_REG = common dso_local global i32 0, align 4
@HDMI_RX_PLL_VCOCAL_REG = common dso_local global i32 0, align 4
@HDMI_RX_EQ_DATA0_REG = common dso_local global i32 0, align 4
@HDMI_RX_EQ_DATA1_REG = common dso_local global i32 0, align 4
@HDMI_RX_EQ_DATA2_REG = common dso_local global i32 0, align 4
@HDMI_RX_EQ_DATA3_REG = common dso_local global i32 0, align 4
@HDMI_RX_EQ_DATA4_REG = common dso_local global i32 0, align 4
@HDMI_RX_TMDS_ZONE_CTRL_REG = common dso_local global i32 0, align 4
@HDMI_RX_TMDS_MODE_CTRL_REG = common dso_local global i32 0, align 4
@MHL_TX_TMDS_CCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii9234*)* @sii9234_hdmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii9234_hdmi_init(%struct.sii9234* %0) #0 {
  %2 = alloca %struct.sii9234*, align 8
  store %struct.sii9234* %0, %struct.sii9234** %2, align 8
  %3 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %4 = load i32, i32* @HDMI_RX_TMDS0_CCTRL1_REG, align 4
  %5 = call i32 @hdmi_writeb(%struct.sii9234* %3, i32 %4, i32 193)
  %6 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %7 = load i32, i32* @HDMI_RX_PLL_CALREFSEL_REG, align 4
  %8 = call i32 @hdmi_writeb(%struct.sii9234* %6, i32 %7, i32 3)
  %9 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %10 = load i32, i32* @HDMI_RX_PLL_VCOCAL_REG, align 4
  %11 = call i32 @hdmi_writeb(%struct.sii9234* %9, i32 %10, i32 32)
  %12 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %13 = load i32, i32* @HDMI_RX_EQ_DATA0_REG, align 4
  %14 = call i32 @hdmi_writeb(%struct.sii9234* %12, i32 %13, i32 138)
  %15 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %16 = load i32, i32* @HDMI_RX_EQ_DATA1_REG, align 4
  %17 = call i32 @hdmi_writeb(%struct.sii9234* %15, i32 %16, i32 106)
  %18 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %19 = load i32, i32* @HDMI_RX_EQ_DATA2_REG, align 4
  %20 = call i32 @hdmi_writeb(%struct.sii9234* %18, i32 %19, i32 170)
  %21 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %22 = load i32, i32* @HDMI_RX_EQ_DATA3_REG, align 4
  %23 = call i32 @hdmi_writeb(%struct.sii9234* %21, i32 %22, i32 202)
  %24 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %25 = load i32, i32* @HDMI_RX_EQ_DATA4_REG, align 4
  %26 = call i32 @hdmi_writeb(%struct.sii9234* %24, i32 %25, i32 234)
  %27 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %28 = load i32, i32* @HDMI_RX_TMDS_ZONE_CTRL_REG, align 4
  %29 = call i32 @hdmi_writeb(%struct.sii9234* %27, i32 %28, i32 160)
  %30 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %31 = load i32, i32* @HDMI_RX_TMDS_MODE_CTRL_REG, align 4
  %32 = call i32 @hdmi_writeb(%struct.sii9234* %30, i32 %31, i32 0)
  %33 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %34 = load i32, i32* @MHL_TX_TMDS_CCTRL, align 4
  %35 = call i32 @mhl_tx_writeb(%struct.sii9234* %33, i32 %34, i32 52)
  %36 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %37 = call i32 @hdmi_writeb(%struct.sii9234* %36, i32 69, i32 68)
  %38 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %39 = call i32 @hdmi_writeb(%struct.sii9234* %38, i32 49, i32 10)
  %40 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %41 = load i32, i32* @HDMI_RX_TMDS0_CCTRL1_REG, align 4
  %42 = call i32 @hdmi_writeb(%struct.sii9234* %40, i32 %41, i32 193)
  %43 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %44 = call i32 @sii9234_clear_error(%struct.sii9234* %43)
  ret i32 %44
}

declare dso_local i32 @hdmi_writeb(%struct.sii9234*, i32, i32) #1

declare dso_local i32 @mhl_tx_writeb(%struct.sii9234*, i32, i32) #1

declare dso_local i32 @sii9234_clear_error(%struct.sii9234*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
