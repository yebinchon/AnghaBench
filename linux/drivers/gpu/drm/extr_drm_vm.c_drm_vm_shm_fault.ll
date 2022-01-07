; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vm.c_drm_vm_shm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vm.c_drm_vm_shm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.page*, %struct.vm_area_struct* }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, %struct.drm_local_map* }
%struct.drm_local_map = type { i64 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"shm_fault 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @drm_vm_shm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_vm_shm_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_local_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 2
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %4, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load %struct.drm_local_map*, %struct.drm_local_map** %13, align 8
  store %struct.drm_local_map* %14, %struct.drm_local_map** %5, align 8
  %15 = load %struct.drm_local_map*, %struct.drm_local_map** %5, align 8
  %16 = icmp ne %struct.drm_local_map* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %21 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %6, align 8
  %27 = load %struct.drm_local_map*, %struct.drm_local_map** %5, align 8
  %28 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call %struct.page* @vmalloc_to_page(i8* %33)
  store %struct.page* %34, %struct.page** %8, align 8
  %35 = load %struct.page*, %struct.page** %8, align 8
  %36 = icmp ne %struct.page* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %19
  %38 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %38, i32* %2, align 4
  br label %47

39:                                               ; preds = %19
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = call i32 @get_page(%struct.page* %40)
  %42 = load %struct.page*, %struct.page** %8, align 8
  %43 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %44 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %43, i32 0, i32 1
  store %struct.page* %42, %struct.page** %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %39, %37, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
