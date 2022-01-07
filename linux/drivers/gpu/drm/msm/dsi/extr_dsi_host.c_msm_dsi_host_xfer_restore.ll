; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_xfer_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_xfer_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_msg = type { i32 }
%struct.msm_dsi_host = type { %struct.TYPE_3__*, i32, %struct.msm_dsi_cfg_handler* }
%struct.TYPE_3__ = type { i32 }
%struct.msm_dsi_cfg_handler = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.msm_dsi_host*)* }

@DSI_IRQ_MASK_CMD_DMA_DONE = common dso_local global i32 0, align 4
@REG_DSI_CTRL = common dso_local global i32 0, align 4
@MIPI_DSI_MSG_USE_LPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_dsi_host_xfer_restore(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca %struct.mipi_dsi_host*, align 8
  %4 = alloca %struct.mipi_dsi_msg*, align 8
  %5 = alloca %struct.msm_dsi_host*, align 8
  %6 = alloca %struct.msm_dsi_cfg_handler*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %3, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %4, align 8
  %7 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %3, align 8
  %8 = call %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host* %7)
  store %struct.msm_dsi_host* %8, %struct.msm_dsi_host** %5, align 8
  %9 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %10 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %9, i32 0, i32 2
  %11 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** %10, align 8
  store %struct.msm_dsi_cfg_handler* %11, %struct.msm_dsi_cfg_handler** %6, align 8
  %12 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %13 = load i32, i32* @DSI_IRQ_MASK_CMD_DMA_DONE, align 4
  %14 = call i32 @dsi_intr_ctrl(%struct.msm_dsi_host* %12, i32 %13, i32 0)
  %15 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %16 = load i32, i32* @REG_DSI_CTRL, align 4
  %17 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %18 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dsi_write(%struct.msm_dsi_host* %15, i32 %16, i32 %19)
  %21 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %22 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MIPI_DSI_MSG_USE_LPM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %29 = call i32 @dsi_set_tx_power_mode(i32 1, %struct.msm_dsi_host* %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** %6, align 8
  %32 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.msm_dsi_host*)*, i32 (%struct.msm_dsi_host*)** %34, align 8
  %36 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %37 = call i32 %35(%struct.msm_dsi_host* %36)
  %38 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %39 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @pm_runtime_put_autosuspend(i32* %41)
  ret void
}

declare dso_local %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host*) #1

declare dso_local i32 @dsi_intr_ctrl(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @dsi_write(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @dsi_set_tx_power_mode(i32, %struct.msm_dsi_host*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
