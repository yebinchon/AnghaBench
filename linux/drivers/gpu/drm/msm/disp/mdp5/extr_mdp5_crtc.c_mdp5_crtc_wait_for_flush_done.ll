; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_wait_for_flush_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_wait_for_flush_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mdp5_crtc = type { i32, i32 }
%struct.mdp5_crtc_state = type { %struct.mdp5_ctl* }
%struct.mdp5_ctl = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"vblank time out, crtc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mdp5_crtc_wait_for_flush_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_crtc_wait_for_flush_done(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mdp5_crtc*, align 8
  %5 = alloca %struct.mdp5_crtc_state*, align 8
  %6 = alloca %struct.mdp5_ctl*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 1
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = call %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc* %11)
  store %struct.mdp5_crtc* %12, %struct.mdp5_crtc** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32 %15)
  store %struct.mdp5_crtc_state* %16, %struct.mdp5_crtc_state** %5, align 8
  %17 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %18 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %17, i32 0, i32 0
  %19 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %18, align 8
  store %struct.mdp5_ctl* %19, %struct.mdp5_ctl** %6, align 8
  %20 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %21 = icmp ne %struct.mdp5_ctl* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %63

23:                                               ; preds = %1
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %25 = call i32 @drm_crtc_vblank_get(%struct.drm_crtc* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %63

29:                                               ; preds = %23
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %34 = call i64 @drm_crtc_index(%struct.drm_crtc* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %39 = call i32 @mdp5_ctl_get_commit_status(%struct.mdp5_ctl* %38)
  %40 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %4, align 8
  %41 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @msecs_to_jiffies(i32 50)
  %47 = call i32 @wait_event_timeout(i32 %37, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %29
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %4, align 8
  %55 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %50, %29
  %59 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %4, align 8
  %60 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %62 = call i32 @drm_crtc_vblank_put(%struct.drm_crtc* %61)
  br label %63

63:                                               ; preds = %58, %28, %22
  ret void
}

declare dso_local %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32) #1

declare dso_local i32 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i32 @mdp5_ctl_get_commit_status(%struct.mdp5_ctl*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
