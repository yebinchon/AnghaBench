; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_vm.c_ttm_bo_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i32, %struct.ttm_buffer_object*, i32* }
%struct.ttm_buffer_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ttm_bo_driver* }
%struct.ttm_bo_driver = type { i32 (%struct.ttm_buffer_object*, %struct.file.0*)* }
%struct.file.0 = type opaque
%struct.ttm_bo_device = type { i32 }

@DRM_FILE_PAGE_OFFSET_START = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ttm_bo_vm_ops = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_mmap(%struct.file* %0, %struct.vm_area_struct* %1, %struct.ttm_bo_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.ttm_bo_device*, align 8
  %8 = alloca %struct.ttm_bo_driver*, align 8
  %9 = alloca %struct.ttm_buffer_object*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.ttm_bo_device* %2, %struct.ttm_bo_device** %7, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DRM_FILE_PAGE_OFFSET_START, align 8
  %15 = icmp slt i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %94

22:                                               ; preds = %3
  %23 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %28 = call i32 @vma_pages(%struct.vm_area_struct* %27)
  %29 = call %struct.ttm_buffer_object* @ttm_bo_vm_lookup(%struct.ttm_bo_device* %23, i64 %26, i32 %28)
  store %struct.ttm_buffer_object* %29, %struct.ttm_buffer_object** %9, align 8
  %30 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %31 = icmp ne %struct.ttm_buffer_object* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %94

39:                                               ; preds = %22
  %40 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %41 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %43, align 8
  store %struct.ttm_bo_driver* %44, %struct.ttm_bo_driver** %8, align 8
  %45 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %8, align 8
  %46 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %45, i32 0, i32 0
  %47 = load i32 (%struct.ttm_buffer_object*, %struct.file.0*)*, i32 (%struct.ttm_buffer_object*, %struct.file.0*)** %46, align 8
  %48 = icmp ne i32 (%struct.ttm_buffer_object*, %struct.file.0*)* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %90

56:                                               ; preds = %39
  %57 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %8, align 8
  %58 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %57, i32 0, i32 0
  %59 = load i32 (%struct.ttm_buffer_object*, %struct.file.0*)*, i32 (%struct.ttm_buffer_object*, %struct.file.0*)** %58, align 8
  %60 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %61 = load %struct.file*, %struct.file** %5, align 8
  %62 = bitcast %struct.file* %61 to %struct.file.0*
  %63 = call i32 %59(%struct.ttm_buffer_object* %60, %struct.file.0* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %90

70:                                               ; preds = %56
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 3
  store i32* @ttm_bo_vm_ops, i32** %72, align 8
  %73 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 2
  store %struct.ttm_buffer_object* %73, %struct.ttm_buffer_object** %75, align 8
  %76 = load i32, i32* @VM_MIXEDMAP, align 4
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* @VM_IO, align 4
  %82 = load i32, i32* @VM_DONTEXPAND, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @VM_DONTDUMP, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  store i32 0, i32* %4, align 4
  br label %94

90:                                               ; preds = %69, %53
  %91 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %92 = call i32 @ttm_bo_put(%struct.ttm_buffer_object* %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %70, %36, %19
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ttm_buffer_object* @ttm_bo_vm_lookup(%struct.ttm_bo_device*, i64, i32) #1

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @ttm_bo_put(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
