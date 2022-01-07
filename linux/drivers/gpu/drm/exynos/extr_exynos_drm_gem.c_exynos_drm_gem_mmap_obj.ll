; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_mmap_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_mmap_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vm_area_struct = type { i32, i32 }
%struct.exynos_drm_gem = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"flags = 0x%x\0A\00", align 1
@EXYNOS_BO_CACHABLE = common dso_local global i32 0, align 4
@EXYNOS_BO_WC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*, %struct.vm_area_struct*)* @exynos_drm_gem_mmap_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_gem_mmap_obj(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.exynos_drm_gem*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %9 = call %struct.exynos_drm_gem* @to_exynos_gem(%struct.drm_gem_object* %8)
  store %struct.exynos_drm_gem* %9, %struct.exynos_drm_gem** %6, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @to_dma_dev(i32 %12)
  %14 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %15 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DRM_DEV_DEBUG_KMS(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %19 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EXYNOS_BO_CACHABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vm_get_page_prot(i32 %27)
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %55

31:                                               ; preds = %2
  %32 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %33 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EXYNOS_BO_WC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vm_get_page_prot(i32 %41)
  %43 = call i32 @pgprot_writecombine(i32 %42)
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %54

46:                                               ; preds = %31
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @vm_get_page_prot(i32 %49)
  %51 = call i32 @pgprot_noncached(i32 %50)
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %38
  br label %55

55:                                               ; preds = %54, %24
  %56 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %58 = call i32 @exynos_drm_gem_mmap_buffer(%struct.exynos_drm_gem* %56, %struct.vm_area_struct* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %61
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %66 = call i32 @drm_gem_vm_close(%struct.vm_area_struct* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %62
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.exynos_drm_gem* @to_exynos_gem(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

declare dso_local i32 @to_dma_dev(i32) #1

declare dso_local i32 @vm_get_page_prot(i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @exynos_drm_gem_mmap_buffer(%struct.exynos_drm_gem*, %struct.vm_area_struct*) #1

declare dso_local i32 @drm_gem_vm_close(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
