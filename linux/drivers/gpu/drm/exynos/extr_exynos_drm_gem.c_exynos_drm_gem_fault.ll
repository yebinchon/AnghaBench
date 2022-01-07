; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.exynos_drm_gem = type { i64, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"invalid page offset\0A\00", align 1
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PFN_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_drm_gem_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.exynos_drm_gem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 1
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %4, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  store %struct.drm_gem_object* %14, %struct.drm_gem_object** %5, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %16 = call %struct.exynos_drm_gem* @to_exynos_gem(%struct.drm_gem_object* %15)
  store %struct.exynos_drm_gem* %16, %struct.exynos_drm_gem** %6, align 8
  %17 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %18 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %28 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = icmp uge i64 %26, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %1
  %37 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %38 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @page_to_pfn(i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %45 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %46 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @PFN_DEV, align 4
  %50 = call i32 @__pfn_to_pfn_t(i64 %48, i32 %49)
  %51 = call i32 @vmf_insert_mixed(%struct.vm_area_struct* %44, i64 %47, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %36, %33
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.exynos_drm_gem* @to_exynos_gem(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @page_to_pfn(i32) #1

declare dso_local i32 @vmf_insert_mixed(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @__pfn_to_pfn_t(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
