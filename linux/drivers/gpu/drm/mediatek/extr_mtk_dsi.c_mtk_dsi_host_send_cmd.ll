; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_host_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_host_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i32 }
%struct.mipi_dsi_msg = type { i32 }

@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_dsi*, %struct.mipi_dsi_msg*, i32)* @mtk_dsi_host_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dsi_host_send_cmd(%struct.mtk_dsi* %0, %struct.mipi_dsi_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_dsi*, align 8
  %6 = alloca %struct.mipi_dsi_msg*, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %5, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %9 = call i32 @mtk_dsi_wait_for_idle(%struct.mtk_dsi* %8)
  %10 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @mtk_dsi_irq_data_clear(%struct.mtk_dsi* %10, i32 %11)
  %13 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %14 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %6, align 8
  %15 = call i32 @mtk_dsi_cmdq(%struct.mtk_dsi* %13, %struct.mipi_dsi_msg* %14)
  %16 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %17 = call i32 @mtk_dsi_start(%struct.mtk_dsi* %16)
  %18 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @mtk_dsi_wait_for_irq_done(%struct.mtk_dsi* %18, i32 %19, i32 2000)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ETIME, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @mtk_dsi_wait_for_idle(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_irq_data_clear(%struct.mtk_dsi*, i32) #1

declare dso_local i32 @mtk_dsi_cmdq(%struct.mtk_dsi*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @mtk_dsi_start(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_wait_for_irq_done(%struct.mtk_dsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
