; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_plane.c_omap_plane_install_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_plane.c_omap_plane_install_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64, %struct.drm_mode_object, %struct.drm_device* }
%struct.drm_mode_object = type { i32 }
%struct.drm_device = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i64, i64 }

@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_90 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_plane_install_properties(%struct.drm_plane* %0, %struct.drm_mode_object* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_mode_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.omap_drm_private*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_mode_object* %1, %struct.drm_mode_object** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 2
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.omap_drm_private*, %struct.omap_drm_private** %11, align 8
  store %struct.omap_drm_private* %12, %struct.omap_drm_private** %6, align 8
  %13 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %14 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %2
  %18 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %24 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %25 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %26 = load i32, i32* @DRM_MODE_ROTATE_90, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @drm_plane_create_rotation_property(%struct.drm_plane* %23, i32 %24, i32 %35)
  br label %37

37:                                               ; preds = %22, %17
  %38 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %39 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %44 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %45 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %44, i32 0, i32 1
  %46 = icmp ne %struct.drm_mode_object* %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %49 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %50 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %53 = call i32 @drm_object_attach_property(%struct.drm_mode_object* %48, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %42, %37
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %57 = load %struct.omap_drm_private*, %struct.omap_drm_private** %6, align 8
  %58 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @drm_object_attach_property(%struct.drm_mode_object* %56, i64 %59, i32 0)
  ret void
}

declare dso_local i32 @drm_plane_create_rotation_property(%struct.drm_plane*, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(%struct.drm_mode_object*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
