; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.tegra_bo = type { %struct.page** }
%struct.page = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @tegra_bo_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bo_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.tegra_bo*, align 8
  %7 = alloca %struct.page*, align 8
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
  %16 = call %struct.tegra_bo* @to_tegra_bo(%struct.drm_gem_object* %15)
  store %struct.tegra_bo* %16, %struct.tegra_bo** %6, align 8
  %17 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %18 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %17, i32 0, i32 0
  %19 = load %struct.page**, %struct.page*** %18, align 8
  %20 = icmp ne %struct.page** %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %22, i32* %2, align 4
  br label %45

23:                                               ; preds = %1
  %24 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = lshr i64 %30, %31
  store i64 %32, i64* %8, align 8
  %33 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %34 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %33, i32 0, i32 0
  %35 = load %struct.page**, %struct.page*** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.page*, %struct.page** %35, i64 %36
  %38 = load %struct.page*, %struct.page** %37, align 8
  store %struct.page* %38, %struct.page** %7, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %40 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %41 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.page*, %struct.page** %7, align 8
  %44 = call i32 @vmf_insert_page(%struct.vm_area_struct* %39, i64 %42, %struct.page* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %23, %21
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.tegra_bo* @to_tegra_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @vmf_insert_page(%struct.vm_area_struct*, i64, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
