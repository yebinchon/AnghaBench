; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_read_hpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_read_hpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.meson_dw_hdmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.meson_dw_hdmi*, i32)* }

@HDMITX_TOP_STAT0 = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*, i8*)* @dw_hdmi_read_hpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_read_hpd(%struct.dw_hdmi* %0, i8* %1) #0 {
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
  %12 = load i32 (%struct.meson_dw_hdmi*, i32)*, i32 (%struct.meson_dw_hdmi*, i32)** %11, align 8
  %13 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %5, align 8
  %14 = load i32, i32* @HDMITX_TOP_STAT0, align 4
  %15 = call i32 %12(%struct.meson_dw_hdmi* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @connector_status_connected, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @connector_status_disconnected, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
