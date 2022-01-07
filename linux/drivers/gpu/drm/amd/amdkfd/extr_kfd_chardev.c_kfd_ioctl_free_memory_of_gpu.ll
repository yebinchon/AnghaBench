; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_free_memory_of_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_free_memory_of_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32 }
%struct.kfd_ioctl_free_memory_of_gpu_args = type { i32 }
%struct.kfd_process_device = type { i32 }
%struct.kfd_dev = type { i32 }
%struct.kgd_mem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Process device data doesn't exist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_free_memory_of_gpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_free_memory_of_gpu(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kfd_ioctl_free_memory_of_gpu_args*, align 8
  %9 = alloca %struct.kfd_process_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.kfd_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.kfd_ioctl_free_memory_of_gpu_args*
  store %struct.kfd_ioctl_free_memory_of_gpu_args* %14, %struct.kfd_ioctl_free_memory_of_gpu_args** %8, align 8
  %15 = load %struct.kfd_ioctl_free_memory_of_gpu_args*, %struct.kfd_ioctl_free_memory_of_gpu_args** %8, align 8
  %16 = getelementptr inbounds %struct.kfd_ioctl_free_memory_of_gpu_args, %struct.kfd_ioctl_free_memory_of_gpu_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GET_GPU_ID(i32 %17)
  %19 = call %struct.kfd_dev* @kfd_device_by_id(i32 %18)
  store %struct.kfd_dev* %19, %struct.kfd_dev** %11, align 8
  %20 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %21 = icmp ne %struct.kfd_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %72

25:                                               ; preds = %3
  %26 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %27 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %30 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %31 = call %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev* %29, %struct.kfd_process* %30)
  store %struct.kfd_process_device* %31, %struct.kfd_process_device** %9, align 8
  %32 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %33 = icmp ne %struct.kfd_process_device* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %12, align 4
  br label %67

38:                                               ; preds = %25
  %39 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %40 = load %struct.kfd_ioctl_free_memory_of_gpu_args*, %struct.kfd_ioctl_free_memory_of_gpu_args** %8, align 8
  %41 = getelementptr inbounds %struct.kfd_ioctl_free_memory_of_gpu_args, %struct.kfd_ioctl_free_memory_of_gpu_args* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @GET_IDR_HANDLE(i32 %42)
  %44 = call i8* @kfd_process_device_translate_handle(%struct.kfd_process_device* %39, i32 %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %67

50:                                               ; preds = %38
  %51 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %52 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = bitcast i8* %54 to %struct.kgd_mem*
  %56 = call i32 @amdgpu_amdkfd_gpuvm_free_memory_of_gpu(i32 %53, %struct.kgd_mem* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %50
  %60 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %61 = load %struct.kfd_ioctl_free_memory_of_gpu_args*, %struct.kfd_ioctl_free_memory_of_gpu_args** %8, align 8
  %62 = getelementptr inbounds %struct.kfd_ioctl_free_memory_of_gpu_args, %struct.kfd_ioctl_free_memory_of_gpu_args* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @GET_IDR_HANDLE(i32 %63)
  %65 = call i32 @kfd_process_device_remove_obj_handle(%struct.kfd_process_device* %60, i32 %64)
  br label %66

66:                                               ; preds = %59, %50
  br label %67

67:                                               ; preds = %66, %47, %34
  %68 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %69 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %22
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.kfd_dev* @kfd_device_by_id(i32) #1

declare dso_local i32 @GET_GPU_ID(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @kfd_process_device_translate_handle(%struct.kfd_process_device*, i32) #1

declare dso_local i32 @GET_IDR_HANDLE(i32) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_free_memory_of_gpu(i32, %struct.kgd_mem*) #1

declare dso_local i32 @kfd_process_device_remove_obj_handle(%struct.kfd_process_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
