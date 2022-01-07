; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_sw_reset_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_sw_reset_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32 }

@REG_DSI_CTRL = common dso_local global i32 0, align 4
@DSI_CTRL_ENABLE = common dso_local global i32 0, align 4
@REG_DSI_CLK_CTRL = common dso_local global i32 0, align 4
@DSI_CLK_CTRL_ENABLE_CLKS = common dso_local global i32 0, align 4
@REG_DSI_RESET = common dso_local global i32 0, align 4
@DSI_RESET_TOGGLE_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi_host*)* @dsi_sw_reset_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_sw_reset_restore(%struct.msm_dsi_host* %0) #0 {
  %2 = alloca %struct.msm_dsi_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %2, align 8
  %5 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %6 = load i32, i32* @REG_DSI_CTRL, align 4
  %7 = call i32 @dsi_read(%struct.msm_dsi_host* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @DSI_CTRL_ENABLE, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %14 = load i32, i32* @REG_DSI_CTRL, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dsi_write(%struct.msm_dsi_host* %13, i32 %14, i32 %15)
  %17 = call i32 (...) @wmb()
  %18 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %19 = load i32, i32* @REG_DSI_CLK_CTRL, align 4
  %20 = load i32, i32* @DSI_CLK_CTRL_ENABLE_CLKS, align 4
  %21 = call i32 @dsi_write(%struct.msm_dsi_host* %18, i32 %19, i32 %20)
  %22 = call i32 (...) @wmb()
  %23 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %24 = load i32, i32* @REG_DSI_RESET, align 4
  %25 = call i32 @dsi_write(%struct.msm_dsi_host* %23, i32 %24, i32 1)
  %26 = load i32, i32* @DSI_RESET_TOGGLE_DELAY_MS, align 4
  %27 = call i32 @msleep(i32 %26)
  %28 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %29 = load i32, i32* @REG_DSI_RESET, align 4
  %30 = call i32 @dsi_write(%struct.msm_dsi_host* %28, i32 %29, i32 0)
  %31 = call i32 (...) @wmb()
  %32 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %33 = load i32, i32* @REG_DSI_CTRL, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @dsi_write(%struct.msm_dsi_host* %32, i32 %33, i32 %34)
  %36 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @dsi_read(%struct.msm_dsi_host*, i32) #1

declare dso_local i32 @dsi_write(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
