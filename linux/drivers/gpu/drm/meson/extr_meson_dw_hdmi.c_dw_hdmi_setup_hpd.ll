; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_setup_hpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_setup_hpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.meson_dw_hdmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.meson_dw_hdmi*, i32, i32)* }

@HDMITX_TOP_HPD_FILTER = common dso_local global i32 0, align 4
@HDMITX_TOP_INTR_STAT_CLR = common dso_local global i32 0, align 4
@HDMITX_TOP_INTR_HPD_RISE = common dso_local global i32 0, align 4
@HDMITX_TOP_INTR_HPD_FALL = common dso_local global i32 0, align 4
@HDMITX_TOP_INTR_MASKN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*, i8*)* @dw_hdmi_setup_hpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_setup_hpd(%struct.dw_hdmi* %0, i8* %1) #0 {
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.meson_dw_hdmi*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.meson_dw_hdmi*
  store %struct.meson_dw_hdmi* %7, %struct.meson_dw_hdmi** %5, align 8
  %8 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %5, align 8
  %9 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.meson_dw_hdmi*, i32, i32)*, i32 (%struct.meson_dw_hdmi*, i32, i32)** %11, align 8
  %13 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %5, align 8
  %14 = load i32, i32* @HDMITX_TOP_HPD_FILTER, align 4
  %15 = call i32 %12(%struct.meson_dw_hdmi* %13, i32 %14, i32 41120)
  %16 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %5, align 8
  %17 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.meson_dw_hdmi*, i32, i32)*, i32 (%struct.meson_dw_hdmi*, i32, i32)** %19, align 8
  %21 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %5, align 8
  %22 = load i32, i32* @HDMITX_TOP_INTR_STAT_CLR, align 4
  %23 = load i32, i32* @HDMITX_TOP_INTR_HPD_RISE, align 4
  %24 = load i32, i32* @HDMITX_TOP_INTR_HPD_FALL, align 4
  %25 = or i32 %23, %24
  %26 = call i32 %20(%struct.meson_dw_hdmi* %21, i32 %22, i32 %25)
  %27 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %5, align 8
  %28 = load i32, i32* @HDMITX_TOP_INTR_MASKN, align 4
  %29 = load i32, i32* @HDMITX_TOP_INTR_HPD_RISE, align 4
  %30 = load i32, i32* @HDMITX_TOP_INTR_HPD_FALL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @HDMITX_TOP_INTR_HPD_RISE, align 4
  %33 = load i32, i32* @HDMITX_TOP_INTR_HPD_FALL, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @dw_hdmi_top_write_bits(%struct.meson_dw_hdmi* %27, i32 %28, i32 %31, i32 %34)
  ret void
}

declare dso_local i32 @dw_hdmi_top_write_bits(%struct.meson_dw_hdmi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
