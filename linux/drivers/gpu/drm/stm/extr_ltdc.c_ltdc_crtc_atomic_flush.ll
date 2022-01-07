; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__*, %struct.drm_device* }
%struct.TYPE_2__ = type { %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.ltdc_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LTDC_SRCR = common dso_local global i32 0, align 4
@SRCR_VBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @ltdc_crtc_atomic_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltdc_crtc_atomic_flush(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.ltdc_device*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_pending_vblank_event*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = call %struct.ltdc_device* @crtc_to_ltdc(%struct.drm_crtc* %8)
  store %struct.ltdc_device* %9, %struct.ltdc_device** %5, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %16, align 8
  store %struct.drm_pending_vblank_event* %17, %struct.drm_pending_vblank_event** %7, align 8
  %18 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = call i32 @ltdc_crtc_update_clut(%struct.drm_crtc* %19)
  %21 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %22 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LTDC_SRCR, align 4
  %25 = load i32, i32* @SRCR_VBR, align 4
  %26 = call i32 @reg_set(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %28 = icmp ne %struct.drm_pending_vblank_event* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %2
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %33, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %38 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %42 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %43 = call i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc* %41, %struct.drm_pending_vblank_event* %42)
  br label %48

44:                                               ; preds = %29
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %46 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %47 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %45, %struct.drm_pending_vblank_event* %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_irq(i32* %50)
  br label %52

52:                                               ; preds = %48, %2
  ret void
}

declare dso_local %struct.ltdc_device* @crtc_to_ltdc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*) #1

declare dso_local i32 @ltdc_crtc_update_clut(%struct.drm_crtc*) #1

declare dso_local i32 @reg_set(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
