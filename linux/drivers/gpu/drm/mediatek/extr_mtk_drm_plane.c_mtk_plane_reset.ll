; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_plane.c_mtk_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_plane.c_mtk_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_plane* }
%struct.mtk_plane_state = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_FORMAT_RGB565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @mtk_plane_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.mtk_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = call i32 @__drm_atomic_helper_plane_destroy_state(%struct.TYPE_5__* %11)
  %13 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %14 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = call %struct.mtk_plane_state* @to_mtk_plane_state(%struct.TYPE_5__* %15)
  store %struct.mtk_plane_state* %16, %struct.mtk_plane_state** %3, align 8
  %17 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %3, align 8
  %18 = call i32 @memset(%struct.mtk_plane_state* %17, i32 0, i32 16)
  br label %30

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mtk_plane_state* @kzalloc(i32 16, i32 %20)
  store %struct.mtk_plane_state* %21, %struct.mtk_plane_state** %3, align 8
  %22 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %3, align 8
  %23 = icmp ne %struct.mtk_plane_state* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %39

25:                                               ; preds = %19
  %26 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %3, align 8
  %27 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %26, i32 0, i32 1
  %28 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %29 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %28, i32 0, i32 0
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %29, align 8
  br label %30

30:                                               ; preds = %25, %8
  %31 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %32 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.drm_plane* %31, %struct.drm_plane** %34, align 8
  %35 = load i32, i32* @DRM_FORMAT_RGB565, align 4
  %36 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %3, align 8
  %37 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  br label %39

39:                                               ; preds = %30, %24
  ret void
}

declare dso_local i32 @__drm_atomic_helper_plane_destroy_state(%struct.TYPE_5__*) #1

declare dso_local %struct.mtk_plane_state* @to_mtk_plane_state(%struct.TYPE_5__*) #1

declare dso_local i32 @memset(%struct.mtk_plane_state*, i32, i32) #1

declare dso_local %struct.mtk_plane_state* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
