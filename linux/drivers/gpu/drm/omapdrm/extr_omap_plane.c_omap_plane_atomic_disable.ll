; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_plane.c_omap_plane_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_plane.c_omap_plane_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32)* }
%struct.drm_plane_state = type { i32 }
%struct.omap_plane = type { i32 }

@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @omap_plane_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_plane_atomic_disable(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.omap_drm_private*, align 8
  %6 = alloca %struct.omap_plane*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.omap_drm_private*, %struct.omap_drm_private** %10, align 8
  store %struct.omap_drm_private* %11, %struct.omap_drm_private** %5, align 8
  %12 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %13 = call %struct.omap_plane* @to_omap_plane(%struct.drm_plane* %12)
  store %struct.omap_plane* %13, %struct.omap_plane** %6, align 8
  %14 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %15 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %16 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %14, i32* %18, align 4
  %19 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %20 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DRM_PLANE_TYPE_PRIMARY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.omap_plane*, %struct.omap_plane** %6, align 8
  %27 = getelementptr inbounds %struct.omap_plane, %struct.omap_plane* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ 0, %24 ], [ %28, %25 ]
  %31 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %32 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %36 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %38, align 8
  %40 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %41 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.omap_plane*, %struct.omap_plane** %6, align 8
  %44 = getelementptr inbounds %struct.omap_plane, %struct.omap_plane* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %39(i32 %42, i32 %45, i32 0)
  ret void
}

declare dso_local %struct.omap_plane* @to_omap_plane(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
