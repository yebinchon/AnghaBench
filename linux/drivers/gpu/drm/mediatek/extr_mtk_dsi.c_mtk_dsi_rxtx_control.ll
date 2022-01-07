; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_rxtx_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_rxtx_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i32, i32, i64 }

@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_EOT_PACKET = common dso_local global i32 0, align 4
@DSI_TXRX_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dsi*)* @mtk_dsi_rxtx_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dsi_rxtx_control(%struct.mtk_dsi* %0) #0 {
  %2 = alloca %struct.mtk_dsi*, align 8
  %3 = alloca i32, align 4
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %2, align 8
  %4 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %11 [
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
  ]

7:                                                ; preds = %1
  store i32 4, i32* %3, align 4
  br label %12

8:                                                ; preds = %1
  store i32 12, i32* %3, align 4
  br label %12

9:                                                ; preds = %1
  store i32 28, i32* %3, align 4
  br label %12

10:                                               ; preds = %1
  store i32 60, i32* %3, align 4
  br label %12

11:                                               ; preds = %1
  store i32 60, i32* %3, align 4
  br label %12

12:                                               ; preds = %11, %10, %9, %8, %7
  %13 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %14 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %17 = and i32 %15, %16
  %18 = shl i32 %17, 6
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %22 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MIPI_DSI_MODE_EOT_PACKET, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 3
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %31 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DSI_TXRX_CTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
