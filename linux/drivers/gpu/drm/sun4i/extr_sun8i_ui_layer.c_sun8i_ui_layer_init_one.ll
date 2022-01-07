; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_layer.c_sun8i_ui_layer_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_layer.c_sun8i_ui_layer_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_ui_layer = type { i32, i64, %struct.sun8i_mixer*, i32 }
%struct.drm_device = type { i32 }
%struct.sun8i_mixer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@sun8i_ui_layer_funcs = common dso_local global i32 0, align 4
@sun8i_ui_layer_formats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Couldn't initialize layer\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't add zpos property\0A\00", align 1
@sun8i_ui_layer_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sun8i_ui_layer* @sun8i_ui_layer_init_one(%struct.drm_device* %0, %struct.sun8i_mixer* %1, i32 %2) #0 {
  %4 = alloca %struct.sun8i_ui_layer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.sun8i_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sun8i_ui_layer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.sun8i_mixer* %1, %struct.sun8i_mixer** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %15 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sun8i_ui_layer* @devm_kzalloc(i32 %23, i32 32, i32 %24)
  store %struct.sun8i_ui_layer* %25, %struct.sun8i_ui_layer** %10, align 8
  %26 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %10, align 8
  %27 = icmp ne %struct.sun8i_ui_layer* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.sun8i_ui_layer* @ERR_PTR(i32 %30)
  store %struct.sun8i_ui_layer* %31, %struct.sun8i_ui_layer** %4, align 8
  br label %95

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %10, align 8
  %40 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %39, i32 0, i32 3
  %41 = load i32, i32* @sun8i_ui_layer_formats, align 4
  %42 = load i32, i32* @sun8i_ui_layer_formats, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @drm_universal_plane_init(%struct.drm_device* %38, i32* %40, i32 0, i32* @sun8i_ui_layer_funcs, i32 %41, i32 %43, i32* null, i32 %44, i32* null)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %12, align 4
  %54 = call %struct.sun8i_ui_layer* @ERR_PTR(i32 %53)
  store %struct.sun8i_ui_layer* %54, %struct.sun8i_ui_layer** %4, align 8
  br label %95

55:                                               ; preds = %37
  %56 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %57 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %62 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %60, %65
  store i32 %66, i32* %11, align 4
  %67 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %10, align 8
  %68 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %67, i32 0, i32 3
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub i32 %70, 1
  %72 = call i32 @drm_plane_create_zpos_property(i32* %68, i32 %69, i32 0, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %55
  %76 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %77 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* %12, align 4
  %81 = call %struct.sun8i_ui_layer* @ERR_PTR(i32 %80)
  store %struct.sun8i_ui_layer* %81, %struct.sun8i_ui_layer** %4, align 8
  br label %95

82:                                               ; preds = %55
  %83 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %10, align 8
  %84 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %83, i32 0, i32 3
  %85 = call i32 @drm_plane_helper_add(i32* %84, i32* @sun8i_ui_layer_helper_funcs)
  %86 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %87 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %10, align 8
  %88 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %87, i32 0, i32 2
  store %struct.sun8i_mixer* %86, %struct.sun8i_mixer** %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %10, align 8
  %91 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %10, align 8
  %93 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %10, align 8
  store %struct.sun8i_ui_layer* %94, %struct.sun8i_ui_layer** %4, align 8
  br label %95

95:                                               ; preds = %82, %75, %48, %28
  %96 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %4, align 8
  ret %struct.sun8i_ui_layer* %96
}

declare dso_local %struct.sun8i_ui_layer* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.sun8i_ui_layer* @ERR_PTR(i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, i32*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_plane_create_zpos_property(i32*, i32, i32, i32) #1

declare dso_local i32 @drm_plane_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
