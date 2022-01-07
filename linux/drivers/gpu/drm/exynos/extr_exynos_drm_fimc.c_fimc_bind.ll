; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fimc_context = type { i32, i32, %struct.drm_device*, %struct.exynos_drm_ipp }
%struct.drm_device = type { i32 }
%struct.exynos_drm_ipp = type { %struct.drm_device* }

@ipp_funcs = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_CAP_CROP = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_CAP_ROTATE = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_CAP_SCALE = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_CAP_CONVERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fimc\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"The exynos fimc has been probed successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @fimc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fimc_context*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.exynos_drm_ipp*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.fimc_context* @dev_get_drvdata(%struct.device* %10)
  store %struct.fimc_context* %11, %struct.fimc_context** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_device*
  store %struct.drm_device* %13, %struct.drm_device** %8, align 8
  %14 = load %struct.fimc_context*, %struct.fimc_context** %7, align 8
  %15 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %14, i32 0, i32 3
  store %struct.exynos_drm_ipp* %15, %struct.exynos_drm_ipp** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %17 = load %struct.fimc_context*, %struct.fimc_context** %7, align 8
  %18 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %17, i32 0, i32 2
  store %struct.drm_device* %16, %struct.drm_device** %18, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %20 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %21 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %20, i32 0, i32 0
  store %struct.drm_device* %19, %struct.drm_device** %21, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @exynos_drm_register_dma(%struct.drm_device* %22, %struct.device* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %27 = load i32, i32* @DRM_EXYNOS_IPP_CAP_CROP, align 4
  %28 = load i32, i32* @DRM_EXYNOS_IPP_CAP_ROTATE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @DRM_EXYNOS_IPP_CAP_SCALE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DRM_EXYNOS_IPP_CAP_CONVERT, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.fimc_context*, %struct.fimc_context** %7, align 8
  %35 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fimc_context*, %struct.fimc_context** %7, align 8
  %38 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @exynos_drm_ipp_register(%struct.device* %25, %struct.exynos_drm_ipp* %26, i32* @ipp_funcs, i32 %33, i32 %36, i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_info(%struct.device* %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.fimc_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @exynos_drm_register_dma(%struct.drm_device*, %struct.device*) #1

declare dso_local i32 @exynos_drm_ipp_register(%struct.device*, %struct.exynos_drm_ipp*, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
