; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i32, i32 }
%struct.intel_vgpu = type { i32 }

@VFIO_PCI_OFFSET_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VFIO_PCI_ROM_REGION_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VFIO_PCI_BAR2_REGION_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*, %struct.vm_area_struct*)* @intel_vgpu_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_vgpu_mmap(%struct.mdev_device* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdev_device*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_vgpu*, align 8
  store %struct.mdev_device* %0, %struct.mdev_device** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %13 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %14 = call %struct.intel_vgpu* @mdev_get_drvdata(%struct.mdev_device* %13)
  store %struct.intel_vgpu* %14, %struct.intel_vgpu** %12, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VFIO_PCI_OFFSET_SHIFT, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = lshr i32 %17, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @VFIO_PCI_ROM_REGION_INDEX, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %122

30:                                               ; preds = %2
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %122

41:                                               ; preds = %30
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @VM_SHARED, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %122

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @VFIO_PCI_BAR2_REGION_INDEX, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %122

58:                                               ; preds = %51
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %7, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  store i64 %71, i64* %8, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @VFIO_PCI_OFFSET_SHIFT, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* @PAGE_SHIFT, align 8
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = shl i32 1, %79
  %81 = sub i32 %80, 1
  %82 = and i32 %74, %81
  %83 = zext i32 %82 to i64
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @PAGE_SHIFT, align 8
  %86 = shl i64 %84, %85
  store i64 %86, i64* %10, align 8
  %87 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @intel_vgpu_in_aperture(%struct.intel_vgpu* %87, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %58
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %122

94:                                               ; preds = %58
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %8, align 8
  %97 = add i64 %95, %96
  %98 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %99 = call i64 @vgpu_aperture_offset(%struct.intel_vgpu* %98)
  %100 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %101 = call i64 @vgpu_aperture_sz(%struct.intel_vgpu* %100)
  %102 = add i64 %99, %101
  %103 = icmp ugt i64 %97, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %122

107:                                              ; preds = %94
  %108 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  %109 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @gvt_aperture_pa_base(i32 %110)
  %112 = load i64, i64* @PAGE_SHIFT, align 8
  %113 = lshr i64 %111, %112
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %113, %114
  store i64 %115, i64* %9, align 8
  %116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @remap_pfn_range(%struct.vm_area_struct* %116, i64 %117, i64 %118, i64 %119, i32 %120)
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %107, %104, %91, %55, %48, %38, %27
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.intel_vgpu* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i32 @intel_vgpu_in_aperture(%struct.intel_vgpu*, i64) #1

declare dso_local i64 @vgpu_aperture_offset(%struct.intel_vgpu*) #1

declare dso_local i64 @vgpu_aperture_sz(%struct.intel_vgpu*) #1

declare dso_local i64 @gvt_aperture_pa_base(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
