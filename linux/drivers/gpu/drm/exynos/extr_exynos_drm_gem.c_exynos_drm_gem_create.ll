; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_gem = type { i32, i32 }
%struct.drm_device = type { i32 }

@EXYNOS_BO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid GEM buffer flags: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid GEM buffer size: %lu\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@EXYNOS_BO_NONCONTIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [93 x i8] c"Non-contiguous allocation is not supported without IOMMU, falling back to contiguous buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.exynos_drm_gem* @exynos_drm_gem_create(%struct.drm_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.exynos_drm_gem*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.exynos_drm_gem*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EXYNOS_BO_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = call i32 @DRM_DEV_ERROR(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.exynos_drm_gem* @ERR_PTR(i32 %23)
  store %struct.exynos_drm_gem* %24, %struct.exynos_drm_gem** %4, align 8
  br label %82

25:                                               ; preds = %3
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @DRM_DEV_ERROR(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.exynos_drm_gem* @ERR_PTR(i32 %35)
  store %struct.exynos_drm_gem* %36, %struct.exynos_drm_gem** %4, align 8
  br label %82

37:                                               ; preds = %25
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = call i64 @roundup(i64 %38, i32 %39)
  store i64 %40, i64* %7, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call %struct.exynos_drm_gem* @exynos_drm_gem_init(%struct.drm_device* %41, i64 %42)
  store %struct.exynos_drm_gem* %43, %struct.exynos_drm_gem** %8, align 8
  %44 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %45 = call i64 @IS_ERR(%struct.exynos_drm_gem* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  store %struct.exynos_drm_gem* %48, %struct.exynos_drm_gem** %4, align 8
  br label %82

49:                                               ; preds = %37
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = call i32 @is_drm_iommu_supported(%struct.drm_device* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @EXYNOS_BO_NONCONTIG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @EXYNOS_BO_NONCONTIG, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = call i32 @DRM_WARN(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %58, %53, %49
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %67 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %69 = call i32 @exynos_drm_alloc_buf(%struct.exynos_drm_gem* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %74 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %73, i32 0, i32 1
  %75 = call i32 @drm_gem_object_release(i32* %74)
  %76 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %77 = call i32 @kfree(%struct.exynos_drm_gem* %76)
  %78 = load i32, i32* %9, align 4
  %79 = call %struct.exynos_drm_gem* @ERR_PTR(i32 %78)
  store %struct.exynos_drm_gem* %79, %struct.exynos_drm_gem** %4, align 8
  br label %82

80:                                               ; preds = %64
  %81 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  store %struct.exynos_drm_gem* %81, %struct.exynos_drm_gem** %4, align 8
  br label %82

82:                                               ; preds = %80, %72, %47, %28, %15
  %83 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %4, align 8
  ret %struct.exynos_drm_gem* %83
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i64) #1

declare dso_local %struct.exynos_drm_gem* @ERR_PTR(i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local %struct.exynos_drm_gem* @exynos_drm_gem_init(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR(%struct.exynos_drm_gem*) #1

declare dso_local i32 @is_drm_iommu_supported(%struct.drm_device*) #1

declare dso_local i32 @DRM_WARN(i8*) #1

declare dso_local i32 @exynos_drm_alloc_buf(%struct.exynos_drm_gem*) #1

declare dso_local i32 @drm_gem_object_release(i32*) #1

declare dso_local i32 @kfree(%struct.exynos_drm_gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
