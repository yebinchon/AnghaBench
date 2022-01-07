; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_overlay_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_overlay_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_device = type { i32 }
%struct.tegra_dc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.tegra_plane = type { i32, i32, %struct.drm_plane, %struct.tegra_dc* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@tegra_plane_funcs = common dso_local global i32 0, align 4
@tegra_plane_helper_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to create rotation property: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane* (%struct.drm_device*, %struct.tegra_dc*, i32, i32)* @tegra_dc_overlay_plane_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane* @tegra_dc_overlay_plane_create(%struct.drm_device* %0, %struct.tegra_dc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.tegra_dc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.tegra_plane*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.tegra_dc* %1, %struct.tegra_dc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = call i64 @tegra_plane_get_possible_crtcs(%struct.drm_device* %16)
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.tegra_plane* @kzalloc(i32 24, i32 %18)
  store %struct.tegra_plane* %19, %struct.tegra_plane** %11, align 8
  %20 = load %struct.tegra_plane*, %struct.tegra_plane** %11, align 8
  %21 = icmp ne %struct.tegra_plane* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.drm_plane* @ERR_PTR(i32 %24)
  store %struct.drm_plane* %25, %struct.drm_plane** %5, align 8
  br label %98

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = mul i32 512, %27
  %29 = add i32 2560, %28
  %30 = load %struct.tegra_plane*, %struct.tegra_plane** %11, align 8
  %31 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.tegra_plane*, %struct.tegra_plane** %11, align 8
  %34 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %36 = load %struct.tegra_plane*, %struct.tegra_plane** %11, align 8
  %37 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %36, i32 0, i32 3
  store %struct.tegra_dc* %35, %struct.tegra_dc** %37, align 8
  %38 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %39 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  %43 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %44 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %14, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %26
  %51 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  store i32 %51, i32* %13, align 4
  br label %54

52:                                               ; preds = %26
  %53 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %56 = load %struct.tegra_plane*, %struct.tegra_plane** %11, align 8
  %57 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %56, i32 0, i32 2
  %58 = load i64, i64* %10, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @drm_universal_plane_init(%struct.drm_device* %55, %struct.drm_plane* %57, i64 %58, i32* @tegra_plane_funcs, i32* %59, i32 %60, i32* null, i32 %61, i32* null)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.tegra_plane*, %struct.tegra_plane** %11, align 8
  %67 = call i32 @kfree(%struct.tegra_plane* %66)
  %68 = load i32, i32* %15, align 4
  %69 = call %struct.drm_plane* @ERR_PTR(i32 %68)
  store %struct.drm_plane* %69, %struct.drm_plane** %5, align 8
  br label %98

70:                                               ; preds = %54
  %71 = load %struct.tegra_plane*, %struct.tegra_plane** %11, align 8
  %72 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %71, i32 0, i32 2
  %73 = call i32 @drm_plane_helper_add(%struct.drm_plane* %72, i32* @tegra_plane_helper_funcs)
  %74 = load %struct.tegra_plane*, %struct.tegra_plane** %11, align 8
  %75 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %74, i32 0, i32 2
  %76 = load %struct.tegra_plane*, %struct.tegra_plane** %11, align 8
  %77 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @drm_plane_create_zpos_property(%struct.drm_plane* %75, i32 %78, i32 0, i32 255)
  %80 = load %struct.tegra_plane*, %struct.tegra_plane** %11, align 8
  %81 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %80, i32 0, i32 2
  %82 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %83 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %84 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @drm_plane_create_rotation_property(%struct.drm_plane* %81, i32 %82, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %70
  %90 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %91 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %70
  %96 = load %struct.tegra_plane*, %struct.tegra_plane** %11, align 8
  %97 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %96, i32 0, i32 2
  store %struct.drm_plane* %97, %struct.drm_plane** %5, align 8
  br label %98

98:                                               ; preds = %95, %65, %22
  %99 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  ret %struct.drm_plane* %99
}

declare dso_local i64 @tegra_plane_get_possible_crtcs(%struct.drm_device*) #1

declare dso_local %struct.tegra_plane* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_plane* @ERR_PTR(i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i64, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.tegra_plane*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @drm_plane_create_zpos_property(%struct.drm_plane*, i32, i32, i32) #1

declare dso_local i32 @drm_plane_create_rotation_property(%struct.drm_plane*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
