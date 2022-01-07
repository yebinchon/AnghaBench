; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_gem_prime_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_gem_prime_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_bo = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_NO_CPU_ACCESS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gem_prime_mmap(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %11 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %10)
  store %struct.amdgpu_bo* %11, %struct.amdgpu_bo** %6, align 8
  %12 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %15)
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %7, align 8
  %17 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %18 = call i32 @amdgpu_bo_size(%struct.amdgpu_bo* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %101

26:                                               ; preds = %2
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %28 = icmp eq %struct.amdgpu_device* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %101

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub i32 %36, %39
  %41 = icmp ult i32 %33, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %101

45:                                               ; preds = %32
  %46 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %47 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @amdgpu_ttm_tt_get_usermm(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %54 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AMDGPU_GEM_CREATE_NO_CPU_ACCESS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52, %45
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %101

62:                                               ; preds = %52
  %63 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %64 = call i32 @amdgpu_bo_mmap_offset(%struct.amdgpu_bo* %63)
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %72 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %71, i32 0, i32 0
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @drm_vma_node_allow(i32* %72, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %62
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %101

83:                                               ; preds = %62
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 @ttm_bo_mmap(%struct.TYPE_6__* %86, %struct.vm_area_struct* %87, i32* %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %93 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %92, i32 0, i32 0
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %95 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @drm_vma_node_revoke(i32* %93, i32 %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %83, %81, %59, %42, %29, %23
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @amdgpu_bo_size(%struct.amdgpu_bo*) #1

declare dso_local i64 @amdgpu_ttm_tt_get_usermm(i32) #1

declare dso_local i32 @amdgpu_bo_mmap_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @drm_vma_node_allow(i32*, i32) #1

declare dso_local i32 @ttm_bo_mmap(%struct.TYPE_6__*, %struct.vm_area_struct*, i32*) #1

declare dso_local i32 @drm_vma_node_revoke(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
