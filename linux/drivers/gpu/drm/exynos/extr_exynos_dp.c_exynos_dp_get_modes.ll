; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_dp.c_exynos_dp_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_dp.c_exynos_dp_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_plat_data = type { i32 }
%struct.drm_connector = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.exynos_dp_device = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.drm_display_mode = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to create a new display mode.\0A\00", align 1
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_plat_data*, %struct.drm_connector*)* @exynos_dp_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dp_get_modes(%struct.analogix_dp_plat_data* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.analogix_dp_plat_data*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.exynos_dp_device*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.analogix_dp_plat_data* %0, %struct.analogix_dp_plat_data** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %9 = load %struct.analogix_dp_plat_data*, %struct.analogix_dp_plat_data** %4, align 8
  %10 = call %struct.exynos_dp_device* @to_dp(%struct.analogix_dp_plat_data* %9)
  store %struct.exynos_dp_device* %10, %struct.exynos_dp_device** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %12 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.drm_display_mode* @drm_mode_create(i32 %21)
  store %struct.drm_display_mode* %22, %struct.drm_display_mode** %7, align 8
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %24 = icmp ne %struct.drm_display_mode* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %27 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DRM_DEV_ERROR(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %60

31:                                               ; preds = %18
  %32 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %33 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %32, i32 0, i32 0
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %35 = call i32 @drm_display_mode_from_videomode(i32* %33, %struct.drm_display_mode* %34)
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %46 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %49 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %54 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %53)
  %55 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %57 = call i32 @drm_mode_probed_add(%struct.drm_connector* %55, %struct.drm_display_mode* %56)
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %31, %25, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.exynos_dp_device* @to_dp(%struct.analogix_dp_plat_data*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @drm_display_mode_from_videomode(i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
