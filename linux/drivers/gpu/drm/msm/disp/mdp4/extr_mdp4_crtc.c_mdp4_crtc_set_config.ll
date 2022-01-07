; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.mdp4_crtc = type { i32 }
%struct.mdp4_kms = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp4_crtc_set_config(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdp4_crtc*, align 8
  %6 = alloca %struct.mdp4_kms*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = call %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc* %7)
  store %struct.mdp4_crtc* %8, %struct.mdp4_crtc** %5, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = call %struct.mdp4_kms* @get_kms(%struct.drm_crtc* %9)
  store %struct.mdp4_kms* %10, %struct.mdp4_kms** %6, align 8
  %11 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %12 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %5, align 8
  %13 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @REG_MDP4_DMA_CONFIG(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @mdp4_write(%struct.mdp4_kms* %11, i32 %15, i32 %16)
  ret void
}

declare dso_local %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP4_DMA_CONFIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
