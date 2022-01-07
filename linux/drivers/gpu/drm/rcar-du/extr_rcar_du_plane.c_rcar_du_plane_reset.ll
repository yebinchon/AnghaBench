; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64, i32* }
%struct.rcar_du_plane_state = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RCAR_DU_PLANE_MEMORY = common dso_local global i32 0, align 4
@RCAR_DU_COLORKEY_NONE = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @rcar_du_plane_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.rcar_du_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @rcar_du_plane_atomic_destroy_state(%struct.drm_plane* %9, i32* %12)
  %14 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.rcar_du_plane_state* @kzalloc(i32 16, i32 %17)
  store %struct.rcar_du_plane_state* %18, %struct.rcar_du_plane_state** %3, align 8
  %19 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %3, align 8
  %20 = icmp eq %struct.rcar_du_plane_state* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %45

22:                                               ; preds = %16
  %23 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %24 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %3, align 8
  %25 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %24, i32 0, i32 1
  %26 = call i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane* %23, %struct.TYPE_2__* %25)
  %27 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %3, align 8
  %28 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* @RCAR_DU_PLANE_MEMORY, align 4
  %30 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %3, align 8
  %31 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @RCAR_DU_COLORKEY_NONE, align 4
  %33 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %3, align 8
  %34 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %36 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DRM_PLANE_TYPE_PRIMARY, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 1
  %42 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %3, align 8
  %43 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @rcar_du_plane_atomic_destroy_state(%struct.drm_plane*, i32*) #1

declare dso_local %struct.rcar_du_plane_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
