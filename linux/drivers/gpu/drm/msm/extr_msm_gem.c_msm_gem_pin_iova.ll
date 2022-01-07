; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_pin_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_pin_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.msm_gem_address_space = type { i32 }
%struct.msm_gem_object = type { i32, i64, i32, i32 }
%struct.msm_gem_vma = type { i32 }
%struct.page = type { i32 }

@IOMMU_READ = common dso_local global i32 0, align 4
@MSM_BO_GPU_READONLY = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@MSM_MADV_WILLNEED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*, %struct.msm_gem_address_space*)* @msm_gem_pin_iova to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_gem_pin_iova(%struct.drm_gem_object* %0, %struct.msm_gem_address_space* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.msm_gem_address_space*, align 8
  %6 = alloca %struct.msm_gem_object*, align 8
  %7 = alloca %struct.msm_gem_vma*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.msm_gem_address_space* %1, %struct.msm_gem_address_space** %5, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %11 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %10)
  store %struct.msm_gem_object* %11, %struct.msm_gem_object** %6, align 8
  %12 = load i32, i32* @IOMMU_READ, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %14 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MSM_BO_GPU_READONLY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IOMMU_WRITE, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %25 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %24, i32 0, i32 3
  %26 = call i32 @mutex_is_locked(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %32 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MSM_MADV_WILLNEED, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %23
  %43 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %44 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %45 = call %struct.msm_gem_vma* @lookup_vma(%struct.drm_gem_object* %43, %struct.msm_gem_address_space* %44)
  store %struct.msm_gem_vma* %45, %struct.msm_gem_vma** %7, align 8
  %46 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %7, align 8
  %47 = icmp ne %struct.msm_gem_vma* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %77

55:                                               ; preds = %42
  %56 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %57 = call %struct.page** @get_pages(%struct.drm_gem_object* %56)
  store %struct.page** %57, %struct.page*** %8, align 8
  %58 = load %struct.page**, %struct.page*** %8, align 8
  %59 = call i64 @IS_ERR(%struct.page** %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.page**, %struct.page*** %8, align 8
  %63 = call i32 @PTR_ERR(%struct.page** %62)
  store i32 %63, i32* %3, align 4
  br label %77

64:                                               ; preds = %55
  %65 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %66 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %69 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %72 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PAGE_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = call i32 @msm_gem_map_vma(%struct.msm_gem_address_space* %65, %struct.msm_gem_vma* %66, i32 %67, i32 %70, i32 %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %64, %61, %52, %39
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.msm_gem_vma* @lookup_vma(%struct.drm_gem_object*, %struct.msm_gem_address_space*) #1

declare dso_local %struct.page** @get_pages(%struct.drm_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local i32 @msm_gem_map_vma(%struct.msm_gem_address_space*, %struct.msm_gem_vma*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
