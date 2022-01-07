; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_import_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_import_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32 }
%struct.kfd_ioctl_import_dmabuf_args = type { i32, i32, i32, i32 }
%struct.kfd_process_device = type { i32 }
%struct.dma_buf = type { i32 }
%struct.kfd_dev = type { i32 }
%struct.kgd_mem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_import_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_import_dmabuf(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kfd_ioctl_import_dmabuf_args*, align 8
  %9 = alloca %struct.kfd_process_device*, align 8
  %10 = alloca %struct.dma_buf*, align 8
  %11 = alloca %struct.kfd_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.kfd_ioctl_import_dmabuf_args*
  store %struct.kfd_ioctl_import_dmabuf_args* %17, %struct.kfd_ioctl_import_dmabuf_args** %8, align 8
  %18 = load %struct.kfd_ioctl_import_dmabuf_args*, %struct.kfd_ioctl_import_dmabuf_args** %8, align 8
  %19 = getelementptr inbounds %struct.kfd_ioctl_import_dmabuf_args, %struct.kfd_ioctl_import_dmabuf_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.kfd_dev* @kfd_device_by_id(i32 %20)
  store %struct.kfd_dev* %21, %struct.kfd_dev** %11, align 8
  %22 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %23 = icmp ne %struct.kfd_dev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %103

27:                                               ; preds = %3
  %28 = load %struct.kfd_ioctl_import_dmabuf_args*, %struct.kfd_ioctl_import_dmabuf_args** %8, align 8
  %29 = getelementptr inbounds %struct.kfd_ioctl_import_dmabuf_args, %struct.kfd_ioctl_import_dmabuf_args* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.kfd_process_device* @dma_buf_get(i32 %30)
  %32 = bitcast %struct.kfd_process_device* %31 to %struct.dma_buf*
  store %struct.dma_buf* %32, %struct.dma_buf** %10, align 8
  %33 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %34 = bitcast %struct.dma_buf* %33 to %struct.kfd_process_device*
  %35 = call i64 @IS_ERR(%struct.kfd_process_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %39 = bitcast %struct.dma_buf* %38 to %struct.kfd_process_device*
  %40 = call i32 @PTR_ERR(%struct.kfd_process_device* %39)
  store i32 %40, i32* %4, align 4
  br label %103

41:                                               ; preds = %27
  %42 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %43 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %46 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %47 = call %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev* %45, %struct.kfd_process* %46)
  store %struct.kfd_process_device* %47, %struct.kfd_process_device** %9, align 8
  %48 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %49 = call i64 @IS_ERR(%struct.kfd_process_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %53 = call i32 @PTR_ERR(%struct.kfd_process_device* %52)
  store i32 %53, i32* %15, align 4
  br label %98

54:                                               ; preds = %41
  %55 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %56 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %59 = bitcast %struct.dma_buf* %58 to %struct.kfd_process_device*
  %60 = load %struct.kfd_ioctl_import_dmabuf_args*, %struct.kfd_ioctl_import_dmabuf_args** %8, align 8
  %61 = getelementptr inbounds %struct.kfd_ioctl_import_dmabuf_args, %struct.kfd_ioctl_import_dmabuf_args* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %64 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = bitcast i8** %14 to %struct.kgd_mem**
  %67 = call i32 @amdgpu_amdkfd_gpuvm_import_dmabuf(i32 %57, %struct.kfd_process_device* %59, i32 %62, i32 %65, %struct.kgd_mem** %66, i32* %13, i32* null)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %98

71:                                               ; preds = %54
  %72 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @kfd_process_device_create_obj_handle(%struct.kfd_process_device* %72, i8* %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @EFAULT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  br label %91

80:                                               ; preds = %71
  %81 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %82 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.kfd_ioctl_import_dmabuf_args*, %struct.kfd_ioctl_import_dmabuf_args** %8, align 8
  %85 = getelementptr inbounds %struct.kfd_ioctl_import_dmabuf_args, %struct.kfd_ioctl_import_dmabuf_args* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @MAKE_HANDLE(i32 %86, i32 %87)
  %89 = load %struct.kfd_ioctl_import_dmabuf_args*, %struct.kfd_ioctl_import_dmabuf_args** %8, align 8
  %90 = getelementptr inbounds %struct.kfd_ioctl_import_dmabuf_args, %struct.kfd_ioctl_import_dmabuf_args* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %4, align 4
  br label %103

91:                                               ; preds = %77
  %92 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %93 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = bitcast i8* %95 to %struct.kgd_mem*
  %97 = call i32 @amdgpu_amdkfd_gpuvm_free_memory_of_gpu(i32 %94, %struct.kgd_mem* %96)
  br label %98

98:                                               ; preds = %91, %70, %51
  %99 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %100 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %80, %37, %24
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.kfd_dev* @kfd_device_by_id(i32) #1

declare dso_local %struct.kfd_process_device* @dma_buf_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.kfd_process_device*) #1

declare dso_local i32 @PTR_ERR(%struct.kfd_process_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_import_dmabuf(i32, %struct.kfd_process_device*, i32, i32, %struct.kgd_mem**, i32*, i32*) #1

declare dso_local i32 @kfd_process_device_create_obj_handle(%struct.kfd_process_device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @MAKE_HANDLE(i32, i32) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_free_memory_of_gpu(i32, %struct.kgd_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
