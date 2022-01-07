; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_sif_clr_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_sif_clr_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi_ddc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi_ddc*, i32, i32)* @sif_clr_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sif_clr_bit(%struct.mtk_hdmi_ddc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_hdmi_ddc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_hdmi_ddc* %0, %struct.mtk_hdmi_ddc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %9, %11
  %13 = call i32 @readl(i64 %12)
  %14 = load i32, i32* %6, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 @writel(i32 %16, i64 %22)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
