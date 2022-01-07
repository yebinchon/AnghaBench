; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_overlay.c_meson_overlay_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_overlay.c_meson_overlay_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { %struct.drm_plane*, %struct.TYPE_2__* }
%struct.drm_plane = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.meson_overlay = type { %struct.drm_plane, %struct.meson_drm* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@meson_overlay_funcs = common dso_local global i32 0, align 4
@supported_drm_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"meson_overlay_plane\00", align 1
@meson_overlay_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_overlay_create(%struct.meson_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_drm*, align 8
  %4 = alloca %struct.meson_overlay*, align 8
  %5 = alloca %struct.drm_plane*, align 8
  store %struct.meson_drm* %0, %struct.meson_drm** %3, align 8
  %6 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %8 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.meson_overlay* @devm_kzalloc(i32 %11, i32 16, i32 %12)
  store %struct.meson_overlay* %13, %struct.meson_overlay** %4, align 8
  %14 = load %struct.meson_overlay*, %struct.meson_overlay** %4, align 8
  %15 = icmp ne %struct.meson_overlay* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %21 = load %struct.meson_overlay*, %struct.meson_overlay** %4, align 8
  %22 = getelementptr inbounds %struct.meson_overlay, %struct.meson_overlay* %21, i32 0, i32 1
  store %struct.meson_drm* %20, %struct.meson_drm** %22, align 8
  %23 = load %struct.meson_overlay*, %struct.meson_overlay** %4, align 8
  %24 = getelementptr inbounds %struct.meson_overlay, %struct.meson_overlay* %23, i32 0, i32 0
  store %struct.drm_plane* %24, %struct.drm_plane** %5, align 8
  %25 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %26 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %29 = load i32, i32* @supported_drm_formats, align 4
  %30 = load i32, i32* @supported_drm_formats, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %33 = call i32 @drm_universal_plane_init(%struct.TYPE_2__* %27, %struct.drm_plane* %28, i32 255, i32* @meson_overlay_funcs, i32 %29, i32 %31, i32* null, i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %35 = call i32 @drm_plane_helper_add(%struct.drm_plane* %34, i32* @meson_overlay_helper_funcs)
  %36 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %37 = call i32 @drm_plane_create_zpos_immutable_property(%struct.drm_plane* %36, i32 0)
  %38 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %39 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %40 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %39, i32 0, i32 0
  store %struct.drm_plane* %38, %struct.drm_plane** %40, align 8
  %41 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %19, %16
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local %struct.meson_overlay* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.TYPE_2__*, %struct.drm_plane*, i32, i32*, i32, i32, i32*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @drm_plane_create_zpos_immutable_property(%struct.drm_plane*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
