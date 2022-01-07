; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_crtc* }
%struct.mtk_crtc_state = type { %struct.TYPE_3__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mtk_drm_crtc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_drm_crtc_reset(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.mtk_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = call i32 @__drm_atomic_helper_crtc_destroy_state(%struct.TYPE_3__* %11)
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call %struct.mtk_crtc_state* @to_mtk_crtc_state(%struct.TYPE_3__* %15)
  store %struct.mtk_crtc_state* %16, %struct.mtk_crtc_state** %3, align 8
  %17 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %3, align 8
  %18 = call i32 @memset(%struct.mtk_crtc_state* %17, i32 0, i32 8)
  br label %30

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mtk_crtc_state* @kzalloc(i32 8, i32 %20)
  store %struct.mtk_crtc_state* %21, %struct.mtk_crtc_state** %3, align 8
  %22 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %3, align 8
  %23 = icmp ne %struct.mtk_crtc_state* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %35

25:                                               ; preds = %19
  %26 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %3, align 8
  %27 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %26, i32 0, i32 0
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %29, align 8
  br label %30

30:                                               ; preds = %25, %8
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %32 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.drm_crtc* %31, %struct.drm_crtc** %34, align 8
  br label %35

35:                                               ; preds = %30, %24
  ret void
}

declare dso_local i32 @__drm_atomic_helper_crtc_destroy_state(%struct.TYPE_3__*) #1

declare dso_local %struct.mtk_crtc_state* @to_mtk_crtc_state(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(%struct.mtk_crtc_state*, i32, i32) #1

declare dso_local %struct.mtk_crtc_state* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
