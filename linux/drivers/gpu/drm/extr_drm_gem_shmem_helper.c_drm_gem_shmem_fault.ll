; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.drm_gem_shmem_object = type { %struct.page** }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @drm_gem_shmem_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_gem_shmem_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.drm_gem_shmem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 2
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %4, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  store %struct.drm_gem_object* %14, %struct.drm_gem_object** %5, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %16 = call %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object* %15)
  store %struct.drm_gem_shmem_object* %16, %struct.drm_gem_shmem_object** %6, align 8
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %18 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %23 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %1
  %28 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %6, align 8
  %29 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %28, i32 0, i32 0
  %30 = load %struct.page**, %struct.page*** %29, align 8
  %31 = icmp ne %struct.page** %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27, %1
  %37 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %37, i32* %2, align 4
  br label %54

38:                                               ; preds = %27
  %39 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %6, align 8
  %40 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %39, i32 0, i32 0
  %41 = load %struct.page**, %struct.page*** %40, align 8
  %42 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %43 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.page*, %struct.page** %41, i64 %45
  %47 = load %struct.page*, %struct.page** %46, align 8
  store %struct.page* %47, %struct.page** %8, align 8
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %49 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %50 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.page*, %struct.page** %8, align 8
  %53 = call i32 @vmf_insert_page(%struct.vm_area_struct* %48, i32 %51, %struct.page* %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %38, %36
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.drm_gem_shmem_object* @to_drm_gem_shmem_obj(%struct.drm_gem_object*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @vmf_insert_page(%struct.vm_area_struct*, i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
