; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_overlay_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_overlay_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.armada_private* }
%struct.armada_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_mode_object = type { i32 }
%struct.drm_plane = type { %struct.drm_mode_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@armada_overlay_plane_helper_funcs = common dso_local global i32 0, align 4
@armada_ovl_plane_funcs = common dso_local global i32 0, align 4
@armada_ovl_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@CKMODE_RGB = common dso_local global i32 0, align 4
@DEFAULT_BRIGHTNESS = common dso_local global i32 0, align 4
@DEFAULT_CONTRAST = common dso_local global i32 0, align 4
@DEFAULT_SATURATION = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT601 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i32 0, align 4
@DEFAULT_ENCODING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armada_overlay_plane_create(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.armada_private*, align 8
  %7 = alloca %struct.drm_mode_object*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.armada_private*, %struct.armada_private** %11, align 8
  store %struct.armada_private* %12, %struct.armada_private** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call i32 @armada_overlay_create_properties(%struct.drm_device* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %109

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.drm_plane* @kzalloc(i32 4, i32 %20)
  store %struct.drm_plane* %21, %struct.drm_plane** %8, align 8
  %22 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %23 = icmp ne %struct.drm_plane* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %109

27:                                               ; preds = %19
  %28 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %29 = call i32 @drm_plane_helper_add(%struct.drm_plane* %28, i32* @armada_overlay_plane_helper_funcs)
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @armada_ovl_formats, align 4
  %34 = load i32, i32* @armada_ovl_formats, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %37 = call i32 @drm_universal_plane_init(%struct.drm_device* %30, %struct.drm_plane* %31, i64 %32, i32* @armada_ovl_plane_funcs, i32 %33, i32 %35, i32* null, i32 %36, i32* null)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %42 = call i32 @kfree(%struct.drm_plane* %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %109

44:                                               ; preds = %27
  %45 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %46 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %45, i32 0, i32 0
  store %struct.drm_mode_object* %46, %struct.drm_mode_object** %7, align 8
  %47 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %48 = load %struct.armada_private*, %struct.armada_private** %6, align 8
  %49 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @drm_object_attach_property(%struct.drm_mode_object* %47, i32 %50, i32 66046)
  %52 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %53 = load %struct.armada_private*, %struct.armada_private** %6, align 8
  %54 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @drm_object_attach_property(%struct.drm_mode_object* %52, i32 %55, i32 66046)
  %57 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %58 = load %struct.armada_private*, %struct.armada_private** %6, align 8
  %59 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @drm_object_attach_property(%struct.drm_mode_object* %57, i32 %60, i32 66046)
  %62 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %63 = load %struct.armada_private*, %struct.armada_private** %6, align 8
  %64 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @drm_object_attach_property(%struct.drm_mode_object* %62, i32 %65, i32 66046)
  %67 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %68 = load %struct.armada_private*, %struct.armada_private** %6, align 8
  %69 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @drm_object_attach_property(%struct.drm_mode_object* %67, i32 %70, i32 0)
  %72 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %73 = load %struct.armada_private*, %struct.armada_private** %6, align 8
  %74 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CKMODE_RGB, align 4
  %77 = call i32 @drm_object_attach_property(%struct.drm_mode_object* %72, i32 %75, i32 %76)
  %78 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %79 = load %struct.armada_private*, %struct.armada_private** %6, align 8
  %80 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DEFAULT_BRIGHTNESS, align 4
  %83 = add nsw i32 256, %82
  %84 = call i32 @drm_object_attach_property(%struct.drm_mode_object* %78, i32 %81, i32 %83)
  %85 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %86 = load %struct.armada_private*, %struct.armada_private** %6, align 8
  %87 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DEFAULT_CONTRAST, align 4
  %90 = call i32 @drm_object_attach_property(%struct.drm_mode_object* %85, i32 %88, i32 %89)
  %91 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %92 = load %struct.armada_private*, %struct.armada_private** %6, align 8
  %93 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DEFAULT_SATURATION, align 4
  %96 = call i32 @drm_object_attach_property(%struct.drm_mode_object* %91, i32 %94, i32 %95)
  %97 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %98 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = or i32 %99, %101
  %103 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %104 = call i32 @BIT(i32 %103)
  %105 = load i32, i32* @DEFAULT_ENCODING, align 4
  %106 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %107 = call i32 @drm_plane_create_color_properties(%struct.drm_plane* %97, i32 %102, i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %44, %40, %24, %17
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @armada_overlay_create_properties(%struct.drm_device*) #1

declare dso_local %struct.drm_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i64, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @kfree(%struct.drm_plane*) #1

declare dso_local i32 @drm_object_attach_property(%struct.drm_mode_object*, i32, i32) #1

declare dso_local i32 @drm_plane_create_color_properties(%struct.drm_plane*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
