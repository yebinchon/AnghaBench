; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_atomic_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_atomic_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.mtk_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_drm_crtc = type { %struct.TYPE_3__* }

@.str = private unnamed_addr constant [48 x i8] c"new event while there is still a pending event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @mtk_drm_crtc_atomic_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_drm_crtc_atomic_begin(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.mtk_crtc_state*, align 8
  %6 = alloca %struct.mtk_drm_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mtk_crtc_state* @to_mtk_crtc_state(i32 %9)
  store %struct.mtk_crtc_state* %10, %struct.mtk_crtc_state** %5, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = call %struct.mtk_drm_crtc* @to_mtk_crtc(%struct.drm_crtc* %11)
  store %struct.mtk_drm_crtc* %12, %struct.mtk_drm_crtc** %6, align 8
  %13 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %6, align 8
  %14 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %5, align 8
  %19 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17, %2
  %26 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %5, align 8
  %27 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %33 = call i32 @drm_crtc_index(%struct.drm_crtc* %32)
  %34 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %5, align 8
  %35 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 4
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %40 = call i64 @drm_crtc_vblank_get(%struct.drm_crtc* %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %5, align 8
  %45 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %6, align 8
  %49 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %48, i32 0, i32 0
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %49, align 8
  %50 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %5, align 8
  %51 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %52, align 8
  br label %53

53:                                               ; preds = %31, %25
  ret void
}

declare dso_local %struct.mtk_crtc_state* @to_mtk_crtc_state(i32) #1

declare dso_local %struct.mtk_drm_crtc* @to_mtk_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
