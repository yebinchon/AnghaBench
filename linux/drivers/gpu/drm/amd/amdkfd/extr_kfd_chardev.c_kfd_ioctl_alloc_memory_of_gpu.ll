; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_alloc_memory_of_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_alloc_memory_of_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32 }
%struct.kfd_ioctl_alloc_memory_of_gpu_args = type { i32, i32, i64, i32, i32, i32 }
%struct.kfd_process_device = type { i32 }
%struct.kfd_dev = type { i32 }
%struct.kgd_mem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KFD_IOC_ALLOC_MEM_FLAGS_PUBLIC = common dso_local global i32 0, align 4
@KFD_IOC_ALLOC_MEM_FLAGS_VRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Alloc host visible vram on small bar is not allowed\0A\00", align 1
@KFD_IOC_ALLOC_MEM_FLAGS_DOORBELL = common dso_local global i32 0, align 4
@KFD_IOC_ALLOC_MEM_FLAGS_MMIO_REMAP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@KFD_MMAP_TYPE_MMIO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_alloc_memory_of_gpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_alloc_memory_of_gpu(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kfd_ioctl_alloc_memory_of_gpu_args*, align 8
  %9 = alloca %struct.kfd_process_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.kfd_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.kfd_ioctl_alloc_memory_of_gpu_args*
  store %struct.kfd_ioctl_alloc_memory_of_gpu_args* %17, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %18 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %19 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %14, align 4
  %21 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %22 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %15, align 4
  %24 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %25 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %191

31:                                               ; preds = %3
  %32 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %33 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.kfd_dev* @kfd_device_by_id(i32 %34)
  store %struct.kfd_dev* %35, %struct.kfd_dev** %11, align 8
  %36 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %37 = icmp ne %struct.kfd_dev* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %191

41:                                               ; preds = %31
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @KFD_IOC_ALLOC_MEM_FLAGS_PUBLIC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @KFD_IOC_ALLOC_MEM_FLAGS_VRAM, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %53 = call i32 @kfd_dev_is_large_bar(%struct.kfd_dev* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %191

59:                                               ; preds = %51, %46, %41
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @KFD_IOC_ALLOC_MEM_FLAGS_DOORBELL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %66 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %69 = call i64 @kfd_doorbell_process_slice(%struct.kfd_dev* %68)
  %70 = icmp ne i64 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %191

74:                                               ; preds = %64
  %75 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %76 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %77 = call i32 @kfd_get_process_doorbells(%struct.kfd_dev* %75, %struct.kfd_process* %76)
  store i32 %77, i32* %14, align 4
  br label %104

78:                                               ; preds = %59
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @KFD_IOC_ALLOC_MEM_FLAGS_MMIO_REMAP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %85 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PAGE_SIZE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %191

92:                                               ; preds = %83
  %93 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %94 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @amdgpu_amdkfd_get_mmio_remap_phys_addr(i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %191

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %78
  br label %104

104:                                              ; preds = %103, %74
  %105 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %106 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %105, i32 0, i32 0
  %107 = call i32 @mutex_lock(i32* %106)
  %108 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %109 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %110 = call %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev* %108, %struct.kfd_process* %109)
  store %struct.kfd_process_device* %110, %struct.kfd_process_device** %9, align 8
  %111 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %112 = call i64 @IS_ERR(%struct.kfd_process_device* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %116 = call i64 @PTR_ERR(%struct.kfd_process_device* %115)
  store i64 %116, i64* %13, align 8
  br label %185

117:                                              ; preds = %104
  %118 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %119 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %122 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %125 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %128 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = bitcast i8** %10 to %struct.kgd_mem**
  %131 = load i32, i32* %15, align 4
  %132 = call i64 @amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu(i32 %120, i32 %123, i64 %126, i32 %129, %struct.kgd_mem** %130, i32* %14, i32 %131)
  store i64 %132, i64* %13, align 8
  %133 = load i64, i64* %13, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %117
  br label %185

136:                                              ; preds = %117
  %137 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @kfd_process_device_create_obj_handle(%struct.kfd_process_device* %137, i8* %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i64, i64* @EFAULT, align 8
  %144 = sub nsw i64 0, %143
  store i64 %144, i64* %13, align 8
  br label %178

145:                                              ; preds = %136
  %146 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %147 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %146, i32 0, i32 0
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %150 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @MAKE_HANDLE(i32 %151, i32 %152)
  %154 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %155 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %158 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @KFD_IOC_ALLOC_MEM_FLAGS_MMIO_REMAP, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %145
  %164 = load i32, i32* @KFD_MMAP_TYPE_MMIO, align 4
  %165 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %166 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @KFD_MMAP_GPU_ID(i32 %167)
  %169 = or i32 %164, %168
  %170 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %171 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @PAGE_SHIFT, align 4
  %173 = load %struct.kfd_ioctl_alloc_memory_of_gpu_args*, %struct.kfd_ioctl_alloc_memory_of_gpu_args** %8, align 8
  %174 = getelementptr inbounds %struct.kfd_ioctl_alloc_memory_of_gpu_args, %struct.kfd_ioctl_alloc_memory_of_gpu_args* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = shl i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %163, %145
  store i32 0, i32* %4, align 4
  br label %191

178:                                              ; preds = %142
  %179 = load %struct.kfd_dev*, %struct.kfd_dev** %11, align 8
  %180 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i8*, i8** %10, align 8
  %183 = bitcast i8* %182 to %struct.kgd_mem*
  %184 = call i32 @amdgpu_amdkfd_gpuvm_free_memory_of_gpu(i32 %181, %struct.kgd_mem* %183)
  br label %185

185:                                              ; preds = %178, %135, %114
  %186 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %187 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %186, i32 0, i32 0
  %188 = call i32 @mutex_unlock(i32* %187)
  %189 = load i64, i64* %13, align 8
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %185, %177, %99, %89, %71, %55, %38, %28
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.kfd_dev* @kfd_device_by_id(i32) #1

declare dso_local i32 @kfd_dev_is_large_bar(%struct.kfd_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @kfd_doorbell_process_slice(%struct.kfd_dev*) #1

declare dso_local i32 @kfd_get_process_doorbells(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i32 @amdgpu_amdkfd_get_mmio_remap_phys_addr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i64 @IS_ERR(%struct.kfd_process_device*) #1

declare dso_local i64 @PTR_ERR(%struct.kfd_process_device*) #1

declare dso_local i64 @amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu(i32, i32, i64, i32, %struct.kgd_mem**, i32*, i32) #1

declare dso_local i32 @kfd_process_device_create_obj_handle(%struct.kfd_process_device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @MAKE_HANDLE(i32, i32) #1

declare dso_local i32 @KFD_MMAP_GPU_ID(i32) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_free_memory_of_gpu(i32, %struct.kgd_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
