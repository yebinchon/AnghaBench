; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_bridge_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_bridge_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.mtk_hdmi = type { i32, i32*, i32 }

@MTK_HDMI_CLK_HDMI_PIXEL = common dso_local global i64 0, align 8
@MTK_HDMI_CLK_HDMI_PLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @mtk_hdmi_bridge_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_bridge_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.mtk_hdmi*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %4 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %5 = call %struct.mtk_hdmi* @hdmi_ctx_from_bridge(%struct.drm_bridge* %4)
  store %struct.mtk_hdmi* %5, %struct.mtk_hdmi** %3, align 8
  %6 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @phy_power_off(i32 %14)
  %16 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @MTK_HDMI_CLK_HDMI_PIXEL, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_disable_unprepare(i32 %21)
  %23 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %24 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @MTK_HDMI_CLK_HDMI_PLL, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable_unprepare(i32 %28)
  %30 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.mtk_hdmi* @hdmi_ctx_from_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
