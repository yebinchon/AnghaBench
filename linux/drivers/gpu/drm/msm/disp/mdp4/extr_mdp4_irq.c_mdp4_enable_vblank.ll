; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_irq.c_mdp4_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_irq.c_mdp4_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.mdp4_kms = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp4_enable_vblank(%struct.msm_kms* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.msm_kms*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.mdp4_kms*, align 8
  store %struct.msm_kms* %0, %struct.msm_kms** %3, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %4, align 8
  %6 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %7 = call i32 @to_mdp_kms(%struct.msm_kms* %6)
  %8 = call %struct.mdp4_kms* @to_mdp4_kms(i32 %7)
  store %struct.mdp4_kms* %8, %struct.mdp4_kms** %5, align 8
  %9 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %10 = call i32 @mdp4_enable(%struct.mdp4_kms* %9)
  %11 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %12 = call i32 @to_mdp_kms(%struct.msm_kms* %11)
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %14 = call i32 @mdp4_crtc_vblank(%struct.drm_crtc* %13)
  %15 = call i32 @mdp_update_vblank_mask(i32 %12, i32 %14, i32 1)
  %16 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %17 = call i32 @mdp4_disable(%struct.mdp4_kms* %16)
  ret i32 0
}

declare dso_local %struct.mdp4_kms* @to_mdp4_kms(i32) #1

declare dso_local i32 @to_mdp_kms(%struct.msm_kms*) #1

declare dso_local i32 @mdp4_enable(%struct.mdp4_kms*) #1

declare dso_local i32 @mdp_update_vblank_mask(i32, i32, i32) #1

declare dso_local i32 @mdp4_crtc_vblank(%struct.drm_crtc*) #1

declare dso_local i32 @mdp4_disable(%struct.mdp4_kms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
