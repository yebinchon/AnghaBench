; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_process_free_gpuvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_process_free_gpuvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_mem = type { i32 }
%struct.kfd_process_device = type { i32, %struct.kfd_dev* }
%struct.kfd_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kgd_mem*, %struct.kfd_process_device*)* @kfd_process_free_gpuvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kfd_process_free_gpuvm(%struct.kgd_mem* %0, %struct.kfd_process_device* %1) #0 {
  %3 = alloca %struct.kgd_mem*, align 8
  %4 = alloca %struct.kfd_process_device*, align 8
  %5 = alloca %struct.kfd_dev*, align 8
  store %struct.kgd_mem* %0, %struct.kgd_mem** %3, align 8
  store %struct.kfd_process_device* %1, %struct.kfd_process_device** %4, align 8
  %6 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %7 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %6, i32 0, i32 1
  %8 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  store %struct.kfd_dev* %8, %struct.kfd_dev** %5, align 8
  %9 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %10 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.kgd_mem*, %struct.kgd_mem** %3, align 8
  %13 = load %struct.kfd_process_device*, %struct.kfd_process_device** %4, align 8
  %14 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @amdgpu_amdkfd_gpuvm_unmap_memory_from_gpu(i32 %11, %struct.kgd_mem* %12, i32 %15)
  %17 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %18 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kgd_mem*, %struct.kgd_mem** %3, align 8
  %21 = call i32 @amdgpu_amdkfd_gpuvm_free_memory_of_gpu(i32 %19, %struct.kgd_mem* %20)
  ret void
}

declare dso_local i32 @amdgpu_amdkfd_gpuvm_unmap_memory_from_gpu(i32, %struct.kgd_mem*, i32) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_free_memory_of_gpu(i32, %struct.kgd_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
