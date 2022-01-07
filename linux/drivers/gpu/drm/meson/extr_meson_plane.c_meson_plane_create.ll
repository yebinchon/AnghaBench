; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_plane.c_meson_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_plane.c_meson_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { %struct.drm_plane*, %struct.TYPE_2__* }
%struct.drm_plane = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.meson_plane = type { %struct.drm_plane, %struct.meson_drm* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@meson_plane_funcs = common dso_local global i32 0, align 4
@supported_drm_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"meson_primary_plane\00", align 1
@meson_plane_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_plane_create(%struct.meson_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_drm*, align 8
  %4 = alloca %struct.meson_plane*, align 8
  %5 = alloca %struct.drm_plane*, align 8
  store %struct.meson_drm* %0, %struct.meson_drm** %3, align 8
  %6 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %7 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.meson_plane* @devm_kzalloc(i32 %10, i32 16, i32 %11)
  store %struct.meson_plane* %12, %struct.meson_plane** %4, align 8
  %13 = load %struct.meson_plane*, %struct.meson_plane** %4, align 8
  %14 = icmp ne %struct.meson_plane* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %20 = load %struct.meson_plane*, %struct.meson_plane** %4, align 8
  %21 = getelementptr inbounds %struct.meson_plane, %struct.meson_plane* %20, i32 0, i32 1
  store %struct.meson_drm* %19, %struct.meson_drm** %21, align 8
  %22 = load %struct.meson_plane*, %struct.meson_plane** %4, align 8
  %23 = getelementptr inbounds %struct.meson_plane, %struct.meson_plane* %22, i32 0, i32 0
  store %struct.drm_plane* %23, %struct.drm_plane** %5, align 8
  %24 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %25 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %28 = load i32, i32* @supported_drm_formats, align 4
  %29 = load i32, i32* @supported_drm_formats, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %32 = call i32 @drm_universal_plane_init(%struct.TYPE_2__* %26, %struct.drm_plane* %27, i32 255, i32* @meson_plane_funcs, i32 %28, i32 %30, i32* null, i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %34 = call i32 @drm_plane_helper_add(%struct.drm_plane* %33, i32* @meson_plane_helper_funcs)
  %35 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %36 = call i32 @drm_plane_create_zpos_immutable_property(%struct.drm_plane* %35, i32 1)
  %37 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %38 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %39 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %38, i32 0, i32 0
  store %struct.drm_plane* %37, %struct.drm_plane** %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %18, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.meson_plane* @devm_kzalloc(i32, i32, i32) #1

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
