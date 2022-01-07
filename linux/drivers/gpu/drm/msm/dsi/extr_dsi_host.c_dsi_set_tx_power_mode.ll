; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_set_tx_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_set_tx_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32 }

@REG_DSI_CMD_DMA_CTRL = common dso_local global i32 0, align 4
@DSI_CMD_DMA_CTRL_LOW_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.msm_dsi_host*)* @dsi_set_tx_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_set_tx_power_mode(i32 %0, %struct.msm_dsi_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_dsi_host*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.msm_dsi_host* %1, %struct.msm_dsi_host** %4, align 8
  %6 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %7 = load i32, i32* @REG_DSI_CMD_DMA_CTRL, align 4
  %8 = call i32 @dsi_read(%struct.msm_dsi_host* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @DSI_CMD_DMA_CTRL_LOW_POWER, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @DSI_CMD_DMA_CTRL_LOW_POWER, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %22 = load i32, i32* @REG_DSI_CMD_DMA_CTRL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dsi_write(%struct.msm_dsi_host* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @dsi_read(%struct.msm_dsi_host*, i32) #1

declare dso_local i32 @dsi_write(%struct.msm_dsi_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
