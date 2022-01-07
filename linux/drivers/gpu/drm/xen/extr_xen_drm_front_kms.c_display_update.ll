; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_display_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_display_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.drm_crtc }
%struct.drm_crtc = type { %struct.drm_device*, %struct.TYPE_2__* }
%struct.drm_device = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.xen_drm_front_drm_pipeline = type { %struct.drm_pending_vblank_event* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_plane_state*)* @display_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_update(%struct.drm_simple_display_pipe* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_simple_display_pipe*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.xen_drm_front_drm_pipeline*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_pending_vblank_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i64, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %11 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %12 = call %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_simple_display_pipe* %11)
  store %struct.xen_drm_front_drm_pipeline* %12, %struct.xen_drm_front_drm_pipeline** %5, align 8
  %13 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %14 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %13, i32 0, i32 0
  store %struct.drm_crtc* %14, %struct.drm_crtc** %6, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %18, align 8
  store %struct.drm_pending_vblank_event* %19, %struct.drm_pending_vblank_event** %7, align 8
  %20 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %21 = icmp ne %struct.drm_pending_vblank_event* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %23, i32 0, i32 0
  %25 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  store %struct.drm_device* %25, %struct.drm_device** %9, align 8
  %26 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %5, align 8
  %27 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %26, i32 0, i32 0
  %28 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %27, align 8
  %29 = call i32 @WARN_ON(%struct.drm_pending_vblank_event* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %37, align 8
  %38 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %39 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %5, align 8
  %40 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %39, i32 0, i32 0
  store %struct.drm_pending_vblank_event* %38, %struct.drm_pending_vblank_event** %40, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %22, %2
  %46 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %47 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %47, i32 0, i32 0
  %49 = load %struct.drm_device*, %struct.drm_device** %48, align 8
  %50 = call i32 @drm_dev_enter(%struct.drm_device* %49, i32* %8)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %5, align 8
  %54 = call i32 @send_pending_event(%struct.xen_drm_front_drm_pipeline* %53)
  br label %66

55:                                               ; preds = %45
  %56 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %3, align 8
  %57 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %58 = call i32 @display_send_page_flip(%struct.drm_simple_display_pipe* %56, %struct.drm_plane_state* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %5, align 8
  %62 = call i32 @send_pending_event(%struct.xen_drm_front_drm_pipeline* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @drm_dev_exit(i32 %64)
  br label %66

66:                                               ; preds = %63, %52
  ret void
}

declare dso_local %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_simple_display_pipe*) #1

declare dso_local i32 @WARN_ON(%struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_dev_enter(%struct.drm_device*, i32*) #1

declare dso_local i32 @send_pending_event(%struct.xen_drm_front_drm_pipeline*) #1

declare dso_local i32 @display_send_page_flip(%struct.drm_simple_display_pipe*, %struct.drm_plane_state*) #1

declare dso_local i32 @drm_dev_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
