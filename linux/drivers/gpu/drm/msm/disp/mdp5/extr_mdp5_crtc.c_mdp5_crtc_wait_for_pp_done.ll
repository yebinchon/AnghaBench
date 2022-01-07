; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_wait_for_pp_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_wait_for_pp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.mdp5_crtc = type { i32 }
%struct.mdp5_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"pp done time out, lm=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mdp5_crtc_wait_for_pp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_crtc_wait_for_pp_done(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mdp5_crtc*, align 8
  %5 = alloca %struct.mdp5_crtc_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc* %10)
  store %struct.mdp5_crtc* %11, %struct.mdp5_crtc** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32 %14)
  store %struct.mdp5_crtc_state* %15, %struct.mdp5_crtc_state** %5, align 8
  %16 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %4, align 8
  %17 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %16, i32 0, i32 0
  %18 = call i32 @msecs_to_jiffies(i32 50)
  %19 = call i32 @wait_for_completion_timeout(i32* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %27 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
