; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_state_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_state_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64, i32* }
%struct.ipu_plane_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DRM_PLANE_TYPE_PRIMARY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @ipu_plane_state_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_plane_state_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipu_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %6 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DRM_PLANE_TYPE_PRIMARY, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 0, i32 1
  store i32 %11, i32* %3, align 4
  %12 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %13 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call %struct.ipu_plane_state* @to_ipu_plane_state(i32* %19)
  store %struct.ipu_plane_state* %20, %struct.ipu_plane_state** %4, align 8
  %21 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %22 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @__drm_atomic_helper_plane_destroy_state(i32* %23)
  %25 = load %struct.ipu_plane_state*, %struct.ipu_plane_state** %4, align 8
  %26 = call i32 @kfree(%struct.ipu_plane_state* %25)
  %27 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %16, %1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.ipu_plane_state* @kzalloc(i32 8, i32 %30)
  store %struct.ipu_plane_state* %31, %struct.ipu_plane_state** %4, align 8
  %32 = load %struct.ipu_plane_state*, %struct.ipu_plane_state** %4, align 8
  %33 = icmp ne %struct.ipu_plane_state* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %36 = load %struct.ipu_plane_state*, %struct.ipu_plane_state** %4, align 8
  %37 = getelementptr inbounds %struct.ipu_plane_state, %struct.ipu_plane_state* %36, i32 0, i32 0
  %38 = call i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane* %35, %struct.TYPE_2__* %37)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.ipu_plane_state*, %struct.ipu_plane_state** %4, align 8
  %41 = getelementptr inbounds %struct.ipu_plane_state, %struct.ipu_plane_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.ipu_plane_state*, %struct.ipu_plane_state** %4, align 8
  %45 = getelementptr inbounds %struct.ipu_plane_state, %struct.ipu_plane_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %34, %29
  ret void
}

declare dso_local %struct.ipu_plane_state* @to_ipu_plane_state(i32*) #1

declare dso_local i32 @__drm_atomic_helper_plane_destroy_state(i32*) #1

declare dso_local i32 @kfree(%struct.ipu_plane_state*) #1

declare dso_local %struct.ipu_plane_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
