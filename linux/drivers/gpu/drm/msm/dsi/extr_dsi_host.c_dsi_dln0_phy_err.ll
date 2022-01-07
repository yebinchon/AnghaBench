; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_dln0_phy_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_dln0_phy_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32 }

@REG_DSI_DLN0_PHY_ERR = common dso_local global i32 0, align 4
@DSI_DLN0_PHY_ERR_DLN0_ERR_ESC = common dso_local global i32 0, align 4
@DSI_DLN0_PHY_ERR_DLN0_ERR_SYNC_ESC = common dso_local global i32 0, align 4
@DSI_DLN0_PHY_ERR_DLN0_ERR_CONTROL = common dso_local global i32 0, align 4
@DSI_DLN0_PHY_ERR_DLN0_ERR_CONTENTION_LP0 = common dso_local global i32 0, align 4
@DSI_DLN0_PHY_ERR_DLN0_ERR_CONTENTION_LP1 = common dso_local global i32 0, align 4
@DSI_ERR_STATE_DLN0_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi_host*)* @dsi_dln0_phy_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_dln0_phy_err(%struct.msm_dsi_host* %0) #0 {
  %2 = alloca %struct.msm_dsi_host*, align 8
  %3 = alloca i32, align 4
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %2, align 8
  %4 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %5 = load i32, i32* @REG_DSI_DLN0_PHY_ERR, align 4
  %6 = call i32 @dsi_read(%struct.msm_dsi_host* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @DSI_DLN0_PHY_ERR_DLN0_ERR_ESC, align 4
  %9 = load i32, i32* @DSI_DLN0_PHY_ERR_DLN0_ERR_SYNC_ESC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @DSI_DLN0_PHY_ERR_DLN0_ERR_CONTROL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DSI_DLN0_PHY_ERR_DLN0_ERR_CONTENTION_LP0, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DSI_DLN0_PHY_ERR_DLN0_ERR_CONTENTION_LP1, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %7, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %21 = load i32, i32* @REG_DSI_DLN0_PHY_ERR, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @dsi_write(%struct.msm_dsi_host* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @DSI_ERR_STATE_DLN0_PHY, align 4
  %25 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %26 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %19, %1
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
