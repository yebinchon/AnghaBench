; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.msm_gem_object = type { i64, i32 }
%struct.page = type { i32 }

@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@MSM_MADV_WILLNEED = common dso_local global i64 0, align 8
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Inserting %p pfn %lx, pa %lx\00", align 1
@PFN_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gem_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.msm_gem_object*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 1
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %14, %struct.vm_area_struct** %4, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 1
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %5, align 8
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %19 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %18)
  store %struct.msm_gem_object* %19, %struct.msm_gem_object** %6, align 8
  %20 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %21 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock_interruptible(i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %26, i32* %11, align 4
  br label %87

27:                                               ; preds = %1
  %28 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %29 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MSM_MADV_WILLNEED, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %38 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %40, i32* %2, align 4
  br label %89

41:                                               ; preds = %27
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %43 = call %struct.page** @get_pages(%struct.drm_gem_object* %42)
  store %struct.page** %43, %struct.page*** %7, align 8
  %44 = load %struct.page**, %struct.page*** %7, align 8
  %45 = call i64 @IS_ERR(%struct.page** %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.page**, %struct.page*** %7, align 8
  %49 = call i32 @PTR_ERR(%struct.page** %48)
  %50 = call i32 @vmf_error(i32 %49)
  store i32 %50, i32* %11, align 4
  br label %83

51:                                               ; preds = %41
  %52 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %53 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = lshr i64 %58, %59
  store i64 %60, i64* %9, align 8
  %61 = load %struct.page**, %struct.page*** %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.page*, %struct.page** %61, i64 %62
  %64 = load %struct.page*, %struct.page** %63, align 8
  %65 = call i64 @page_to_pfn(%struct.page* %64)
  store i64 %65, i64* %8, align 8
  %66 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %67 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @PAGE_SHIFT, align 8
  %73 = shl i64 %71, %72
  %74 = call i32 @VERB(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %69, i64 %70, i64 %73)
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %76 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %77 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i32, i32* @PFN_DEV, align 4
  %81 = call i32 @__pfn_to_pfn_t(i64 %79, i32 %80)
  %82 = call i32 @vmf_insert_mixed(%struct.vm_area_struct* %75, i64 %78, i32 %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %51, %47
  %84 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %85 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  br label %87

87:                                               ; preds = %83, %25
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %36
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.page** @get_pages(%struct.drm_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @vmf_error(i32) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @VERB(i8*, i8*, i64, i64) #1

declare dso_local i32 @vmf_insert_mixed(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @__pfn_to_pfn_t(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
