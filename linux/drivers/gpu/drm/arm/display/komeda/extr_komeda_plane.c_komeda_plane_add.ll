; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_plane_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_plane_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_kms_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.komeda_dev* }
%struct.komeda_dev = type { i32 }
%struct.komeda_layer = type { %struct.komeda_component, i32, i32 }
%struct.komeda_component = type { i32, i32, i32 }
%struct.komeda_plane = type { %struct.komeda_layer*, %struct.drm_plane }
%struct.drm_plane = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@komeda_plane_funcs = common dso_local global i32 0, align 4
@komeda_supported_modifiers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@komeda_plane_helper_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PREMULTI = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_COVERAGE = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT601 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT2020 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_FULL_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_kms_dev*, %struct.komeda_layer*)* @komeda_plane_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_plane_add(%struct.komeda_kms_dev* %0, %struct.komeda_layer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.komeda_kms_dev*, align 8
  %5 = alloca %struct.komeda_layer*, align 8
  %6 = alloca %struct.komeda_dev*, align 8
  %7 = alloca %struct.komeda_component*, align 8
  %8 = alloca %struct.komeda_plane*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.komeda_kms_dev* %0, %struct.komeda_kms_dev** %4, align 8
  store %struct.komeda_layer* %1, %struct.komeda_layer** %5, align 8
  %13 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %14 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.komeda_dev*, %struct.komeda_dev** %15, align 8
  store %struct.komeda_dev* %16, %struct.komeda_dev** %6, align 8
  %17 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %18 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %17, i32 0, i32 0
  store %struct.komeda_component* %18, %struct.komeda_component** %7, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.komeda_plane* @kzalloc(i32 16, i32 %19)
  store %struct.komeda_plane* %20, %struct.komeda_plane** %8, align 8
  %21 = load %struct.komeda_plane*, %struct.komeda_plane** %8, align 8
  %22 = icmp ne %struct.komeda_plane* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %135

26:                                               ; preds = %2
  %27 = load %struct.komeda_plane*, %struct.komeda_plane** %8, align 8
  %28 = getelementptr inbounds %struct.komeda_plane, %struct.komeda_plane* %27, i32 0, i32 1
  store %struct.drm_plane* %28, %struct.drm_plane** %9, align 8
  %29 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %30 = load %struct.komeda_plane*, %struct.komeda_plane** %8, align 8
  %31 = getelementptr inbounds %struct.komeda_plane, %struct.komeda_plane* %30, i32 0, i32 0
  store %struct.komeda_layer* %29, %struct.komeda_layer** %31, align 8
  %32 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %33 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %32, i32 0, i32 0
  %34 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %35 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @komeda_get_layer_fourcc_list(i32* %33, i32 %36, i32* %11)
  store i32* %37, i32** %10, align 8
  %38 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %39 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %38, i32 0, i32 0
  %40 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %41 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %42 = load %struct.komeda_component*, %struct.komeda_component** %7, align 8
  %43 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @get_possible_crtcs(%struct.komeda_kms_dev* %41, i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @komeda_supported_modifiers, align 4
  %49 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %50 = load %struct.komeda_component*, %struct.komeda_component** %7, align 8
  %51 = call i32 @get_plane_type(%struct.komeda_kms_dev* %49, %struct.komeda_component* %50)
  %52 = load %struct.komeda_component*, %struct.komeda_component** %7, align 8
  %53 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @drm_universal_plane_init(%struct.TYPE_2__* %39, %struct.drm_plane* %40, i32 %45, i32* @komeda_plane_funcs, i32* %46, i32 %47, i32 %48, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @komeda_put_fourcc_list(i32* %56)
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %26
  br label %131

61:                                               ; preds = %26
  %62 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %63 = call i32 @drm_plane_helper_add(%struct.drm_plane* %62, i32* @komeda_plane_helper_funcs)
  %64 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %65 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %66 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %67 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @drm_plane_create_rotation_property(%struct.drm_plane* %64, i32 %65, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %131

73:                                               ; preds = %61
  %74 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %75 = call i32 @drm_plane_create_alpha_property(%struct.drm_plane* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %131

79:                                               ; preds = %73
  %80 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %81 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = load i32, i32* @DRM_MODE_BLEND_PREMULTI, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = or i32 %82, %84
  %86 = load i32, i32* @DRM_MODE_BLEND_COVERAGE, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = or i32 %85, %87
  %89 = call i32 @drm_plane_create_blend_mode_property(%struct.drm_plane* %80, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %131

93:                                               ; preds = %79
  %94 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %95 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %96 = call i32 @BIT(i32 %95)
  %97 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %98 = call i32 @BIT(i32 %97)
  %99 = or i32 %96, %98
  %100 = load i32, i32* @DRM_COLOR_YCBCR_BT2020, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = or i32 %99, %101
  %103 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %104 = call i32 @BIT(i32 %103)
  %105 = load i32, i32* @DRM_COLOR_YCBCR_FULL_RANGE, align 4
  %106 = call i32 @BIT(i32 %105)
  %107 = or i32 %104, %106
  %108 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %109 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %110 = call i32 @drm_plane_create_color_properties(%struct.drm_plane* %94, i32 %102, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %93
  br label %131

114:                                              ; preds = %93
  %115 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %116 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %117 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @drm_plane_create_zpos_property(%struct.drm_plane* %115, i32 %119, i32 0, i32 8)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %131

124:                                              ; preds = %114
  %125 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %126 = load %struct.komeda_component*, %struct.komeda_component** %7, align 8
  %127 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %130 = call i32 @komeda_set_crtc_plane_mask(%struct.komeda_kms_dev* %125, i32 %128, %struct.drm_plane* %129)
  store i32 0, i32* %3, align 4
  br label %135

131:                                              ; preds = %123, %113, %92, %78, %72, %60
  %132 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %133 = call i32 @komeda_plane_destroy(%struct.drm_plane* %132)
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %124, %23
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.komeda_plane* @kzalloc(i32, i32) #1

declare dso_local i32* @komeda_get_layer_fourcc_list(i32*, i32, i32*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.TYPE_2__*, %struct.drm_plane*, i32, i32*, i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @get_possible_crtcs(%struct.komeda_kms_dev*, i32) #1

declare dso_local i32 @get_plane_type(%struct.komeda_kms_dev*, %struct.komeda_component*) #1

declare dso_local i32 @komeda_put_fourcc_list(i32*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @drm_plane_create_rotation_property(%struct.drm_plane*, i32, i32) #1

declare dso_local i32 @drm_plane_create_alpha_property(%struct.drm_plane*) #1

declare dso_local i32 @drm_plane_create_blend_mode_property(%struct.drm_plane*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_plane_create_color_properties(%struct.drm_plane*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_plane_create_zpos_property(%struct.drm_plane*, i32, i32, i32) #1

declare dso_local i32 @komeda_set_crtc_plane_mask(%struct.komeda_kms_dev*, i32, %struct.drm_plane*) #1

declare dso_local i32 @komeda_plane_destroy(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
