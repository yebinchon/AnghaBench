; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_reserved_mem_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_reserved_mem_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32 }
%struct.kfd_process = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.kfd_process_device = type { %struct.qcm_process_device }
%struct.qcm_process_device = type { i8* }

@KFD_CWSR_TBA_TMA_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Incorrect CWSR mapping size.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Error allocating per process CWSR buffer.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_NORESERVE = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_reserved_mem_mmap(%struct.kfd_dev* %0, %struct.kfd_process* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kfd_dev*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.kfd_process_device*, align 8
  %9 = alloca %struct.qcm_process_device*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  %17 = load i64, i64* @KFD_CWSR_TBA_TMA_SIZE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %82

23:                                               ; preds = %3
  %24 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %25 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %26 = call %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev* %24, %struct.kfd_process* %25)
  store %struct.kfd_process_device* %26, %struct.kfd_process_device** %8, align 8
  %27 = load %struct.kfd_process_device*, %struct.kfd_process_device** %8, align 8
  %28 = icmp ne %struct.kfd_process_device* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %82

32:                                               ; preds = %23
  %33 = load %struct.kfd_process_device*, %struct.kfd_process_device** %8, align 8
  %34 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %33, i32 0, i32 0
  store %struct.qcm_process_device* %34, %struct.qcm_process_device** %9, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load i32, i32* @__GFP_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = load i64, i64* @KFD_CWSR_TBA_TMA_SIZE, align 8
  %39 = call i32 @get_order(i64 %38)
  %40 = call i64 @__get_free_pages(i32 %37, i32 %39)
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.qcm_process_device*, %struct.qcm_process_device** %9, align 8
  %43 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.qcm_process_device*, %struct.qcm_process_device** %9, align 8
  %45 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %32
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %82

52:                                               ; preds = %32
  %53 = load i32, i32* @VM_IO, align 4
  %54 = load i32, i32* @VM_DONTCOPY, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @VM_DONTEXPAND, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @VM_NORESERVE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @VM_DONTDUMP, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @VM_PFNMAP, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.qcm_process_device*, %struct.qcm_process_device** %9, align 8
  %73 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @__pa(i8* %74)
  %76 = call i32 @PFN_DOWN(i32 %75)
  %77 = load i64, i64* @KFD_CWSR_TBA_TMA_SIZE, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @remap_pfn_range(%struct.vm_area_struct* %68, i64 %71, i32 %76, i64 %77, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %52, %48, %29, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

declare dso_local i32 @PFN_DOWN(i32) #1

declare dso_local i32 @__pa(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
