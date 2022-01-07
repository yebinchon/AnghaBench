; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vm.c_drm_vm_dma_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vm.c_drm_vm_dma_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.page*, %struct.vm_area_struct* }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_device_dma* }
%struct.drm_device_dma = type { i64* }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"dma_fault 0x%lx (page %lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @drm_vm_dma_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_vm_dma_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_device_dma*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %11 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %12 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %11, i32 0, i32 2
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  store %struct.vm_area_struct* %13, %struct.vm_area_struct** %4, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.drm_file*, %struct.drm_file** %17, align 8
  store %struct.drm_file* %18, %struct.drm_file** %5, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %20 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %6, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.drm_device_dma*, %struct.drm_device_dma** %25, align 8
  store %struct.drm_device_dma* %26, %struct.drm_device_dma** %7, align 8
  %27 = load %struct.drm_device_dma*, %struct.drm_device_dma** %7, align 8
  %28 = icmp ne %struct.drm_device_dma* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %30, i32* %2, align 4
  br label %65

31:                                               ; preds = %1
  %32 = load %struct.drm_device_dma*, %struct.drm_device_dma** %7, align 8
  %33 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %37, i32* %2, align 4
  br label %65

38:                                               ; preds = %31
  %39 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %40 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %41, %44
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @PAGE_SHIFT, align 8
  %48 = lshr i64 %46, %47
  store i64 %48, i64* %9, align 8
  %49 = load %struct.drm_device_dma*, %struct.drm_device_dma** %7, align 8
  %50 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call %struct.page* @virt_to_page(i8* %55)
  store %struct.page* %56, %struct.page** %10, align 8
  %57 = load %struct.page*, %struct.page** %10, align 8
  %58 = call i32 @get_page(%struct.page* %57)
  %59 = load %struct.page*, %struct.page** %10, align 8
  %60 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %61 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %60, i32 0, i32 1
  store %struct.page* %59, %struct.page** %61, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %62, i64 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %38, %36, %29
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
