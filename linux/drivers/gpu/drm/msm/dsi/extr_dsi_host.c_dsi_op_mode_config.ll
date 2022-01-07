; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_op_mode_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_op_mode_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32 }

@REG_DSI_CTRL = common dso_local global i32 0, align 4
@DSI_CTRL_ENABLE = common dso_local global i32 0, align 4
@DSI_CTRL_VID_MODE_EN = common dso_local global i32 0, align 4
@DSI_CTRL_CMD_MODE_EN = common dso_local global i32 0, align 4
@DSI_IRQ_MASK_CMD_MDP_DONE = common dso_local global i32 0, align 4
@DSI_IRQ_MASK_VIDEO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi_host*, i32, i32)* @dsi_op_mode_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_op_mode_config(%struct.msm_dsi_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msm_dsi_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %9 = load i32, i32* @REG_DSI_CTRL, align 4
  %10 = call i32 @dsi_read(%struct.msm_dsi_host* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @DSI_CTRL_ENABLE, align 4
  %15 = load i32, i32* @DSI_CTRL_VID_MODE_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DSI_CTRL_CMD_MODE_EN, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %23 = load i32, i32* @DSI_IRQ_MASK_CMD_MDP_DONE, align 4
  %24 = load i32, i32* @DSI_IRQ_MASK_VIDEO_DONE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @dsi_intr_ctrl(%struct.msm_dsi_host* %22, i32 %25, i32 0)
  br label %45

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @DSI_CTRL_VID_MODE_EN, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %41

34:                                               ; preds = %27
  %35 = load i32, i32* @DSI_CTRL_CMD_MODE_EN, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %39 = load i32, i32* @DSI_IRQ_MASK_CMD_MDP_DONE, align 4
  %40 = call i32 @dsi_intr_ctrl(%struct.msm_dsi_host* %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32, i32* @DSI_CTRL_ENABLE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %13
  %46 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %47 = load i32, i32* @REG_DSI_CTRL, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dsi_write(%struct.msm_dsi_host* %46, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @dsi_read(%struct.msm_dsi_host*, i32) #1

declare dso_local i32 @dsi_intr_ctrl(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @dsi_write(%struct.msm_dsi_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
