; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.drm_pending_vblank_event*, i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_crtc_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.armada_crtc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.armada_crtc*)* }

@.str = private unnamed_addr constant [14 x i8] c"[CRTC:%d:%s]\0A\00", align 1
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @armada_drm_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_drm_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.armada_crtc*, align 8
  %6 = alloca %struct.drm_pending_vblank_event*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = call %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc* %7)
  store %struct.armada_crtc* %8, %struct.armada_crtc** %5, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %18 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %26 = call i32 @drm_crtc_vblank_put(%struct.drm_crtc* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %29 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %28)
  %30 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %31 = call i32 @armada_drm_crtc_update(%struct.armada_crtc* %30, i32 0)
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %33 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %80, label %38

38:                                               ; preds = %27
  %39 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %40 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32 (%struct.armada_crtc*)*, i32 (%struct.armada_crtc*)** %42, align 8
  %44 = icmp ne i32 (%struct.armada_crtc*)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %47 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32 (%struct.armada_crtc*)*, i32 (%struct.armada_crtc*)** %49, align 8
  %51 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %52 = call i32 %50(%struct.armada_crtc* %51)
  br label %53

53:                                               ; preds = %45, %38
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %55 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %57, align 8
  store %struct.drm_pending_vblank_event* %58, %struct.drm_pending_vblank_event** %6, align 8
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %60 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %62, align 8
  %63 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %64 = icmp ne %struct.drm_pending_vblank_event* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %53
  %66 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %67 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = call i32 @spin_lock_irq(i32* %69)
  %71 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %72 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %73 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %71, %struct.drm_pending_vblank_event* %72)
  %74 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %75 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_irq(i32* %77)
  br label %79

79:                                               ; preds = %65, %53
  br label %80

80:                                               ; preds = %79, %27
  ret void
}

declare dso_local %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @armada_drm_crtc_update(%struct.armada_crtc*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, %struct.drm_pending_vblank_event*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
