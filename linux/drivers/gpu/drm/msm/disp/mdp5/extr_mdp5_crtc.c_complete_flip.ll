; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_complete_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_complete_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__*, i32, %struct.drm_device* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.mdp5_crtc_state = type { %struct.mdp5_ctl*, %struct.mdp5_pipeline }
%struct.mdp5_ctl = type { i32 }
%struct.mdp5_pipeline = type { i32 }
%struct.mdp5_crtc = type { %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s: send event: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_file*)* @complete_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_flip(%struct.drm_crtc* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.mdp5_crtc_state*, align 8
  %6 = alloca %struct.mdp5_pipeline*, align 8
  %7 = alloca %struct.mdp5_crtc*, align 8
  %8 = alloca %struct.mdp5_ctl*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_pending_vblank_event*, align 8
  %11 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.TYPE_2__* %14)
  store %struct.mdp5_crtc_state* %15, %struct.mdp5_crtc_state** %5, align 8
  %16 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %17 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %16, i32 0, i32 1
  store %struct.mdp5_pipeline* %17, %struct.mdp5_pipeline** %6, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = call %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc* %18)
  store %struct.mdp5_crtc* %19, %struct.mdp5_crtc** %7, align 8
  %20 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %5, align 8
  %21 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %20, i32 0, i32 0
  %22 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %21, align 8
  store %struct.mdp5_ctl* %22, %struct.mdp5_ctl** %8, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %24 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %23, i32 0, i32 2
  %25 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  store %struct.drm_device* %25, %struct.drm_device** %9, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %31 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %30, i32 0, i32 0
  %32 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %31, align 8
  store %struct.drm_pending_vblank_event* %32, %struct.drm_pending_vblank_event** %10, align 8
  %33 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %34 = icmp ne %struct.drm_pending_vblank_event* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %2
  %36 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %7, align 8
  %37 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %36, i32 0, i32 0
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %37, align 8
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %39 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %42 = call i32 @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40, %struct.drm_pending_vblank_event* %41)
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %44 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %45 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %43, %struct.drm_pending_vblank_event* %44)
  br label %46

46:                                               ; preds = %35, %2
  %47 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %8, align 8
  %52 = icmp ne %struct.mdp5_ctl* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %55 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %8, align 8
  %62 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %63 = call i32 @mdp5_ctl_blend(%struct.mdp5_ctl* %61, %struct.mdp5_pipeline* %62, i32* null, i32* null, i32 0, i32 0)
  br label %64

64:                                               ; preds = %60, %53, %46
  ret void
}

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(%struct.TYPE_2__*) #1

declare dso_local %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DBG(i8*, i32, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdp5_ctl_blend(%struct.mdp5_ctl*, %struct.mdp5_pipeline*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
