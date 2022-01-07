; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i64, i32 }

@HDMI_SYS_CFG1C = common dso_local global i64 0, align 8
@HDMI_RST = common dso_local global i32 0, align 4
@GRL_CFG3 = common dso_local global i32 0, align 4
@CFG3_CONTROL_PACKET_DELAY = common dso_local global i32 0, align 4
@ANLG_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*)* @mtk_hdmi_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_reset(%struct.mtk_hdmi* %0) #0 {
  %2 = alloca %struct.mtk_hdmi*, align 8
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %2, align 8
  %3 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %4 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %7 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HDMI_SYS_CFG1C, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* @HDMI_RST, align 4
  %12 = load i32, i32* @HDMI_RST, align 4
  %13 = call i32 @regmap_update_bits(i32 %5, i64 %10, i32 %11, i32 %12)
  %14 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %15 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %18 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HDMI_SYS_CFG1C, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @HDMI_RST, align 4
  %23 = call i32 @regmap_update_bits(i32 %16, i64 %21, i32 %22, i32 0)
  %24 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %25 = load i32, i32* @GRL_CFG3, align 4
  %26 = load i32, i32* @CFG3_CONTROL_PACKET_DELAY, align 4
  %27 = call i32 @mtk_hdmi_clear_bits(%struct.mtk_hdmi* %24, i32 %25, i32 %26)
  %28 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %29 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %32 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HDMI_SYS_CFG1C, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @ANLG_ON, align 4
  %37 = load i32, i32* @ANLG_ON, align 4
  %38 = call i32 @regmap_update_bits(i32 %30, i64 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @mtk_hdmi_clear_bits(%struct.mtk_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
