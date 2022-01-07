; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_clk_disable_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_clk_disable_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32* }

@MTK_HDMI_CLK_AUD_BCLK = common dso_local global i64 0, align 8
@MTK_HDMI_CLK_AUD_SPDIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*)* @mtk_hdmi_clk_disable_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_clk_disable_audio(%struct.mtk_hdmi* %0) #0 {
  %2 = alloca %struct.mtk_hdmi*, align 8
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %2, align 8
  %3 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %4 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @MTK_HDMI_CLK_AUD_BCLK, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @clk_disable_unprepare(i32 %8)
  %10 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %11 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @MTK_HDMI_CLK_AUD_SPDIF, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_disable_unprepare(i32 %15)
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
