; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dma.c_drm_iommu_attach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dma.c_drm_iommu_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.exynos_drm_private* }
%struct.exynos_drm_private = type { i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Device %s lacks support for IOMMU\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CONFIG_ARM_DMA_USE_IOMMU = common dso_local global i32 0, align 4
@CONFIG_IOMMU_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.device*)* @drm_iommu_attach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_iommu_attach_device(%struct.drm_device* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.exynos_drm_private*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %9, align 8
  store %struct.exynos_drm_private* %10, %struct.exynos_drm_private** %6, align 8
  %11 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %6, align 8
  %12 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  %14 = call i64 @get_dma_ops(%struct.device* %13)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i64 @get_dma_ops(%struct.device* %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @dev_name(%struct.device* %20)
  %22 = call i32 @DRM_DEV_ERROR(%struct.device* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @configure_dma_max_seg_size(%struct.device* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %25
  %33 = load i32, i32* @CONFIG_ARM_DMA_USE_IOMMU, align 4
  %34 = call i64 @IS_ENABLED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i64 @to_dma_iommu_mapping(%struct.device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @arm_iommu_detach_device(%struct.device* %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %6, align 8
  %46 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @arm_iommu_attach_device(%struct.device* %44, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %60

49:                                               ; preds = %32
  %50 = load i32, i32* @CONFIG_IOMMU_DMA, align 4
  %51 = call i64 @IS_ENABLED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %6, align 8
  %55 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = call i32 @iommu_attach_device(i32 %56, %struct.device* %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %53, %49
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @clear_dma_max_seg_size(%struct.device* %64)
  br label %66

66:                                               ; preds = %63, %60
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %30, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @get_dma_ops(%struct.device*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @configure_dma_max_seg_size(%struct.device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @to_dma_iommu_mapping(%struct.device*) #1

declare dso_local i32 @arm_iommu_detach_device(%struct.device*) #1

declare dso_local i32 @arm_iommu_attach_device(%struct.device*, i32) #1

declare dso_local i32 @iommu_attach_device(i32, %struct.device*) #1

declare dso_local i32 @clear_dma_max_seg_size(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
