; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_primary_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_primary_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_device = type { i32 }
%struct.tegra_dc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.tegra_plane = type { i32, %struct.drm_plane, i64, %struct.tegra_dc* }

@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra_plane_funcs = common dso_local global i32 0, align 4
@tegra_plane_helper_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to create rotation property: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane* (%struct.drm_device*, %struct.tegra_dc*)* @tegra_primary_plane_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane* @tegra_primary_plane_create(%struct.drm_device* %0, %struct.tegra_dc* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.tegra_dc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_plane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.tegra_dc* %1, %struct.tegra_dc** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call i64 @tegra_plane_get_possible_crtcs(%struct.drm_device* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.tegra_plane* @kzalloc(i32 24, i32 %16)
  store %struct.tegra_plane* %17, %struct.tegra_plane** %8, align 8
  %18 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %19 = icmp ne %struct.tegra_plane* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.drm_plane* @ERR_PTR(i32 %22)
  store %struct.drm_plane* %23, %struct.drm_plane** %3, align 8
  br label %91

24:                                               ; preds = %2
  %25 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %26 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %25, i32 0, i32 0
  store i32 2560, i32* %26, align 8
  %27 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %28 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %30 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %31 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %30, i32 0, i32 3
  store %struct.tegra_dc* %29, %struct.tegra_dc** %31, align 8
  %32 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %11, align 8
  %42 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %43 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %10, align 8
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %49 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %48, i32 0, i32 1
  %50 = load i64, i64* %6, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @drm_universal_plane_init(%struct.drm_device* %47, %struct.drm_plane* %49, i64 %50, i32* @tegra_plane_funcs, i32* %51, i32 %52, i32* %53, i32 %54, i32* null)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %24
  %59 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %60 = call i32 @kfree(%struct.tegra_plane* %59)
  %61 = load i32, i32* %12, align 4
  %62 = call %struct.drm_plane* @ERR_PTR(i32 %61)
  store %struct.drm_plane* %62, %struct.drm_plane** %3, align 8
  br label %91

63:                                               ; preds = %24
  %64 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %65 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %64, i32 0, i32 1
  %66 = call i32 @drm_plane_helper_add(%struct.drm_plane* %65, i32* @tegra_plane_helper_funcs)
  %67 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %68 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %67, i32 0, i32 1
  %69 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %70 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @drm_plane_create_zpos_property(%struct.drm_plane* %68, i64 %71, i32 0, i32 255)
  %73 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %74 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %73, i32 0, i32 1
  %75 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %76 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %77 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @drm_plane_create_rotation_property(%struct.drm_plane* %74, i32 %75, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %63
  %83 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %84 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %82, %63
  %89 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %90 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %89, i32 0, i32 1
  store %struct.drm_plane* %90, %struct.drm_plane** %3, align 8
  br label %91

91:                                               ; preds = %88, %58, %20
  %92 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  ret %struct.drm_plane* %92
}

declare dso_local i64 @tegra_plane_get_possible_crtcs(%struct.drm_device*) #1

declare dso_local %struct.tegra_plane* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_plane* @ERR_PTR(i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i64, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.tegra_plane*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @drm_plane_create_zpos_property(%struct.drm_plane*, i64, i32, i32) #1

declare dso_local i32 @drm_plane_create_rotation_property(%struct.drm_plane*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
