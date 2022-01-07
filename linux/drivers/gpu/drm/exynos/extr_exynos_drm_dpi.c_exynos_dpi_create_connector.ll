; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_create_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_create_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.exynos_dpi = type { i32, %struct.drm_connector }
%struct.drm_connector = type { i32 }

@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@exynos_dpi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to initialize connector with drm\0A\00", align 1
@exynos_dpi_connector_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @exynos_dpi_create_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dpi_create_connector(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.exynos_dpi*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %8 = call %struct.exynos_dpi* @encoder_to_dpi(%struct.drm_encoder* %7)
  store %struct.exynos_dpi* %8, %struct.exynos_dpi** %4, align 8
  %9 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %10 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %9, i32 0, i32 1
  store %struct.drm_connector* %10, %struct.drm_connector** %5, align 8
  %11 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %18 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %19 = call i32 @drm_connector_init(i32 %16, %struct.drm_connector* %17, i32* @exynos_dpi_connector_funcs, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %24 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DRM_DEV_ERROR(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %34

28:                                               ; preds = %1
  %29 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %30 = call i32 @drm_connector_helper_add(%struct.drm_connector* %29, i32* @exynos_dpi_connector_helper_funcs)
  %31 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %33 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %31, %struct.drm_encoder* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.exynos_dpi* @encoder_to_dpi(%struct.drm_encoder*) #1

declare dso_local i32 @drm_connector_init(i32, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
