; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_dwc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_dwc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_dw_hdmi = type { i64 }

@reg_lock = common dso_local global i32 0, align 4
@HDMITX_DWC_ADDR_REG = common dso_local global i64 0, align 8
@HDMITX_DWC_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_dw_hdmi*, i32)* @dw_hdmi_dwc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_dwc_read(%struct.meson_dw_hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.meson_dw_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.meson_dw_hdmi* %0, %struct.meson_dw_hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @reg_lock, i64 %7)
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 65535
  %11 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %12 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HDMITX_DWC_ADDR_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 65535
  %19 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %20 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HDMITX_DWC_ADDR_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %26 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HDMITX_DWC_DATA_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %32 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HDMITX_DWC_DATA_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* @reg_lock, i64 %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
