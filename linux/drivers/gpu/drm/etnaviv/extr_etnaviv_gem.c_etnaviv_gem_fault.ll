; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.etnaviv_gem_object = type { i32 }
%struct.page = type { i32 }

@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Inserting %p pfn %lx, pa %lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_gem_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.etnaviv_gem_object*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %11 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %12 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %11, i32 0, i32 1
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  store %struct.vm_area_struct* %13, %struct.vm_area_struct** %4, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %15, align 8
  store %struct.drm_gem_object* %16, %struct.drm_gem_object** %5, align 8
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %18 = call %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object* %17)
  store %struct.etnaviv_gem_object* %18, %struct.etnaviv_gem_object** %6, align 8
  %19 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %6, align 8
  %20 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock_interruptible(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %25, i32* %2, align 4
  br label %71

26:                                               ; preds = %1
  %27 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %6, align 8
  %28 = call %struct.page** @etnaviv_gem_get_pages(%struct.etnaviv_gem_object* %27)
  store %struct.page** %28, %struct.page*** %7, align 8
  %29 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %6, align 8
  %30 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.page**, %struct.page*** %7, align 8
  %33 = call i64 @IS_ERR(%struct.page** %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.page**, %struct.page*** %7, align 8
  %37 = call i32 @PTR_ERR(%struct.page** %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @vmf_error(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %71

40:                                               ; preds = %26
  %41 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %42 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %43, %46
  %48 = load i64, i64* @PAGE_SHIFT, align 8
  %49 = lshr i64 %47, %48
  store i64 %49, i64* %9, align 8
  %50 = load %struct.page**, %struct.page*** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.page*, %struct.page** %50, i64 %51
  %53 = load %struct.page*, %struct.page** %52, align 8
  store %struct.page* %53, %struct.page** %8, align 8
  %54 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %55 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.page*, %struct.page** %8, align 8
  %59 = call i64 @page_to_pfn(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %8, align 8
  %61 = call i64 @page_to_pfn(%struct.page* %60)
  %62 = load i64, i64* @PAGE_SHIFT, align 8
  %63 = shl i64 %61, %62
  %64 = call i32 @VERB(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %57, i64 %59, i64 %63)
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %66 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %67 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.page*, %struct.page** %8, align 8
  %70 = call i32 @vmf_insert_page(%struct.vm_area_struct* %65, i64 %68, %struct.page* %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %40, %35, %24
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.page** @etnaviv_gem_get_pages(%struct.etnaviv_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local i32 @vmf_error(i32) #1

declare dso_local i32 @VERB(i8*, i8*, i64, i64) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @vmf_insert_page(%struct.vm_area_struct*, i64, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
