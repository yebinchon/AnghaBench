; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_enable_video_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_enable_video_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }

@HDMI_FC_CTRLDUR = common dso_local global i32 0, align 4
@HDMI_FC_EXCTRLDUR = common dso_local global i32 0, align 4
@HDMI_FC_EXCTRLSPAC = common dso_local global i32 0, align 4
@HDMI_FC_CH0PREAM = common dso_local global i32 0, align 4
@HDMI_FC_CH1PREAM = common dso_local global i32 0, align 4
@HDMI_FC_CH2PREAM = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS_HDCPCLK_DISABLE = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS_CSCCLK_DISABLE = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS_AUDCLK_DISABLE = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS_PREPCLK_DISABLE = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS_TMDSCLK_DISABLE = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS_PIXELCLK_DISABLE = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS = common dso_local global i32 0, align 4
@HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_IN_PATH = common dso_local global i32 0, align 4
@HDMI_MC_FLOWCTRL = common dso_local global i32 0, align 4
@HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @dw_hdmi_enable_video_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_enable_video_path(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %3 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %4 = load i32, i32* @HDMI_FC_CTRLDUR, align 4
  %5 = call i32 @hdmi_writeb(%struct.dw_hdmi* %3, i32 12, i32 %4)
  %6 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %7 = load i32, i32* @HDMI_FC_EXCTRLDUR, align 4
  %8 = call i32 @hdmi_writeb(%struct.dw_hdmi* %6, i32 32, i32 %7)
  %9 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %10 = load i32, i32* @HDMI_FC_EXCTRLSPAC, align 4
  %11 = call i32 @hdmi_writeb(%struct.dw_hdmi* %9, i32 1, i32 %10)
  %12 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %13 = load i32, i32* @HDMI_FC_CH0PREAM, align 4
  %14 = call i32 @hdmi_writeb(%struct.dw_hdmi* %12, i32 11, i32 %13)
  %15 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %16 = load i32, i32* @HDMI_FC_CH1PREAM, align 4
  %17 = call i32 @hdmi_writeb(%struct.dw_hdmi* %15, i32 22, i32 %16)
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %19 = load i32, i32* @HDMI_FC_CH2PREAM, align 4
  %20 = call i32 @hdmi_writeb(%struct.dw_hdmi* %18, i32 33, i32 %19)
  %21 = load i32, i32* @HDMI_MC_CLKDIS_HDCPCLK_DISABLE, align 4
  %22 = load i32, i32* @HDMI_MC_CLKDIS_CSCCLK_DISABLE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HDMI_MC_CLKDIS_AUDCLK_DISABLE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HDMI_MC_CLKDIS_PREPCLK_DISABLE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @HDMI_MC_CLKDIS_TMDSCLK_DISABLE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %31 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @HDMI_MC_CLKDIS_PIXELCLK_DISABLE, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %37 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %41 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %42 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HDMI_MC_CLKDIS, align 4
  %45 = call i32 @hdmi_writeb(%struct.dw_hdmi* %40, i32 %43, i32 %44)
  %46 = load i32, i32* @HDMI_MC_CLKDIS_TMDSCLK_DISABLE, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %49 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %53 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %54 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HDMI_MC_CLKDIS, align 4
  %57 = call i32 @hdmi_writeb(%struct.dw_hdmi* %52, i32 %55, i32 %56)
  %58 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %59 = call i64 @is_color_space_conversion(%struct.dw_hdmi* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %1
  %62 = load i32, i32* @HDMI_MC_CLKDIS_CSCCLK_DISABLE, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %65 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %69 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %70 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HDMI_MC_CLKDIS, align 4
  %73 = call i32 @hdmi_writeb(%struct.dw_hdmi* %68, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %61, %1
  %75 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %76 = call i64 @is_color_space_conversion(%struct.dw_hdmi* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %80 = load i32, i32* @HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_IN_PATH, align 4
  %81 = load i32, i32* @HDMI_MC_FLOWCTRL, align 4
  %82 = call i32 @hdmi_writeb(%struct.dw_hdmi* %79, i32 %80, i32 %81)
  br label %88

83:                                               ; preds = %74
  %84 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %85 = load i32, i32* @HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS, align 4
  %86 = load i32, i32* @HDMI_MC_FLOWCTRL, align 4
  %87 = call i32 @hdmi_writeb(%struct.dw_hdmi* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %78
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

declare dso_local i64 @is_color_space_conversion(%struct.dw_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
