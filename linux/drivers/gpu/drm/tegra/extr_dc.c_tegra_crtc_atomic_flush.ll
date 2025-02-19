; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_crtc_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_crtc_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.tegra_dc_state = type { i32 }
%struct.tegra_dc = type { i32 }

@GENERAL_UPDATE = common dso_local global i32 0, align 4
@DC_CMD_STATE_CONTROL = common dso_local global i32 0, align 4
@GENERAL_ACT_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @tegra_crtc_atomic_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_crtc_atomic_flush(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.tegra_dc_state*, align 8
  %6 = alloca %struct.tegra_dc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tegra_dc_state* @to_dc_state(i32 %10)
  store %struct.tegra_dc_state* %11, %struct.tegra_dc_state** %5, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = call %struct.tegra_dc* @to_tegra_dc(%struct.drm_crtc* %12)
  store %struct.tegra_dc* %13, %struct.tegra_dc** %6, align 8
  %14 = load %struct.tegra_dc_state*, %struct.tegra_dc_state** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_dc_state, %struct.tegra_dc_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = load i32, i32* @GENERAL_UPDATE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @DC_CMD_STATE_CONTROL, align 4
  %23 = call i32 @tegra_dc_writel(%struct.tegra_dc* %20, i32 %21, i32 %22)
  %24 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %25 = load i32, i32* @DC_CMD_STATE_CONTROL, align 4
  %26 = call i32 @tegra_dc_readl(%struct.tegra_dc* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.tegra_dc_state*, %struct.tegra_dc_state** %5, align 8
  %28 = getelementptr inbounds %struct.tegra_dc_state, %struct.tegra_dc_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GENERAL_ACT_REQ, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @DC_CMD_STATE_CONTROL, align 4
  %35 = call i32 @tegra_dc_writel(%struct.tegra_dc* %32, i32 %33, i32 %34)
  %36 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %37 = load i32, i32* @DC_CMD_STATE_CONTROL, align 4
  %38 = call i32 @tegra_dc_readl(%struct.tegra_dc* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  ret void
}

declare dso_local %struct.tegra_dc_state* @to_dc_state(i32) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(%struct.drm_crtc*) #1

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
