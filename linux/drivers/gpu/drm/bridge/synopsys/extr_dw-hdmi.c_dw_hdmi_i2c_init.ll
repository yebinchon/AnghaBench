; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }

@HDMI_PHY_I2CM_INT_ADDR_DONE_POL = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_INT_ADDR = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_CTLINT_ADDR_NAC_POL = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_CTLINT_ADDR_ARBITRATION_POL = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_CTLINT_ADDR = common dso_local global i32 0, align 4
@HDMI_I2CM_SOFTRSTZ = common dso_local global i32 0, align 4
@HDMI_I2CM_DIV = common dso_local global i32 0, align 4
@HDMI_I2CM_INT_DONE_POL = common dso_local global i32 0, align 4
@HDMI_I2CM_INT = common dso_local global i32 0, align 4
@HDMI_I2CM_CTLINT_NAC_POL = common dso_local global i32 0, align 4
@HDMI_I2CM_CTLINT_ARB_POL = common dso_local global i32 0, align 4
@HDMI_I2CM_CTLINT = common dso_local global i32 0, align 4
@HDMI_IH_I2CM_STAT0_ERROR = common dso_local global i32 0, align 4
@HDMI_IH_I2CM_STAT0_DONE = common dso_local global i32 0, align 4
@HDMI_IH_I2CM_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_I2CM_STAT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @dw_hdmi_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_i2c_init(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %3 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %4 = load i32, i32* @HDMI_PHY_I2CM_INT_ADDR_DONE_POL, align 4
  %5 = load i32, i32* @HDMI_PHY_I2CM_INT_ADDR, align 4
  %6 = call i32 @hdmi_writeb(%struct.dw_hdmi* %3, i32 %4, i32 %5)
  %7 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %8 = load i32, i32* @HDMI_PHY_I2CM_CTLINT_ADDR_NAC_POL, align 4
  %9 = load i32, i32* @HDMI_PHY_I2CM_CTLINT_ADDR_ARBITRATION_POL, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @HDMI_PHY_I2CM_CTLINT_ADDR, align 4
  %12 = call i32 @hdmi_writeb(%struct.dw_hdmi* %7, i32 %10, i32 %11)
  %13 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %14 = load i32, i32* @HDMI_I2CM_SOFTRSTZ, align 4
  %15 = call i32 @hdmi_writeb(%struct.dw_hdmi* %13, i32 0, i32 %14)
  %16 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %17 = load i32, i32* @HDMI_I2CM_DIV, align 4
  %18 = call i32 @hdmi_writeb(%struct.dw_hdmi* %16, i32 0, i32 %17)
  %19 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %20 = load i32, i32* @HDMI_I2CM_INT_DONE_POL, align 4
  %21 = load i32, i32* @HDMI_I2CM_INT, align 4
  %22 = call i32 @hdmi_writeb(%struct.dw_hdmi* %19, i32 %20, i32 %21)
  %23 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %24 = load i32, i32* @HDMI_I2CM_CTLINT_NAC_POL, align 4
  %25 = load i32, i32* @HDMI_I2CM_CTLINT_ARB_POL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @HDMI_I2CM_CTLINT, align 4
  %28 = call i32 @hdmi_writeb(%struct.dw_hdmi* %23, i32 %26, i32 %27)
  %29 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %30 = load i32, i32* @HDMI_IH_I2CM_STAT0_ERROR, align 4
  %31 = load i32, i32* @HDMI_IH_I2CM_STAT0_DONE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @HDMI_IH_I2CM_STAT0, align 4
  %34 = call i32 @hdmi_writeb(%struct.dw_hdmi* %29, i32 %32, i32 %33)
  %35 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %36 = load i32, i32* @HDMI_IH_I2CM_STAT0_ERROR, align 4
  %37 = load i32, i32* @HDMI_IH_I2CM_STAT0_DONE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @HDMI_IH_MUTE_I2CM_STAT0, align 4
  %40 = call i32 @hdmi_writeb(%struct.dw_hdmi* %35, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
