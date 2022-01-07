; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_send_av_unmute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_send_av_unmute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }

@GRL_CFG4 = common dso_local global i32 0, align 4
@CFG4_AV_UNMUTE_EN = common dso_local global i32 0, align 4
@CFG4_AV_UNMUTE_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*)* @mtk_hdmi_hw_send_av_unmute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_send_av_unmute(%struct.mtk_hdmi* %0) #0 {
  %2 = alloca %struct.mtk_hdmi*, align 8
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %2, align 8
  %3 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %4 = load i32, i32* @GRL_CFG4, align 4
  %5 = load i32, i32* @CFG4_AV_UNMUTE_EN, align 4
  %6 = load i32, i32* @CFG4_AV_UNMUTE_EN, align 4
  %7 = load i32, i32* @CFG4_AV_UNMUTE_SET, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @mtk_hdmi_mask(%struct.mtk_hdmi* %3, i32 %4, i32 %5, i32 %8)
  %10 = call i32 @usleep_range(i32 2000, i32 4000)
  %11 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %2, align 8
  %12 = load i32, i32* @GRL_CFG4, align 4
  %13 = load i32, i32* @CFG4_AV_UNMUTE_SET, align 4
  %14 = load i32, i32* @CFG4_AV_UNMUTE_EN, align 4
  %15 = load i32, i32* @CFG4_AV_UNMUTE_SET, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @mtk_hdmi_mask(%struct.mtk_hdmi* %11, i32 %12, i32 %13, i32 %16)
  ret void
}

declare dso_local i32 @mtk_hdmi_mask(%struct.mtk_hdmi*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
