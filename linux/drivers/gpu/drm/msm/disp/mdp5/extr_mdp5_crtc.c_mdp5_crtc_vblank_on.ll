; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_vblank_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_vblank_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.mdp5_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mdp5_interface* }
%struct.mdp5_interface = type { i64 }

@MDP5_INTF_DSI_MODE_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mdp5_crtc_vblank_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_crtc_vblank_on(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.mdp5_crtc_state*, align 8
  %4 = alloca %struct.mdp5_interface*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32 %8)
  store %struct.mdp5_crtc_state* %9, %struct.mdp5_crtc_state** %3, align 8
  %10 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %3, align 8
  %11 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mdp5_interface*, %struct.mdp5_interface** %12, align 8
  store %struct.mdp5_interface* %13, %struct.mdp5_interface** %4, align 8
  %14 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %15 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MDP5_INTF_DSI_MODE_COMMAND, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 -1
  store i32 %20, i32* %5, align 4
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @drm_crtc_set_max_vblank_count(%struct.drm_crtc* %21, i32 %22)
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %25 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %24)
  ret void
}

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32) #1

declare dso_local i32 @drm_crtc_set_max_vblank_count(%struct.drm_crtc*, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
