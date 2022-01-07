; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dma.c_exynos_drm_register_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dma.c_exynos_drm_register_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.exynos_drm_private* }
%struct.exynos_drm_private = type { i8*, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Exynos DRM: using %s device for DMA mapping operations\0A\00", align 1
@CONFIG_EXYNOS_IOMMU = common dso_local global i32 0, align 4
@CONFIG_ARM_DMA_USE_IOMMU = common dso_local global i32 0, align 4
@platform_bus_type = common dso_local global i32 0, align 4
@EXYNOS_DEV_ADDR_START = common dso_local global i32 0, align 4
@EXYNOS_DEV_ADDR_SIZE = common dso_local global i32 0, align 4
@CONFIG_IOMMU_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_drm_register_dma(%struct.drm_device* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.exynos_drm_private*, align 8
  %7 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %9, align 8
  store %struct.exynos_drm_private* %10, %struct.exynos_drm_private** %6, align 8
  %11 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %6, align 8
  %12 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  %14 = icmp ne %struct.device* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %6, align 8
  %18 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %17, i32 0, i32 1
  store %struct.device* %16, %struct.device** %18, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @dev_name(%struct.device* %19)
  %21 = call i32 @DRM_INFO(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15, %2
  %23 = load i32, i32* @CONFIG_EXYNOS_IOMMU, align 4
  %24 = call i64 @IS_ENABLED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %65

27:                                               ; preds = %22
  %28 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %6, align 8
  %29 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %61, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @CONFIG_ARM_DMA_USE_IOMMU, align 4
  %34 = call i64 @IS_ENABLED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @EXYNOS_DEV_ADDR_START, align 4
  %38 = load i32, i32* @EXYNOS_DEV_ADDR_SIZE, align 4
  %39 = call i8* @arm_iommu_create_mapping(i32* @platform_bus_type, i32 %37, i32 %38)
  store i8* %39, i8** %7, align 8
  br label %50

40:                                               ; preds = %32
  %41 = load i32, i32* @CONFIG_IOMMU_DMA, align 4
  %42 = call i64 @IS_ENABLED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %6, align 8
  %46 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %45, i32 0, i32 1
  %47 = load %struct.device*, %struct.device** %46, align 8
  %48 = call i8* @iommu_get_domain_for_dev(%struct.device* %47)
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %44, %40
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %3, align 4
  br label %65

57:                                               ; preds = %50
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %6, align 8
  %60 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %27
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = call i32 @drm_iommu_attach_device(%struct.drm_device* %62, %struct.device* %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %54, %26
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i8* @arm_iommu_create_mapping(i32*, i32, i32) #1

declare dso_local i8* @iommu_get_domain_for_dev(%struct.device*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @drm_iommu_attach_device(%struct.drm_device*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
