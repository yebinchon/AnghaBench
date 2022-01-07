; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_fbdev_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_fbdev_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i32, %struct.ttm_buffer_object*, i32* }
%struct.ttm_buffer_object = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@ttm_bo_vm_ops = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_fbdev_mmap(%struct.vm_area_struct* %0, %struct.ttm_buffer_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.ttm_buffer_object*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %5, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EACCES, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %15 = call i32 @ttm_bo_get(%struct.ttm_buffer_object* %14)
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 3
  store i32* @ttm_bo_vm_ops, i32** %17, align 8
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 2
  store %struct.ttm_buffer_object* %18, %struct.ttm_buffer_object** %20, align 8
  %21 = load i32, i32* @VM_MIXEDMAP, align 4
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @VM_IO, align 4
  %27 = load i32, i32* @VM_DONTEXPAND, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %13, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ttm_bo_get(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
