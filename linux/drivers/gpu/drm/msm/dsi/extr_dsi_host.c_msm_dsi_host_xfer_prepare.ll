; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_xfer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_xfer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_msg = type { i32 }
%struct.msm_dsi_host = type { i32, %struct.TYPE_3__*, %struct.msm_dsi_cfg_handler* }
%struct.TYPE_3__ = type { i32 }
%struct.msm_dsi_cfg_handler = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.msm_dsi_host*)* }

@MIPI_DSI_MSG_USE_LPM = common dso_local global i32 0, align 4
@REG_DSI_CTRL = common dso_local global i32 0, align 4
@DSI_CTRL_CMD_MODE_EN = common dso_local global i32 0, align 4
@DSI_CTRL_ENABLE = common dso_local global i32 0, align 4
@DSI_IRQ_MASK_CMD_DMA_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_dsi_host_xfer_prepare(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_msg* %1) #0 {
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
  %13 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @pm_runtime_get_sync(i32* %15)
  %17 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** %6, align 8
  %18 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.msm_dsi_host*)*, i32 (%struct.msm_dsi_host*)** %20, align 8
  %22 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %23 = call i32 %21(%struct.msm_dsi_host* %22)
  %24 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MIPI_DSI_MSG_USE_LPM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %32 = call i32 @dsi_set_tx_power_mode(i32 0, %struct.msm_dsi_host* %31)
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %35 = load i32, i32* @REG_DSI_CTRL, align 4
  %36 = call i32 @dsi_read(%struct.msm_dsi_host* %34, i32 %35)
  %37 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %38 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %40 = load i32, i32* @REG_DSI_CTRL, align 4
  %41 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %42 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DSI_CTRL_CMD_MODE_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @DSI_CTRL_ENABLE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @dsi_write(%struct.msm_dsi_host* %39, i32 %40, i32 %47)
  %49 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %50 = load i32, i32* @DSI_IRQ_MASK_CMD_DMA_DONE, align 4
  %51 = call i32 @dsi_intr_ctrl(%struct.msm_dsi_host* %49, i32 %50, i32 1)
  ret i32 0
}

declare dso_local %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @dsi_set_tx_power_mode(i32, %struct.msm_dsi_host*) #1

declare dso_local i32 @dsi_read(%struct.msm_dsi_host*, i32) #1

declare dso_local i32 @dsi_write(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @dsi_intr_ctrl(%struct.msm_dsi_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
