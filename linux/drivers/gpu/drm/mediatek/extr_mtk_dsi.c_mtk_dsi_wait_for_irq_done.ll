; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_wait_for_irq_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_wait_for_irq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Wait DSI IRQ(0x%08x) Timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mtk_dsi*, i32, i32)* @mtk_dsi_wait_for_irq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mtk_dsi_wait_for_irq_done(%struct.mtk_dsi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_dsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @msecs_to_jiffies(i32 %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %15 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @wait_event_interruptible_timeout(i32 %13, i32 %18, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @DRM_WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %27 = call i32 @mtk_dsi_enable(%struct.mtk_dsi* %26)
  %28 = load %struct.mtk_dsi*, %struct.mtk_dsi** %4, align 8
  %29 = call i32 @mtk_dsi_reset_engine(%struct.mtk_dsi* %28)
  br label %30

30:                                               ; preds = %23, %3
  %31 = load i64, i64* %7, align 8
  ret i64 %31
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @DRM_WARN(i8*, i32) #1

declare dso_local i32 @mtk_dsi_enable(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_reset_engine(%struct.mtk_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
