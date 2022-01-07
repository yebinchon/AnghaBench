; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vm.c_drm_vm_sg_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vm.c_drm_vm_sg_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.page*, %struct.vm_area_struct* }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, %struct.TYPE_3__*, %struct.drm_local_map* }
%struct.TYPE_3__ = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_sg_mem* }
%struct.drm_sg_mem = type { %struct.page**, i64 }
%struct.drm_local_map = type { i64 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @drm_vm_sg_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_vm_sg_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_local_map*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_sg_mem*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %13 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 2
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  store %struct.vm_area_struct* %15, %struct.vm_area_struct** %4, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 2
  %18 = load %struct.drm_local_map*, %struct.drm_local_map** %17, align 8
  store %struct.drm_local_map* %18, %struct.drm_local_map** %5, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.drm_file*, %struct.drm_file** %22, align 8
  store %struct.drm_file* %23, %struct.drm_file** %6, align 8
  %24 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %25 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  store %struct.drm_device* %28, %struct.drm_device** %7, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %30, align 8
  store %struct.drm_sg_mem* %31, %struct.drm_sg_mem** %8, align 8
  %32 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %8, align 8
  %33 = icmp ne %struct.drm_sg_mem* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %1
  %37 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %8, align 8
  %38 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %37, i32 0, i32 0
  %39 = load %struct.page**, %struct.page*** %38, align 8
  %40 = icmp ne %struct.page** %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %42, i32* %2, align 4
  br label %78

43:                                               ; preds = %36
  %44 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %45 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %46, %49
  store i64 %50, i64* %9, align 8
  %51 = load %struct.drm_local_map*, %struct.drm_local_map** %5, align 8
  %52 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %55, align 8
  %57 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %53, %58
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @PAGE_SHIFT, align 8
  %62 = lshr i64 %60, %61
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @PAGE_SHIFT, align 8
  %65 = lshr i64 %63, %64
  %66 = add i64 %62, %65
  store i64 %66, i64* %11, align 8
  %67 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %8, align 8
  %68 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %67, i32 0, i32 0
  %69 = load %struct.page**, %struct.page*** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.page*, %struct.page** %69, i64 %70
  %72 = load %struct.page*, %struct.page** %71, align 8
  store %struct.page* %72, %struct.page** %12, align 8
  %73 = load %struct.page*, %struct.page** %12, align 8
  %74 = call i32 @get_page(%struct.page* %73)
  %75 = load %struct.page*, %struct.page** %12, align 8
  %76 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %77 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %76, i32 0, i32 1
  store %struct.page* %75, %struct.page** %77, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %43, %41, %34
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
