; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mhl_discover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mhl_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }

@REG_DISC_CTRL9 = common dso_local global i32 0, align 4
@BIT_DISC_CTRL9_WAKE_DRVFLT = common dso_local global i32 0, align 4
@BIT_DISC_CTRL9_DISC_PULSE_PROCEED = common dso_local global i32 0, align 4
@REG_DISC_CTRL4 = common dso_local global i32 0, align 4
@VAL_PUP_5K = common dso_local global i32 0, align 4
@VAL_PUP_20K = common dso_local global i32 0, align 4
@REG_CBUS_DISC_INTR0_MASK = common dso_local global i32 0, align 4
@BIT_MHL3_EST_INT = common dso_local global i32 0, align 4
@BIT_MHL_EST_INT = common dso_local global i32 0, align 4
@BIT_NOT_MHL_EST_INT = common dso_local global i32 0, align 4
@BIT_CBUS_MHL3_DISCON_INT = common dso_local global i32 0, align 4
@BIT_CBUS_MHL12_DISCON_INT = common dso_local global i32 0, align 4
@BIT_RGND_READY_INT = common dso_local global i32 0, align 4
@REG_MHL_PLL_CTL0 = common dso_local global i32 0, align 4
@VAL_MHL_PLL_CTL0_HDMI_CLK_RATIO_1X = common dso_local global i32 0, align 4
@BIT_MHL_PLL_CTL0_CRYSTAL_CLK_SEL = common dso_local global i32 0, align 4
@BIT_MHL_PLL_CTL0_ZONE_MASK_OE = common dso_local global i32 0, align 4
@REG_MHL_DP_CTL0 = common dso_local global i32 0, align 4
@BIT_MHL_DP_CTL0_DP_OE = common dso_local global i32 0, align 4
@BIT_MHL_DP_CTL0_TX_OE_OVR = common dso_local global i32 0, align 4
@REG_M3_CTRL = common dso_local global i32 0, align 4
@VAL_M3_CTRL_MHL3_VALUE = common dso_local global i32 0, align 4
@REG_MHL_DP_CTL1 = common dso_local global i32 0, align 4
@REG_MHL_DP_CTL2 = common dso_local global i32 0, align 4
@REG_MHL_DP_CTL3 = common dso_local global i32 0, align 4
@REG_MHL_DP_CTL5 = common dso_local global i32 0, align 4
@REG_MHL_DP_CTL6 = common dso_local global i32 0, align 4
@REG_MHL_DP_CTL7 = common dso_local global i32 0, align 4
@REG_COC_CTLC = common dso_local global i32 0, align 4
@REG_DPD = common dso_local global i32 0, align 4
@BIT_DPD_PWRON_PLL = common dso_local global i32 0, align 4
@BIT_DPD_PDNTX12 = common dso_local global i32 0, align 4
@BIT_DPD_OSC_EN = common dso_local global i32 0, align 4
@BIT_DPD_PWRON_HSIC = common dso_local global i32 0, align 4
@REG_COC_INTR_MASK = common dso_local global i32 0, align 4
@BIT_COC_PLL_LOCK_STATUS_CHANGE = common dso_local global i32 0, align 4
@BIT_COC_CALIBRATION_DONE = common dso_local global i32 0, align 4
@REG_CBUS_INT_1_MASK = common dso_local global i32 0, align 4
@BIT_CBUS_MSC_ABORT_RCVD = common dso_local global i32 0, align 4
@BIT_CBUS_CMD_ABORT = common dso_local global i32 0, align 4
@REG_CBUS_INT_0_MASK = common dso_local global i32 0, align 4
@BIT_CBUS_MSC_MT_DONE = common dso_local global i32 0, align 4
@BIT_CBUS_HPD_CHG = common dso_local global i32 0, align 4
@BIT_CBUS_MSC_MR_WRITE_STAT = common dso_local global i32 0, align 4
@BIT_CBUS_MSC_MR_MSC_MSG = common dso_local global i32 0, align 4
@BIT_CBUS_MSC_MR_WRITE_BURST = common dso_local global i32 0, align 4
@BIT_CBUS_MSC_MR_SET_INT = common dso_local global i32 0, align 4
@BIT_CBUS_MSC_MT_DONE_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_mhl_discover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_mhl_discover(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %3 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %4 = load i32, i32* @REG_DISC_CTRL9, align 4
  %5 = load i32, i32* @BIT_DISC_CTRL9_WAKE_DRVFLT, align 4
  %6 = load i32, i32* @BIT_DISC_CTRL9_DISC_PULSE_PROCEED, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @REG_DISC_CTRL4, align 4
  %9 = load i32, i32* @VAL_PUP_5K, align 4
  %10 = load i32, i32* @VAL_PUP_20K, align 4
  %11 = call i32 @VAL_DISC_CTRL4(i32 %9, i32 %10)
  %12 = load i32, i32* @REG_CBUS_DISC_INTR0_MASK, align 4
  %13 = load i32, i32* @BIT_MHL3_EST_INT, align 4
  %14 = load i32, i32* @BIT_MHL_EST_INT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @BIT_NOT_MHL_EST_INT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @BIT_CBUS_MHL3_DISCON_INT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BIT_CBUS_MHL12_DISCON_INT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BIT_RGND_READY_INT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @REG_MHL_PLL_CTL0, align 4
  %25 = load i32, i32* @VAL_MHL_PLL_CTL0_HDMI_CLK_RATIO_1X, align 4
  %26 = load i32, i32* @BIT_MHL_PLL_CTL0_CRYSTAL_CLK_SEL, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BIT_MHL_PLL_CTL0_ZONE_MASK_OE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @REG_MHL_DP_CTL0, align 4
  %31 = load i32, i32* @BIT_MHL_DP_CTL0_DP_OE, align 4
  %32 = load i32, i32* @BIT_MHL_DP_CTL0_TX_OE_OVR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @REG_M3_CTRL, align 4
  %35 = load i32, i32* @VAL_M3_CTRL_MHL3_VALUE, align 4
  %36 = load i32, i32* @REG_MHL_DP_CTL1, align 4
  %37 = load i32, i32* @REG_MHL_DP_CTL2, align 4
  %38 = load i32, i32* @REG_MHL_DP_CTL3, align 4
  %39 = load i32, i32* @REG_MHL_DP_CTL5, align 4
  %40 = load i32, i32* @REG_MHL_DP_CTL6, align 4
  %41 = load i32, i32* @REG_MHL_DP_CTL7, align 4
  %42 = load i32, i32* @REG_COC_CTLC, align 4
  %43 = load i32, i32* @REG_DPD, align 4
  %44 = load i32, i32* @BIT_DPD_PWRON_PLL, align 4
  %45 = load i32, i32* @BIT_DPD_PDNTX12, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @BIT_DPD_OSC_EN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @BIT_DPD_PWRON_HSIC, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @REG_COC_INTR_MASK, align 4
  %52 = load i32, i32* @BIT_COC_PLL_LOCK_STATUS_CHANGE, align 4
  %53 = load i32, i32* @BIT_COC_CALIBRATION_DONE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @REG_CBUS_INT_1_MASK, align 4
  %56 = load i32, i32* @BIT_CBUS_MSC_ABORT_RCVD, align 4
  %57 = load i32, i32* @BIT_CBUS_CMD_ABORT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @REG_CBUS_INT_0_MASK, align 4
  %60 = load i32, i32* @BIT_CBUS_MSC_MT_DONE, align 4
  %61 = load i32, i32* @BIT_CBUS_HPD_CHG, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @BIT_CBUS_MSC_MR_WRITE_STAT, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @BIT_CBUS_MSC_MR_MSC_MSG, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @BIT_CBUS_MSC_MR_WRITE_BURST, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @BIT_CBUS_MSC_MR_SET_INT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @BIT_CBUS_MSC_MT_DONE_NACK, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @sii8620_write_seq_static(%struct.sii8620* %3, i32 %4, i32 %7, i32 %8, i32 %11, i32 %12, i32 %23, i32 %24, i32 %29, i32 %30, i32 %33, i32 %34, i32 %35, i32 %36, i32 162, i32 %37, i32 3, i32 %38, i32 53, i32 %39, i32 2, i32 %40, i32 2, i32 %41, i32 3, i32 %42, i32 255, i32 %43, i32 %50, i32 %51, i32 %54, i32 %55, i32 %58, i32 %59, i32 %72)
  ret void
}

declare dso_local i32 @sii8620_write_seq_static(%struct.sii8620*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VAL_DISC_CTRL4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
