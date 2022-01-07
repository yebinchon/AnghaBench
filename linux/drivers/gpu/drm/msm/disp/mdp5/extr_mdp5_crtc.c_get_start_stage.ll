; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_get_start_stage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_get_start_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.mdp5_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@STAGE0 = common dso_local global i32 0, align 4
@STAGE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @get_start_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_start_stage(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_plane_state*, align 8
  %8 = alloca %struct.mdp5_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %7, align 8
  %9 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %10 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.drm_crtc_state* %9)
  store %struct.mdp5_crtc_state* %10, %struct.mdp5_crtc_state** %8, align 8
  %11 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %8, align 8
  %12 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @STAGE0, align 4
  store i32 %17, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %21 = call i32 @is_fullscreen(%struct.drm_crtc_state* %19, %struct.drm_plane_state* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @STAGE0, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @STAGE_BASE, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %23, %16
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @is_fullscreen(%struct.drm_crtc_state*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
