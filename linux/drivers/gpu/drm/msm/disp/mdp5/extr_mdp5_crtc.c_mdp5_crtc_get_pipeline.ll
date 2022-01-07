; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_get_pipeline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_get_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_pipeline = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.mdp5_crtc_state = type { %struct.mdp5_pipeline }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mdp5_pipeline* @mdp5_crtc_get_pipeline(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.mdp5_pipeline*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.mdp5_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %6 = icmp ne %struct.drm_crtc* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.mdp5_pipeline* @ERR_PTR(i32 %13)
  store %struct.mdp5_pipeline* %14, %struct.mdp5_pipeline** %2, align 8
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32 %18)
  store %struct.mdp5_crtc_state* %19, %struct.mdp5_crtc_state** %4, align 8
  %20 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %4, align 8
  %21 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %20, i32 0, i32 0
  store %struct.mdp5_pipeline* %21, %struct.mdp5_pipeline** %2, align 8
  br label %22

22:                                               ; preds = %15, %11
  %23 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %2, align 8
  ret %struct.mdp5_pipeline* %23
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.mdp5_pipeline* @ERR_PTR(i32) #1

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
