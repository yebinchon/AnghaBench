; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.exynos_dpi = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to create a new display mode\0A\00", align 1
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @exynos_dpi_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dpi_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.exynos_dpi*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = call %struct.exynos_dpi* @connector_to_dpi(%struct.drm_connector* %6)
  store %struct.exynos_dpi* %7, %struct.exynos_dpi** %4, align 8
  %8 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %9 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_display_mode* @drm_mode_create(i32 %15)
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %5, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %18 = icmp ne %struct.drm_display_mode* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %21 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @DRM_DEV_ERROR(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

24:                                               ; preds = %12
  %25 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %26 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %29 = call i32 @drm_display_mode_from_videomode(i64 %27, %struct.drm_display_mode* %28)
  %30 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %31 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %37 = call i32 @drm_mode_probed_add(%struct.drm_connector* %35, %struct.drm_display_mode* %36)
  store i32 1, i32* %2, align 4
  br label %56

38:                                               ; preds = %1
  %39 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %40 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %45 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %49, align 8
  %51 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %52 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 %50(%struct.TYPE_4__* %53)
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %43, %24, %19
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.exynos_dpi* @connector_to_dpi(%struct.drm_connector*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @drm_display_mode_from_videomode(i64, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
