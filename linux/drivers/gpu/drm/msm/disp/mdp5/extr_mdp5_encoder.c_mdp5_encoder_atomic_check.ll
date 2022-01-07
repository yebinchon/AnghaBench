; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_encoder_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_encoder_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.mdp5_encoder = type { %struct.mdp5_ctl*, %struct.mdp5_interface* }
%struct.mdp5_ctl = type { i32 }
%struct.mdp5_interface = type { i32 }
%struct.mdp5_crtc_state = type { i32, %struct.TYPE_2__, %struct.mdp5_ctl* }
%struct.TYPE_2__ = type { %struct.mdp5_interface* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @mdp5_encoder_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_encoder_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.mdp5_encoder*, align 8
  %8 = alloca %struct.mdp5_crtc_state*, align 8
  %9 = alloca %struct.mdp5_interface*, align 8
  %10 = alloca %struct.mdp5_ctl*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = call %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder* %11)
  store %struct.mdp5_encoder* %12, %struct.mdp5_encoder** %7, align 8
  %13 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %14 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.drm_crtc_state* %13)
  store %struct.mdp5_crtc_state* %14, %struct.mdp5_crtc_state** %8, align 8
  %15 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %7, align 8
  %16 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %15, i32 0, i32 1
  %17 = load %struct.mdp5_interface*, %struct.mdp5_interface** %16, align 8
  store %struct.mdp5_interface* %17, %struct.mdp5_interface** %9, align 8
  %18 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %7, align 8
  %19 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %18, i32 0, i32 0
  %20 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %19, align 8
  store %struct.mdp5_ctl* %20, %struct.mdp5_ctl** %10, align 8
  %21 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %10, align 8
  %22 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %8, align 8
  %23 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %22, i32 0, i32 2
  store %struct.mdp5_ctl* %21, %struct.mdp5_ctl** %23, align 8
  %24 = load %struct.mdp5_interface*, %struct.mdp5_interface** %9, align 8
  %25 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %8, align 8
  %26 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.mdp5_interface* %24, %struct.mdp5_interface** %27, align 8
  %28 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %29 = call i64 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %8, align 8
  %33 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %3
  ret i32 0
}

declare dso_local %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i64 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
