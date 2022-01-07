; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_top_thread_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_top_thread_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_dw_hdmi = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@HDMITX_TOP_INTR_HPD_RISE = common dso_local global i32 0, align 4
@HDMITX_TOP_INTR_HPD_FALL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dw_hdmi_top_thread_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_top_thread_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.meson_dw_hdmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.meson_dw_hdmi*
  store %struct.meson_dw_hdmi* %9, %struct.meson_dw_hdmi** %5, align 8
  %10 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %5, align 8
  %11 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @HDMITX_TOP_INTR_HPD_RISE, align 4
  %15 = load i32, i32* @HDMITX_TOP_INTR_HPD_FALL, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @HDMITX_TOP_INTR_HPD_RISE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %5, align 8
  %27 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @dw_hdmi_setup_rx_sense(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %5, align 8
  %33 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @drm_helper_hpd_irq_event(i32 %35)
  br label %37

37:                                               ; preds = %25, %2
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local i32 @dw_hdmi_setup_rx_sense(i32, i32, i32) #1

declare dso_local i32 @drm_helper_hpd_irq_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
