; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_crtc_state* }
%struct.drm_crtc_state = type { i32, i32 }
%struct.mdp5_encoder = type { %struct.mdp5_interface* }
%struct.mdp5_interface = type { i64 }

@MDP5_INTF_DSI_MODE_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @mdp5_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.mdp5_encoder*, align 8
  %4 = alloca %struct.mdp5_interface*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder* %6)
  store %struct.mdp5_encoder* %7, %struct.mdp5_encoder** %3, align 8
  %8 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %8, i32 0, i32 0
  %10 = load %struct.mdp5_interface*, %struct.mdp5_interface** %9, align 8
  store %struct.mdp5_interface* %10, %struct.mdp5_interface** %4, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %14, align 8
  store %struct.drm_crtc_state* %15, %struct.drm_crtc_state** %5, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %17 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %18 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %17, i32 0, i32 1
  %19 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %20 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %19, i32 0, i32 0
  %21 = call i32 @mdp5_encoder_mode_set(%struct.drm_encoder* %16, i32* %18, i32* %20)
  %22 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %23 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MDP5_INTF_DSI_MODE_COMMAND, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %29 = call i32 @mdp5_cmd_encoder_enable(%struct.drm_encoder* %28)
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %32 = call i32 @mdp5_vid_encoder_enable(%struct.drm_encoder* %31)
  br label %33

33:                                               ; preds = %30, %27
  ret void
}

declare dso_local %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @mdp5_encoder_mode_set(%struct.drm_encoder*, i32*, i32*) #1

declare dso_local i32 @mdp5_cmd_encoder_enable(%struct.drm_encoder*) #1

declare dso_local i32 @mdp5_vid_encoder_enable(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
