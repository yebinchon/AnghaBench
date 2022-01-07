; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fbdev.c_exynos_drm_fb_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fbdev.c_exynos_drm_fb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64 }
%struct.exynos_drm_fbdev = type { %struct.exynos_drm_gem* }
%struct.exynos_drm_gem = type { i64, i32, i32, i32 }

@VM_IO = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"failed to mmap.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @exynos_drm_fb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_fb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca %struct.exynos_drm_fbdev*, align 8
  %8 = alloca %struct.exynos_drm_gem*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %12, align 8
  store %struct.drm_fb_helper* %13, %struct.drm_fb_helper** %6, align 8
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %15 = call %struct.exynos_drm_fbdev* @to_exynos_fbdev(%struct.drm_fb_helper* %14)
  store %struct.exynos_drm_fbdev* %15, %struct.exynos_drm_fbdev** %7, align 8
  %16 = load %struct.exynos_drm_fbdev*, %struct.exynos_drm_fbdev** %7, align 8
  %17 = getelementptr inbounds %struct.exynos_drm_fbdev, %struct.exynos_drm_fbdev* %16, i32 0, i32 0
  %18 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %17, align 8
  store %struct.exynos_drm_gem* %18, %struct.exynos_drm_gem** %8, align 8
  %19 = load i32, i32* @VM_IO, align 4
  %20 = load i32, i32* @VM_DONTEXPAND, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VM_DONTDUMP, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %37 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %72

43:                                               ; preds = %2
  %44 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %45 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @to_dma_dev(i32 %46)
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %49 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %50 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %53 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %56 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %59 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dma_mmap_attrs(i32 %47, %struct.vm_area_struct* %48, i32 %51, i32 %54, i64 %57, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %43
  %65 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %66 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @to_dma_dev(i32 %67)
  %69 = call i32 @DRM_DEV_ERROR(i32 %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %64, %40
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.exynos_drm_fbdev* @to_exynos_fbdev(%struct.drm_fb_helper*) #1

declare dso_local i32 @dma_mmap_attrs(i32, %struct.vm_area_struct*, i32, i32, i64, i32) #1

declare dso_local i32 @to_dma_dev(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
