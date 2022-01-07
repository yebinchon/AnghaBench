; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.armada_crtc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.armada_crtc*, %struct.TYPE_8__*)* }

@.str = private unnamed_addr constant [14 x i8] c"[CRTC:%d:%s]\0A\00", align 1
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @armada_drm_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_drm_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.armada_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = call %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc* %6)
  store %struct.armada_crtc* %7, %struct.armada_crtc** %5, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %17 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %2
  %21 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %22 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32 (%struct.armada_crtc*, %struct.TYPE_8__*)*, i32 (%struct.armada_crtc*, %struct.TYPE_8__*)** %24, align 8
  %26 = icmp ne i32 (%struct.armada_crtc*, %struct.TYPE_8__*)* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %29 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (%struct.armada_crtc*, %struct.TYPE_8__*)*, i32 (%struct.armada_crtc*, %struct.TYPE_8__*)** %31, align 8
  %33 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 %32(%struct.armada_crtc* %33, %struct.TYPE_8__* %37)
  br label %39

39:                                               ; preds = %27, %20
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %42 = call i32 @armada_drm_crtc_update(%struct.armada_crtc* %41, i32 1)
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %44 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %43)
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %46 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %40
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %56 = call i32 @drm_crtc_vblank_get(%struct.drm_crtc* %55)
  %57 = call i32 @WARN_ON(i32 %56)
  br label %58

58:                                               ; preds = %54, %40
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %60 = call i32 @armada_drm_crtc_queue_state_event(%struct.drm_crtc* %59)
  ret void
}

declare dso_local %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @armada_drm_crtc_update(%struct.armada_crtc*, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @armada_drm_crtc_queue_state_event(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
