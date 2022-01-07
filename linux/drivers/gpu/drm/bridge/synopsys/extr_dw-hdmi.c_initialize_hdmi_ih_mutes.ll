; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_initialize_hdmi_ih_mutes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_initialize_hdmi_ih_mutes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }

@HDMI_IH_MUTE = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_MUTE_ALL_INTERRUPT = common dso_local global i32 0, align 4
@HDMI_VP_MASK = common dso_local global i32 0, align 4
@HDMI_FC_MASK0 = common dso_local global i32 0, align 4
@HDMI_FC_MASK1 = common dso_local global i32 0, align 4
@HDMI_FC_MASK2 = common dso_local global i32 0, align 4
@HDMI_PHY_MASK0 = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_INT_ADDR = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_CTLINT_ADDR = common dso_local global i32 0, align 4
@HDMI_AUD_INT = common dso_local global i32 0, align 4
@HDMI_AUD_SPDIFINT = common dso_local global i32 0, align 4
@HDMI_AUD_HBR_MASK = common dso_local global i32 0, align 4
@HDMI_GP_MASK = common dso_local global i32 0, align 4
@HDMI_A_APIINTMSK = common dso_local global i32 0, align 4
@HDMI_I2CM_INT = common dso_local global i32 0, align 4
@HDMI_I2CM_CTLINT = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_FC_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_FC_STAT1 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_FC_STAT2 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_AS_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_PHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_I2CM_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_CEC_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_VP_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_I2CMPHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_AHBDMAAUD_STAT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @initialize_hdmi_ih_mutes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_hdmi_ih_mutes(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  %3 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %4 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %5 = load i32, i32* @HDMI_IH_MUTE, align 4
  %6 = call i32 @hdmi_readb(%struct.dw_hdmi* %4, i32 %5)
  %7 = load i32, i32* @HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @HDMI_IH_MUTE_MUTE_ALL_INTERRUPT, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @HDMI_IH_MUTE, align 4
  %14 = call i32 @hdmi_writeb(%struct.dw_hdmi* %11, i32 %12, i32 %13)
  %15 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %16 = load i32, i32* @HDMI_VP_MASK, align 4
  %17 = call i32 @hdmi_writeb(%struct.dw_hdmi* %15, i32 255, i32 %16)
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %19 = load i32, i32* @HDMI_FC_MASK0, align 4
  %20 = call i32 @hdmi_writeb(%struct.dw_hdmi* %18, i32 255, i32 %19)
  %21 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %22 = load i32, i32* @HDMI_FC_MASK1, align 4
  %23 = call i32 @hdmi_writeb(%struct.dw_hdmi* %21, i32 255, i32 %22)
  %24 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %25 = load i32, i32* @HDMI_FC_MASK2, align 4
  %26 = call i32 @hdmi_writeb(%struct.dw_hdmi* %24, i32 255, i32 %25)
  %27 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %28 = load i32, i32* @HDMI_PHY_MASK0, align 4
  %29 = call i32 @hdmi_writeb(%struct.dw_hdmi* %27, i32 255, i32 %28)
  %30 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %31 = load i32, i32* @HDMI_PHY_I2CM_INT_ADDR, align 4
  %32 = call i32 @hdmi_writeb(%struct.dw_hdmi* %30, i32 255, i32 %31)
  %33 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %34 = load i32, i32* @HDMI_PHY_I2CM_CTLINT_ADDR, align 4
  %35 = call i32 @hdmi_writeb(%struct.dw_hdmi* %33, i32 255, i32 %34)
  %36 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %37 = load i32, i32* @HDMI_AUD_INT, align 4
  %38 = call i32 @hdmi_writeb(%struct.dw_hdmi* %36, i32 255, i32 %37)
  %39 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %40 = load i32, i32* @HDMI_AUD_SPDIFINT, align 4
  %41 = call i32 @hdmi_writeb(%struct.dw_hdmi* %39, i32 255, i32 %40)
  %42 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %43 = load i32, i32* @HDMI_AUD_HBR_MASK, align 4
  %44 = call i32 @hdmi_writeb(%struct.dw_hdmi* %42, i32 255, i32 %43)
  %45 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %46 = load i32, i32* @HDMI_GP_MASK, align 4
  %47 = call i32 @hdmi_writeb(%struct.dw_hdmi* %45, i32 255, i32 %46)
  %48 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %49 = load i32, i32* @HDMI_A_APIINTMSK, align 4
  %50 = call i32 @hdmi_writeb(%struct.dw_hdmi* %48, i32 255, i32 %49)
  %51 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %52 = load i32, i32* @HDMI_I2CM_INT, align 4
  %53 = call i32 @hdmi_writeb(%struct.dw_hdmi* %51, i32 255, i32 %52)
  %54 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %55 = load i32, i32* @HDMI_I2CM_CTLINT, align 4
  %56 = call i32 @hdmi_writeb(%struct.dw_hdmi* %54, i32 255, i32 %55)
  %57 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %58 = load i32, i32* @HDMI_IH_MUTE_FC_STAT0, align 4
  %59 = call i32 @hdmi_writeb(%struct.dw_hdmi* %57, i32 255, i32 %58)
  %60 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %61 = load i32, i32* @HDMI_IH_MUTE_FC_STAT1, align 4
  %62 = call i32 @hdmi_writeb(%struct.dw_hdmi* %60, i32 255, i32 %61)
  %63 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %64 = load i32, i32* @HDMI_IH_MUTE_FC_STAT2, align 4
  %65 = call i32 @hdmi_writeb(%struct.dw_hdmi* %63, i32 255, i32 %64)
  %66 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %67 = load i32, i32* @HDMI_IH_MUTE_AS_STAT0, align 4
  %68 = call i32 @hdmi_writeb(%struct.dw_hdmi* %66, i32 255, i32 %67)
  %69 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %70 = load i32, i32* @HDMI_IH_MUTE_PHY_STAT0, align 4
  %71 = call i32 @hdmi_writeb(%struct.dw_hdmi* %69, i32 255, i32 %70)
  %72 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %73 = load i32, i32* @HDMI_IH_MUTE_I2CM_STAT0, align 4
  %74 = call i32 @hdmi_writeb(%struct.dw_hdmi* %72, i32 255, i32 %73)
  %75 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %76 = load i32, i32* @HDMI_IH_MUTE_CEC_STAT0, align 4
  %77 = call i32 @hdmi_writeb(%struct.dw_hdmi* %75, i32 255, i32 %76)
  %78 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %79 = load i32, i32* @HDMI_IH_MUTE_VP_STAT0, align 4
  %80 = call i32 @hdmi_writeb(%struct.dw_hdmi* %78, i32 255, i32 %79)
  %81 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %82 = load i32, i32* @HDMI_IH_MUTE_I2CMPHY_STAT0, align 4
  %83 = call i32 @hdmi_writeb(%struct.dw_hdmi* %81, i32 255, i32 %82)
  %84 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %85 = load i32, i32* @HDMI_IH_MUTE_AHBDMAAUD_STAT0, align 4
  %86 = call i32 @hdmi_writeb(%struct.dw_hdmi* %84, i32 255, i32 %85)
  %87 = load i32, i32* @HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT, align 4
  %88 = load i32, i32* @HDMI_IH_MUTE_MUTE_ALL_INTERRUPT, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %3, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %3, align 4
  %93 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @HDMI_IH_MUTE, align 4
  %96 = call i32 @hdmi_writeb(%struct.dw_hdmi* %93, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @hdmi_readb(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
