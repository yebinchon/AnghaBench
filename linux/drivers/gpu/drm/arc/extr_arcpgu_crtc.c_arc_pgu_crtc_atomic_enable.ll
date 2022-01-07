; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_crtc.c_arc_pgu_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_crtc.c_arc_pgu_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.arcpgu_drm_private = type { i32 }

@ARCPGU_REG_CTRL = common dso_local global i32 0, align 4
@ARCPGU_CTRL_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @arc_pgu_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_pgu_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.arcpgu_drm_private*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = call %struct.arcpgu_drm_private* @crtc_to_arcpgu_priv(%struct.drm_crtc* %6)
  store %struct.arcpgu_drm_private* %7, %struct.arcpgu_drm_private** %5, align 8
  %8 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %9 = getelementptr inbounds %struct.arcpgu_drm_private, %struct.arcpgu_drm_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  %12 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %13 = load i32, i32* @ARCPGU_REG_CTRL, align 4
  %14 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %15 = load i32, i32* @ARCPGU_REG_CTRL, align 4
  %16 = call i32 @arc_pgu_read(%struct.arcpgu_drm_private* %14, i32 %15)
  %17 = load i32, i32* @ARCPGU_CTRL_ENABLE_MASK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @arc_pgu_write(%struct.arcpgu_drm_private* %12, i32 %13, i32 %18)
  ret void
}

declare dso_local %struct.arcpgu_drm_private* @crtc_to_arcpgu_priv(%struct.drm_crtc*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @arc_pgu_write(%struct.arcpgu_drm_private*, i32, i32) #1

declare dso_local i32 @arc_pgu_read(%struct.arcpgu_drm_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
