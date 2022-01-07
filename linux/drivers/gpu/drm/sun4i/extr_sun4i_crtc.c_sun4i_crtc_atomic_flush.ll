; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_crtc.c_sun4i_crtc_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_crtc.c_sun4i_crtc_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_pending_vblank_event* }
%struct.drm_pending_vblank_event = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.sun4i_crtc = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Committing plane changes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @sun4i_crtc_atomic_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_crtc_atomic_flush(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.sun4i_crtc*, align 8
  %6 = alloca %struct.drm_pending_vblank_event*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = call %struct.sun4i_crtc* @drm_crtc_to_sun4i_crtc(%struct.drm_crtc* %7)
  store %struct.sun4i_crtc* %8, %struct.sun4i_crtc** %5, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %12, align 8
  store %struct.drm_pending_vblank_event* %13, %struct.drm_pending_vblank_event** %6, align 8
  %14 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %5, align 8
  %16 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sunxi_engine_commit(i32 %17)
  %19 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %20 = icmp ne %struct.drm_pending_vblank_event* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %2
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %25, align 8
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %32 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %36 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %37 = call i32 @drm_crtc_arm_vblank_event(%struct.drm_crtc* %35, %struct.drm_pending_vblank_event* %36)
  br label %42

38:                                               ; preds = %21
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %40 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %41 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %39, %struct.drm_pending_vblank_event* %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %44 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_irq(i32* %46)
  br label %48

48:                                               ; preds = %42, %2
  ret void
}

declare dso_local %struct.sun4i_crtc* @drm_crtc_to_sun4i_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @sunxi_engine_commit(i32) #1

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
