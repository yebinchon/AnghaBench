; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }

@HDMI_IH_I2CMPHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_ADDRESS_ADDR = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_DATAO_1_ADDR = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_DATAO_0_ADDR = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_OPERATION_ADDR_WRITE = common dso_local global i8 0, align 1
@HDMI_PHY_I2CM_OPERATION_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %0, i16 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.dw_hdmi*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8 %2, i8* %6, align 1
  %7 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %8 = load i32, i32* @HDMI_IH_I2CMPHY_STAT0, align 4
  %9 = call i32 @hdmi_writeb(%struct.dw_hdmi* %7, i8 zeroext -1, i32 %8)
  %10 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %11 = load i8, i8* %6, align 1
  %12 = load i32, i32* @HDMI_PHY_I2CM_ADDRESS_ADDR, align 4
  %13 = call i32 @hdmi_writeb(%struct.dw_hdmi* %10, i8 zeroext %11, i32 %12)
  %14 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = ashr i32 %16, 8
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* @HDMI_PHY_I2CM_DATAO_1_ADDR, align 4
  %20 = call i32 @hdmi_writeb(%struct.dw_hdmi* %14, i8 zeroext %18, i32 %19)
  %21 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %22 = load i16, i16* %5, align 2
  %23 = zext i16 %22 to i32
  %24 = ashr i32 %23, 0
  %25 = trunc i32 %24 to i8
  %26 = load i32, i32* @HDMI_PHY_I2CM_DATAO_0_ADDR, align 4
  %27 = call i32 @hdmi_writeb(%struct.dw_hdmi* %21, i8 zeroext %25, i32 %26)
  %28 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %29 = load i8, i8* @HDMI_PHY_I2CM_OPERATION_ADDR_WRITE, align 1
  %30 = load i32, i32* @HDMI_PHY_I2CM_OPERATION_ADDR, align 4
  %31 = call i32 @hdmi_writeb(%struct.dw_hdmi* %28, i8 zeroext %29, i32 %30)
  %32 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %33 = call i32 @hdmi_phy_wait_i2c_done(%struct.dw_hdmi* %32, i32 1000)
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i8 zeroext, i32) #1

declare dso_local i32 @hdmi_phy_wait_i2c_done(%struct.dw_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
