; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_display_manager = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_plane = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.drm_plane*)* }
%struct.dc_plane_cap = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@dm_plane_funcs = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PREMULTI = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT601 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_FULL_RANGE = common dso_local global i32 0, align 4
@dm_plane_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_display_manager*, %struct.drm_plane*, i64, %struct.dc_plane_cap*)* @amdgpu_dm_plane_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_plane_init(%struct.amdgpu_display_manager* %0, %struct.drm_plane* %1, i64 %2, %struct.dc_plane_cap* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_display_manager*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dc_plane_cap*, align 8
  %10 = alloca [32 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_display_manager* %0, %struct.amdgpu_display_manager** %6, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.dc_plane_cap* %3, %struct.dc_plane_cap** %9, align 8
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %17 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %9, align 8
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = call i32 @get_plane_formats(%struct.drm_plane* %16, %struct.dc_plane_cap* %17, i32* %18, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %32 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @drm_universal_plane_init(i32 %26, %struct.drm_plane* %27, i64 %28, i32* @dm_plane_funcs, i32* %29, i32 %30, i32* null, i32 %33, i32* null)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %112

39:                                               ; preds = %4
  %40 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %41 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %9, align 8
  %47 = icmp ne %struct.dc_plane_cap* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %9, align 8
  %50 = getelementptr inbounds %struct.dc_plane_cap, %struct.dc_plane_cap* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = load i32, i32* @DRM_MODE_BLEND_PREMULTI, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = or i32 %55, %57
  store i32 %58, i32* %13, align 4
  %59 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %60 = call i32 @drm_plane_create_alpha_property(%struct.drm_plane* %59)
  %61 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @drm_plane_create_blend_mode_property(%struct.drm_plane* %61, i32 %62)
  br label %64

64:                                               ; preds = %53, %48, %45, %39
  %65 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %66 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %9, align 8
  %72 = icmp ne %struct.dc_plane_cap* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load %struct.dc_plane_cap*, %struct.dc_plane_cap** %9, align 8
  %75 = getelementptr inbounds %struct.dc_plane_cap, %struct.dc_plane_cap* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %81 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = or i32 %82, %84
  %86 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = load i32, i32* @DRM_COLOR_YCBCR_FULL_RANGE, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = or i32 %87, %89
  %91 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %92 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %93 = call i32 @drm_plane_create_color_properties(%struct.drm_plane* %80, i32 %85, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %79, %73, %70, %64
  %95 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %96 = call i32 @drm_plane_helper_add(%struct.drm_plane* %95, i32* @dm_plane_helper_funcs)
  %97 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %98 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32 (%struct.drm_plane*)*, i32 (%struct.drm_plane*)** %100, align 8
  %102 = icmp ne i32 (%struct.drm_plane*)* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %94
  %104 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %105 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32 (%struct.drm_plane*)*, i32 (%struct.drm_plane*)** %107, align 8
  %109 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %110 = call i32 %108(%struct.drm_plane* %109)
  br label %111

111:                                              ; preds = %103, %94
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %37
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @get_plane_formats(%struct.drm_plane*, %struct.dc_plane_cap*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @drm_universal_plane_init(i32, %struct.drm_plane*, i64, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_plane_create_alpha_property(%struct.drm_plane*) #1

declare dso_local i32 @drm_plane_create_blend_mode_property(%struct.drm_plane*, i32) #1

declare dso_local i32 @drm_plane_create_color_properties(%struct.drm_plane*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
