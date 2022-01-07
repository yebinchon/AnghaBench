; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_set_pipeline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_set_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.mdp5_crtc_state = type { i32, i32 }
%struct.mdp5_kms = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp5_crtc_set_pipeline(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.mdp5_crtc_state*, align 8
  %4 = alloca %struct.mdp5_kms*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32 %7)
  store %struct.mdp5_crtc_state* %8, %struct.mdp5_crtc_state** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = call %struct.mdp5_kms* @get_kms(%struct.drm_crtc* %9)
  store %struct.mdp5_kms* %10, %struct.mdp5_kms** %4, align 8
  %11 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %12 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %11, i32 0, i32 0
  %13 = call i32 @mdp_irq_update(i32* %12)
  %14 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %3, align 8
  %15 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %3, align 8
  %18 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %17, i32 0, i32 0
  %19 = call i32 @mdp5_ctl_set_pipeline(i32 %16, i32* %18)
  ret void
}

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32) #1

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local i32 @mdp_irq_update(i32*) #1

declare dso_local i32 @mdp5_ctl_set_pipeline(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
