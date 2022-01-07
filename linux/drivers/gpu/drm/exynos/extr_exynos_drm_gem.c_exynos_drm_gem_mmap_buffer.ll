; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_mmap_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_mmap_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_gem = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32 }

@VM_PFNMAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"failed to mmap.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_gem*, %struct.vm_area_struct*)* @exynos_drm_gem_mmap_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_gem_mmap_buffer(%struct.exynos_drm_gem* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_drm_gem*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.exynos_drm_gem* %0, %struct.exynos_drm_gem** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %4, align 8
  %10 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load i32, i32* @VM_PFNMAP, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %23, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %4, align 8
  %30 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %59

36:                                               ; preds = %2
  %37 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %38 = call i32 @to_dma_dev(%struct.drm_device* %37)
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %4, align 8
  %41 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %4, align 8
  %44 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %4, align 8
  %47 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %4, align 8
  %50 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dma_mmap_attrs(i32 %38, %struct.vm_area_struct* %39, i32 %42, i32 %45, i64 %48, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %36
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55, %33
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @dma_mmap_attrs(i32, %struct.vm_area_struct*, i32, i32, i64, i32) #1

declare dso_local i32 @to_dma_dev(%struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
