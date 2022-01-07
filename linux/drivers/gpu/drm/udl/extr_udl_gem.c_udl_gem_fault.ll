; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_gem.c_udl_gem_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_gem.c_udl_gem_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32 }
%struct.udl_gem_object = type { %struct.page** }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udl_gem_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.udl_gem_object*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %8 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %9 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 1
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  store %struct.vm_area_struct* %10, %struct.vm_area_struct** %4, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.udl_gem_object* @to_udl_bo(i32 %13)
  store %struct.udl_gem_object* %14, %struct.udl_gem_object** %5, align 8
  %15 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %16 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %17, %20
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = lshr i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.udl_gem_object*, %struct.udl_gem_object** %5, align 8
  %25 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %24, i32 0, i32 0
  %26 = load %struct.page**, %struct.page*** %25, align 8
  %27 = icmp ne %struct.page** %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %29, i32* %2, align 4
  br label %44

30:                                               ; preds = %1
  %31 = load %struct.udl_gem_object*, %struct.udl_gem_object** %5, align 8
  %32 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %31, i32 0, i32 0
  %33 = load %struct.page**, %struct.page*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.page*, %struct.page** %33, i64 %35
  %37 = load %struct.page*, %struct.page** %36, align 8
  store %struct.page* %37, %struct.page** %6, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %39 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %40 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.page*, %struct.page** %6, align 8
  %43 = call i32 @vmf_insert_page(%struct.vm_area_struct* %38, i32 %41, %struct.page* %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %30, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.udl_gem_object* @to_udl_bo(i32) #1

declare dso_local i32 @vmf_insert_page(%struct.vm_area_struct*, i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
