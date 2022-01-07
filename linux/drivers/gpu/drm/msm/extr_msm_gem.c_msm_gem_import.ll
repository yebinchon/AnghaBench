; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf = type { i32 }
%struct.sg_table = type { i32 }
%struct.msm_gem_object = type { i32, i32, %struct.sg_table* }

@.str = private unnamed_addr constant [29 x i8] c"cannot import without IOMMU\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MSM_BO_WC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @msm_gem_import(%struct.drm_device* %0, %struct.dma_buf* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.msm_gem_object*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call i32 @msm_use_mmu(%struct.drm_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DRM_DEV_ERROR(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.drm_gem_object* @ERR_PTR(i32 %22)
  store %struct.drm_gem_object* %23, %struct.drm_gem_object** %4, align 8
  br label %90

24:                                               ; preds = %3
  %25 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %26 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PAGE_ALIGN(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @MSM_BO_WC, align 4
  %32 = call i32 @msm_gem_new_impl(%struct.drm_device* %29, i32 %30, i32 %31, %struct.drm_gem_object** %9, i32 0)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %85

36:                                               ; preds = %24
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @drm_gem_private_object_init(%struct.drm_device* %37, %struct.drm_gem_object* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %45 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %44)
  store %struct.msm_gem_object* %45, %struct.msm_gem_object** %8, align 8
  %46 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %47 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %50 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %51 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %50, i32 0, i32 2
  store %struct.sg_table* %49, %struct.sg_table** %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @kvmalloc_array(i32 %52, i32 8, i32 %53)
  %55 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %56 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %58 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %36
  %62 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %63 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %85

67:                                               ; preds = %36
  %68 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %69 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %70 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table* %68, i32 %71, i32* null, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %78 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  br label %85

80:                                               ; preds = %67
  %81 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %82 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  store %struct.drm_gem_object* %84, %struct.drm_gem_object** %4, align 8
  br label %90

85:                                               ; preds = %76, %61, %35
  %86 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %87 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %86)
  %88 = load i32, i32* %11, align 4
  %89 = call %struct.drm_gem_object* @ERR_PTR(i32 %88)
  store %struct.drm_gem_object* %89, %struct.drm_gem_object** %4, align 8
  br label %90

90:                                               ; preds = %85, %80, %16
  %91 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %91
}

declare dso_local i32 @msm_use_mmu(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @msm_gem_new_impl(%struct.drm_device*, i32, i32, %struct.drm_gem_object**, i32) #1

declare dso_local i32 @drm_gem_private_object_init(%struct.drm_device*, %struct.drm_gem_object*, i32) #1

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table*, i32, i32*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
