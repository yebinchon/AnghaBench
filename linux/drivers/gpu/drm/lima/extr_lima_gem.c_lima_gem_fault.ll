; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.lima_bo = type { i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PFN_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @lima_gem_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_gem_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.lima_bo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %8 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %9 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 1
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  store %struct.vm_area_struct* %10, %struct.vm_area_struct** %3, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 1
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  store %struct.drm_gem_object* %13, %struct.drm_gem_object** %4, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %15 = call %struct.lima_bo* @to_lima_bo(%struct.drm_gem_object* %14)
  store %struct.lima_bo* %15, %struct.lima_bo** %5, align 8
  %16 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  store i64 %24, i64* %7, align 8
  %25 = load %struct.lima_bo*, %struct.lima_bo** %5, align 8
  %26 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @page_to_pfn(i32 %30)
  %32 = load i32, i32* @PFN_DEV, align 4
  %33 = call i32 @__pfn_to_pfn_t(i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %35 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %36 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @vmf_insert_mixed(%struct.vm_area_struct* %34, i64 %37, i32 %38)
  ret i32 %39
}

declare dso_local %struct.lima_bo* @to_lima_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @__pfn_to_pfn_t(i32, i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @vmf_insert_mixed(%struct.vm_area_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
