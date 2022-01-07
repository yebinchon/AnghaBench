; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_cmd_xfer_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_cmd_xfer_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.msm_dsi_host = type { i32 }

@REG_DSI_DMA_BASE = common dso_local global i32 0, align 4
@REG_DSI_DMA_LEN = common dso_local global i32 0, align 4
@REG_DSI_TRIG_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_dsi_host_cmd_xfer_commit(%struct.mipi_dsi_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_dsi_host*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %9 = call %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host* %8)
  store %struct.msm_dsi_host* %9, %struct.msm_dsi_host** %7, align 8
  %10 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %7, align 8
  %11 = load i32, i32* @REG_DSI_DMA_BASE, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @dsi_write(%struct.msm_dsi_host* %10, i32 %11, i32 %12)
  %14 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %7, align 8
  %15 = load i32, i32* @REG_DSI_DMA_LEN, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dsi_write(%struct.msm_dsi_host* %14, i32 %15, i32 %16)
  %18 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %7, align 8
  %19 = load i32, i32* @REG_DSI_TRIG_DMA, align 4
  %20 = call i32 @dsi_write(%struct.msm_dsi_host* %18, i32 %19, i32 1)
  %21 = call i32 (...) @wmb()
  ret void
}

declare dso_local %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host*) #1

declare dso_local i32 @dsi_write(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
