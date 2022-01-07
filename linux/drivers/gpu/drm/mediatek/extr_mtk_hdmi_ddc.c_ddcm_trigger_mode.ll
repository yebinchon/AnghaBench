; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_ddcm_trigger_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_ddcm_trigger_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi_ddc = type { i64 }

@DDC_DDCMCTL1 = common dso_local global i64 0, align 8
@DDCM_SIF_MODE_MASK = common dso_local global i32 0, align 4
@DDCM_SIF_MODE_OFFSET = common dso_local global i32 0, align 4
@DDCM_TRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi_ddc*, i32)* @ddcm_trigger_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddcm_trigger_mode(%struct.mtk_hdmi_ddc* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_hdmi_ddc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_hdmi_ddc* %0, %struct.mtk_hdmi_ddc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %3, align 8
  %7 = load i64, i64* @DDC_DDCMCTL1, align 8
  %8 = load i32, i32* @DDCM_SIF_MODE_MASK, align 4
  %9 = load i32, i32* @DDCM_SIF_MODE_OFFSET, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @sif_write_mask(%struct.mtk_hdmi_ddc* %6, i64 %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %3, align 8
  %13 = load i64, i64* @DDC_DDCMCTL1, align 8
  %14 = load i32, i32* @DDCM_TRI, align 4
  %15 = call i32 @sif_set_bit(%struct.mtk_hdmi_ddc* %12, i64 %13, i32 %14)
  %16 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DDC_DDCMCTL1, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DDCM_TRI, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @DDCM_TRI, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @readl_poll_timeout(i64 %20, i32 %21, i32 %27, i32 4, i32 20000)
  ret void
}

declare dso_local i32 @sif_write_mask(%struct.mtk_hdmi_ddc*, i64, i32, i32, i32) #1

declare dso_local i32 @sif_set_bit(%struct.mtk_hdmi_ddc*, i64, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
