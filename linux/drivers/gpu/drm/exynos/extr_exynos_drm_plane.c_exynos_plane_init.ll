; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.exynos_drm_plane = type { i32, %struct.drm_plane, %struct.exynos_drm_plane_config* }
%struct.drm_plane = type { i32 }
%struct.exynos_drm_plane_config = type { i32, i32, i32, i32, i32 }

@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PREMULTI = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_COVERAGE = common dso_local global i32 0, align 4
@exynos_plane_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to initialize plane\0A\00", align 1
@plane_helper_funcs = common dso_local global i32 0, align 4
@EXYNOS_DRM_PLANE_CAP_ZPOS = common dso_local global i32 0, align 4
@EXYNOS_DRM_PLANE_CAP_PIX_BLEND = common dso_local global i32 0, align 4
@EXYNOS_DRM_PLANE_CAP_WIN_BLEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_plane_init(%struct.drm_device* %0, %struct.exynos_drm_plane* %1, i32 %2, %struct.exynos_drm_plane_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.exynos_drm_plane*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.exynos_drm_plane_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_plane*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.exynos_drm_plane* %1, %struct.exynos_drm_plane** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.exynos_drm_plane_config* %3, %struct.exynos_drm_plane_config** %9, align 8
  %13 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = load i32, i32* @DRM_MODE_BLEND_PREMULTI, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* @DRM_MODE_BLEND_COVERAGE, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = or i32 %17, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %7, align 8
  %22 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %21, i32 0, i32 1
  store %struct.drm_plane* %22, %struct.drm_plane** %12, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %7, align 8
  %25 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %24, i32 0, i32 1
  %26 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %9, align 8
  %32 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %9, align 8
  %35 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %9, align 8
  %38 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @drm_universal_plane_init(%struct.drm_device* %23, %struct.drm_plane* %25, i32 %30, i32* @exynos_plane_funcs, i32 %33, i32 %36, i32* null, i32 %39, i32* null)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %4
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DRM_DEV_ERROR(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %94

49:                                               ; preds = %4
  %50 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %7, align 8
  %51 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %50, i32 0, i32 1
  %52 = call i32 @drm_plane_helper_add(%struct.drm_plane* %51, i32* @plane_helper_funcs)
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %7, align 8
  %55 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %9, align 8
  %57 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %7, align 8
  %58 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %57, i32 0, i32 2
  store %struct.exynos_drm_plane_config* %56, %struct.exynos_drm_plane_config** %58, align 8
  %59 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %7, align 8
  %60 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %59, i32 0, i32 1
  %61 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %9, align 8
  %62 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %9, align 8
  %65 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EXYNOS_DRM_PLANE_CAP_ZPOS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @exynos_plane_attach_zpos_property(%struct.drm_plane* %60, i32 %63, i32 %71)
  %73 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %9, align 8
  %74 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @EXYNOS_DRM_PLANE_CAP_PIX_BLEND, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %49
  %80 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @drm_plane_create_blend_mode_property(%struct.drm_plane* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %49
  %84 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %9, align 8
  %85 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @EXYNOS_DRM_PLANE_CAP_WIN_BLEND, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %92 = call i32 @drm_plane_create_alpha_property(%struct.drm_plane* %91)
  br label %93

93:                                               ; preds = %90, %83
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %43
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @exynos_plane_attach_zpos_property(%struct.drm_plane*, i32, i32) #1

declare dso_local i32 @drm_plane_create_blend_mode_property(%struct.drm_plane*, i32) #1

declare dso_local i32 @drm_plane_create_alpha_property(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
