; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64 }
%struct.kfd_process = type { i32 }
%struct.kfd_dev = type { i32 }

@current = common dso_local global i32 0, align 4
@KFD_MMAP_TYPE_MASK = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @kfd_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca %struct.kfd_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store %struct.kfd_dev* null, %struct.kfd_dev** %7, align 8
  %10 = load i32, i32* @current, align 4
  %11 = call %struct.kfd_process* @kfd_get_process(i32 %10)
  store %struct.kfd_process* %11, %struct.kfd_process** %6, align 8
  %12 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %13 = call i64 @IS_ERR(%struct.kfd_process* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.kfd_process* %16)
  store i32 %17, i32* %3, align 4
  br label %77

18:                                               ; preds = %2
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @KFD_MMAP_OFFSET_VALUE_GET(i64 %22)
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @KFD_MMAP_GPU_ID_GET(i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.kfd_dev* @kfd_device_by_id(i32 %31)
  store %struct.kfd_dev* %32, %struct.kfd_dev** %7, align 8
  br label %33

33:                                               ; preds = %30, %18
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @KFD_MMAP_TYPE_MASK, align 8
  %36 = and i64 %34, %35
  switch i64 %36, label %74 [
    i64 131, label %37
    i64 130, label %48
    i64 128, label %52
    i64 129, label %63
  ]

37:                                               ; preds = %33
  %38 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %39 = icmp ne %struct.kfd_dev* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %77

43:                                               ; preds = %37
  %44 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %45 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = call i32 @kfd_doorbell_mmap(%struct.kfd_dev* %44, %struct.kfd_process* %45, %struct.vm_area_struct* %46)
  store i32 %47, i32* %3, align 4
  br label %77

48:                                               ; preds = %33
  %49 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = call i32 @kfd_event_mmap(%struct.kfd_process* %49, %struct.vm_area_struct* %50)
  store i32 %51, i32* %3, align 4
  br label %77

52:                                               ; preds = %33
  %53 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %54 = icmp ne %struct.kfd_dev* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %77

58:                                               ; preds = %52
  %59 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %60 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %62 = call i32 @kfd_reserved_mem_mmap(%struct.kfd_dev* %59, %struct.kfd_process* %60, %struct.vm_area_struct* %61)
  store i32 %62, i32* %3, align 4
  br label %77

63:                                               ; preds = %33
  %64 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %65 = icmp ne %struct.kfd_dev* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %77

69:                                               ; preds = %63
  %70 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %71 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %73 = call i32 @kfd_mmio_mmap(%struct.kfd_dev* %70, %struct.kfd_process* %71, %struct.vm_area_struct* %72)
  store i32 %73, i32* %3, align 4
  br label %77

74:                                               ; preds = %33
  %75 = load i32, i32* @EFAULT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %69, %66, %58, %55, %48, %43, %40, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.kfd_process* @kfd_get_process(i32) #1

declare dso_local i64 @IS_ERR(%struct.kfd_process*) #1

declare dso_local i32 @PTR_ERR(%struct.kfd_process*) #1

declare dso_local i64 @KFD_MMAP_OFFSET_VALUE_GET(i64) #1

declare dso_local i32 @KFD_MMAP_GPU_ID_GET(i64) #1

declare dso_local %struct.kfd_dev* @kfd_device_by_id(i32) #1

declare dso_local i32 @kfd_doorbell_mmap(%struct.kfd_dev*, %struct.kfd_process*, %struct.vm_area_struct*) #1

declare dso_local i32 @kfd_event_mmap(%struct.kfd_process*, %struct.vm_area_struct*) #1

declare dso_local i32 @kfd_reserved_mem_mmap(%struct.kfd_dev*, %struct.kfd_process*, %struct.vm_area_struct*) #1

declare dso_local i32 @kfd_mmio_mmap(%struct.kfd_dev*, %struct.kfd_process*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
