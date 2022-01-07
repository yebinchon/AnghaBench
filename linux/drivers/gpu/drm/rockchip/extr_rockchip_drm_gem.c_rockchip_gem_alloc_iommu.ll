; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_alloc_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_alloc_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_gem_object = type { i32, i32, i32 }

@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to vmap() buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_gem_object*, i32)* @rockchip_gem_alloc_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_gem_alloc_iommu(%struct.rockchip_gem_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rockchip_gem_object* %0, %struct.rockchip_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %8 = call i32 @rockchip_gem_get_pages(%struct.rockchip_gem_object* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %15 = call i32 @rockchip_gem_iommu_map(%struct.rockchip_gem_object* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %48

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %24 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %27 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @VM_MAP, align 4
  %30 = load i32, i32* @PAGE_KERNEL, align 4
  %31 = call i32 @pgprot_writecombine(i32 %30)
  %32 = call i32 @vmap(i32 %25, i32 %28, i32 %29, i32 %31)
  %33 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %34 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %36 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %22
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %19
  store i32 0, i32* %3, align 4
  br label %52

45:                                               ; preds = %39
  %46 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %47 = call i32 @rockchip_gem_iommu_unmap(%struct.rockchip_gem_object* %46)
  br label %48

48:                                               ; preds = %45, %18
  %49 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %50 = call i32 @rockchip_gem_put_pages(%struct.rockchip_gem_object* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %44, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @rockchip_gem_get_pages(%struct.rockchip_gem_object*) #1

declare dso_local i32 @rockchip_gem_iommu_map(%struct.rockchip_gem_object*) #1

declare dso_local i32 @vmap(i32, i32, i32, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @rockchip_gem_iommu_unmap(%struct.rockchip_gem_object*) #1

declare dso_local i32 @rockchip_gem_put_pages(%struct.rockchip_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
