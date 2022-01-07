; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_create_address_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_create_address_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_address_space = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32*, i32)* }
%struct.msm_gpu = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.iommu_domain = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }

@platform_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: using IOMMU\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to init mmu: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msm_gem_address_space* (%struct.msm_gpu*, %struct.platform_device*, i8*, i8*)* @msm_gpu_create_address_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msm_gem_address_space* @msm_gpu_create_address_space(%struct.msm_gpu* %0, %struct.platform_device* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.msm_gem_address_space*, align 8
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.msm_gem_address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iommu_domain*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %6, align 8
  store %struct.platform_device* %1, %struct.platform_device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %14 = call i32 @to_adreno_gpu(%struct.msm_gpu* %13)
  %15 = call i32 @adreno_is_a2xx(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %4
  %18 = call %struct.iommu_domain* @iommu_domain_alloc(i32* @platform_bus_type)
  store %struct.iommu_domain* %18, %struct.iommu_domain** %12, align 8
  %19 = load %struct.iommu_domain*, %struct.iommu_domain** %12, align 8
  %20 = icmp ne %struct.iommu_domain* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store %struct.msm_gem_address_space* null, %struct.msm_gem_address_space** %5, align 8
  br label %94

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.iommu_domain*, %struct.iommu_domain** %12, align 8
  %25 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.iommu_domain*, %struct.iommu_domain** %12, align 8
  %29 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %32 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %37 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DRM_DEV_INFO(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.iommu_domain*, %struct.iommu_domain** %12, align 8
  %43 = call %struct.msm_gem_address_space* @msm_gem_address_space_create(i32* %41, %struct.iommu_domain* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.msm_gem_address_space* %43, %struct.msm_gem_address_space** %10, align 8
  %44 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %10, align 8
  %45 = call i64 @IS_ERR(%struct.msm_gem_address_space* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %22
  %48 = load %struct.iommu_domain*, %struct.iommu_domain** %12, align 8
  %49 = call i32 @iommu_domain_free(%struct.iommu_domain* %48)
  br label %50

50:                                               ; preds = %47, %22
  br label %58

51:                                               ; preds = %4
  %52 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call %struct.msm_gem_address_space* @msm_gem_address_space_create_a2xx(i32* %53, %struct.msm_gpu* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %56)
  store %struct.msm_gem_address_space* %57, %struct.msm_gem_address_space** %10, align 8
  br label %58

58:                                               ; preds = %51, %50
  %59 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %10, align 8
  %60 = call i64 @IS_ERR(%struct.msm_gem_address_space* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %64 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %10, align 8
  %69 = call i32 @PTR_ERR(%struct.msm_gem_address_space* %68)
  %70 = call i32 @DRM_DEV_ERROR(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %10, align 8
  %72 = call %struct.msm_gem_address_space* @ERR_CAST(%struct.msm_gem_address_space* %71)
  store %struct.msm_gem_address_space* %72, %struct.msm_gem_address_space** %5, align 8
  br label %94

73:                                               ; preds = %58
  %74 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %10, align 8
  %75 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_8__*, i32*, i32)*, i32 (%struct.TYPE_8__*, i32*, i32)** %79, align 8
  %81 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %10, align 8
  %82 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = call i32 %80(%struct.TYPE_8__* %83, i32* null, i32 0)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %73
  %88 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %10, align 8
  %89 = call i32 @msm_gem_address_space_put(%struct.msm_gem_address_space* %88)
  %90 = load i32, i32* %11, align 4
  %91 = call %struct.msm_gem_address_space* @ERR_PTR(i32 %90)
  store %struct.msm_gem_address_space* %91, %struct.msm_gem_address_space** %5, align 8
  br label %94

92:                                               ; preds = %73
  %93 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %10, align 8
  store %struct.msm_gem_address_space* %93, %struct.msm_gem_address_space** %5, align 8
  br label %94

94:                                               ; preds = %92, %87, %62, %21
  %95 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  ret %struct.msm_gem_address_space* %95
}

declare dso_local i32 @adreno_is_a2xx(i32) #1

declare dso_local i32 @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.iommu_domain* @iommu_domain_alloc(i32*) #1

declare dso_local i32 @DRM_DEV_INFO(i32, i8*, i32) #1

declare dso_local %struct.msm_gem_address_space* @msm_gem_address_space_create(i32*, %struct.iommu_domain*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.msm_gem_address_space*) #1

declare dso_local i32 @iommu_domain_free(%struct.iommu_domain*) #1

declare dso_local %struct.msm_gem_address_space* @msm_gem_address_space_create_a2xx(i32*, %struct.msm_gpu*, i8*, i8*, i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.msm_gem_address_space*) #1

declare dso_local %struct.msm_gem_address_space* @ERR_CAST(%struct.msm_gem_address_space*) #1

declare dso_local i32 @msm_gem_address_space_put(%struct.msm_gem_address_space*) #1

declare dso_local %struct.msm_gem_address_space* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
