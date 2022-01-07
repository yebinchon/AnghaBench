; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.exynos_dsi = type { i32, i64 }
%struct.drm_device = type { i32 }
%struct.drm_bridge = type { i32 }

@exynos_dsi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@exynos_dsi_encoder_helper_funcs = common dso_local global i32 0, align 4
@EXYNOS_DISPLAY_TYPE_LCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @exynos_dsi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.exynos_dsi*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_bridge*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.drm_encoder* @dev_get_drvdata(%struct.device* %13)
  store %struct.drm_encoder* %14, %struct.drm_encoder** %8, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %16 = call %struct.exynos_dsi* @encoder_to_dsi(%struct.drm_encoder* %15)
  store %struct.exynos_dsi* %16, %struct.exynos_dsi** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.drm_device*
  store %struct.drm_device* %18, %struct.drm_device** %10, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %21 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %22 = call i32 @drm_encoder_init(%struct.drm_device* %19, %struct.drm_encoder* %20, i32* @exynos_dsi_encoder_funcs, i32 %21, i32* null)
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %24 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %23, i32* @exynos_dsi_encoder_helper_funcs)
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %26 = load i32, i32* @EXYNOS_DISPLAY_TYPE_LCD, align 4
  %27 = call i32 @exynos_drm_set_possible_crtcs(%struct.drm_encoder* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %3
  %33 = load %struct.exynos_dsi*, %struct.exynos_dsi** %9, align 8
  %34 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.exynos_dsi*, %struct.exynos_dsi** %9, align 8
  %39 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call %struct.drm_bridge* @of_drm_find_bridge(i64 %40)
  store %struct.drm_bridge* %41, %struct.drm_bridge** %11, align 8
  %42 = load %struct.drm_bridge*, %struct.drm_bridge** %11, align 8
  %43 = icmp ne %struct.drm_bridge* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %46 = load %struct.drm_bridge*, %struct.drm_bridge** %11, align 8
  %47 = call i32 @drm_bridge_attach(%struct.drm_encoder* %45, %struct.drm_bridge* %46, i32* null)
  br label %48

48:                                               ; preds = %44, %37
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.exynos_dsi*, %struct.exynos_dsi** %9, align 8
  %51 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %50, i32 0, i32 0
  %52 = call i32 @mipi_dsi_host_register(i32* %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %30
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.drm_encoder* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.exynos_dsi* @encoder_to_dsi(%struct.drm_encoder*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @exynos_drm_set_possible_crtcs(%struct.drm_encoder*, i32) #1

declare dso_local %struct.drm_bridge* @of_drm_find_bridge(i64) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, %struct.drm_bridge*, i32*) #1

declare dso_local i32 @mipi_dsi_host_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
