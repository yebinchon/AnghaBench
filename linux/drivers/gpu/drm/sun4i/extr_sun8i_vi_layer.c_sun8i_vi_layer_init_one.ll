; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_layer.c_sun8i_vi_layer_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_layer.c_sun8i_vi_layer_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_vi_layer = type { i32, i64, %struct.sun8i_mixer*, i32 }
%struct.drm_device = type { i32 }
%struct.sun8i_mixer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sun8i_vi_layer_funcs = common dso_local global i32 0, align 4
@sun8i_vi_layer_formats = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Couldn't initialize layer\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't add zpos property\0A\00", align 1
@DRM_COLOR_YCBCR_BT601 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_FULL_RANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Couldn't add encoding and range properties!\0A\00", align 1
@sun8i_vi_layer_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sun8i_vi_layer* @sun8i_vi_layer_init_one(%struct.drm_device* %0, %struct.sun8i_mixer* %1, i32 %2) #0 {
  %4 = alloca %struct.sun8i_vi_layer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.sun8i_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sun8i_vi_layer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.sun8i_mixer* %1, %struct.sun8i_mixer** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sun8i_vi_layer* @devm_kzalloc(i32 %15, i32 32, i32 %16)
  store %struct.sun8i_vi_layer* %17, %struct.sun8i_vi_layer** %10, align 8
  %18 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %10, align 8
  %19 = icmp ne %struct.sun8i_vi_layer* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.sun8i_vi_layer* @ERR_PTR(i32 %22)
  store %struct.sun8i_vi_layer* %23, %struct.sun8i_vi_layer** %4, align 8
  br label %109

24:                                               ; preds = %3
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %10, align 8
  %27 = getelementptr inbounds %struct.sun8i_vi_layer, %struct.sun8i_vi_layer* %26, i32 0, i32 3
  %28 = load i32, i32* @sun8i_vi_layer_formats, align 4
  %29 = load i32, i32* @sun8i_vi_layer_formats, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %32 = call i32 @drm_universal_plane_init(%struct.drm_device* %25, i32* %27, i32 0, i32* @sun8i_vi_layer_funcs, i32 %28, i32 %30, i32* null, i32 %31, i32* null)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %12, align 4
  %41 = call %struct.sun8i_vi_layer* @ERR_PTR(i32 %40)
  store %struct.sun8i_vi_layer* %41, %struct.sun8i_vi_layer** %4, align 8
  br label %109

42:                                               ; preds = %24
  %43 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %44 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %49 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %47, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %10, align 8
  %55 = getelementptr inbounds %struct.sun8i_vi_layer, %struct.sun8i_vi_layer* %54, i32 0, i32 3
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub i32 %57, 1
  %59 = call i32 @drm_plane_create_zpos_property(i32* %55, i32 %56, i32 0, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %42
  %63 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %12, align 4
  %68 = call %struct.sun8i_vi_layer* @ERR_PTR(i32 %67)
  store %struct.sun8i_vi_layer* %68, %struct.sun8i_vi_layer** %4, align 8
  br label %109

69:                                               ; preds = %42
  %70 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = or i32 %71, %73
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %76 = call i32 @BIT(i32 %75)
  %77 = load i32, i32* @DRM_COLOR_YCBCR_FULL_RANGE, align 4
  %78 = call i32 @BIT(i32 %77)
  %79 = or i32 %76, %78
  store i32 %79, i32* %9, align 4
  %80 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %10, align 8
  %81 = getelementptr inbounds %struct.sun8i_vi_layer, %struct.sun8i_vi_layer* %80, i32 0, i32 3
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %85 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %86 = call i32 @drm_plane_create_color_properties(i32* %81, i32 %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %69
  %90 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* %12, align 4
  %95 = call %struct.sun8i_vi_layer* @ERR_PTR(i32 %94)
  store %struct.sun8i_vi_layer* %95, %struct.sun8i_vi_layer** %4, align 8
  br label %109

96:                                               ; preds = %69
  %97 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %10, align 8
  %98 = getelementptr inbounds %struct.sun8i_vi_layer, %struct.sun8i_vi_layer* %97, i32 0, i32 3
  %99 = call i32 @drm_plane_helper_add(i32* %98, i32* @sun8i_vi_layer_helper_funcs)
  %100 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %6, align 8
  %101 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %10, align 8
  %102 = getelementptr inbounds %struct.sun8i_vi_layer, %struct.sun8i_vi_layer* %101, i32 0, i32 2
  store %struct.sun8i_mixer* %100, %struct.sun8i_mixer** %102, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %10, align 8
  %105 = getelementptr inbounds %struct.sun8i_vi_layer, %struct.sun8i_vi_layer* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %10, align 8
  %107 = getelementptr inbounds %struct.sun8i_vi_layer, %struct.sun8i_vi_layer* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %10, align 8
  store %struct.sun8i_vi_layer* %108, %struct.sun8i_vi_layer** %4, align 8
  br label %109

109:                                              ; preds = %96, %89, %62, %35, %20
  %110 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %4, align 8
  ret %struct.sun8i_vi_layer* %110
}

declare dso_local %struct.sun8i_vi_layer* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.sun8i_vi_layer* @ERR_PTR(i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, i32*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_plane_create_zpos_property(i32*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_plane_create_color_properties(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_plane_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
