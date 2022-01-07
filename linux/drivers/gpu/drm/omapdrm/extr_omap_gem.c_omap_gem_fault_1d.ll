; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_fault_1d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_fault_1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vm_area_struct = type { i64 }
%struct.vm_fault = type { i64 }
%struct.omap_gem_object = type { i64, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Inserting %p pfn %lx, pa %lx\00", align 1
@PFN_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*, %struct.vm_area_struct*, %struct.vm_fault*)* @omap_gem_fault_1d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_gem_fault_1d(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1, %struct.vm_fault* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.vm_fault*, align 8
  %7 = alloca %struct.omap_gem_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store %struct.vm_fault* %2, %struct.vm_fault** %6, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %11 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %10)
  store %struct.omap_gem_object* %11, %struct.omap_gem_object** %7, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %6, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  %19 = load i64, i64* @PAGE_SHIFT, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %9, align 8
  %21 = load %struct.omap_gem_object*, %struct.omap_gem_object** %7, align 8
  %22 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @omap_gem_cpu_sync_page(%struct.drm_gem_object* %26, i64 %27)
  %29 = load %struct.omap_gem_object*, %struct.omap_gem_object** %7, align 8
  %30 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @page_to_pfn(i32 %34)
  store i64 %35, i64* %8, align 8
  br label %50

36:                                               ; preds = %3
  %37 = load %struct.omap_gem_object*, %struct.omap_gem_object** %7, align 8
  %38 = call i32 @omap_gem_is_contiguous(%struct.omap_gem_object* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.omap_gem_object*, %struct.omap_gem_object** %7, align 8
  %44 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PAGE_SHIFT, align 8
  %47 = lshr i64 %45, %46
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %47, %48
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %36, %25
  %51 = load %struct.vm_fault*, %struct.vm_fault** %6, align 8
  %52 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @PAGE_SHIFT, align 8
  %58 = shl i64 %56, %57
  %59 = call i32 @VERB(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %54, i64 %55, i64 %58)
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %61 = load %struct.vm_fault*, %struct.vm_fault** %6, align 8
  %62 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* @PFN_DEV, align 4
  %66 = call i32 @__pfn_to_pfn_t(i64 %64, i32 %65)
  %67 = call i32 @vmf_insert_mixed(%struct.vm_area_struct* %60, i64 %63, i32 %66)
  ret i32 %67
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @omap_gem_cpu_sync_page(%struct.drm_gem_object*, i64) #1

declare dso_local i64 @page_to_pfn(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @omap_gem_is_contiguous(%struct.omap_gem_object*) #1

declare dso_local i32 @VERB(i8*, i8*, i64, i64) #1

declare dso_local i32 @vmf_insert_mixed(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @__pfn_to_pfn_t(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
