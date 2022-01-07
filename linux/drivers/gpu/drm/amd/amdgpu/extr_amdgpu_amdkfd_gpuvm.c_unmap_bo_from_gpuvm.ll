; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_unmap_bo_from_gpuvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_unmap_bo_from_gpuvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kfd_bo_va_list = type { i32, %struct.amdgpu_bo_va* }
%struct.amdgpu_bo_va = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_vm* }
%struct.amdgpu_vm = type { i32 }
%struct.amdgpu_sync = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.kfd_bo_va_list*, %struct.amdgpu_sync*)* @unmap_bo_from_gpuvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmap_bo_from_gpuvm(%struct.amdgpu_device* %0, %struct.kfd_bo_va_list* %1, %struct.amdgpu_sync* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.kfd_bo_va_list*, align 8
  %6 = alloca %struct.amdgpu_sync*, align 8
  %7 = alloca %struct.amdgpu_bo_va*, align 8
  %8 = alloca %struct.amdgpu_vm*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.kfd_bo_va_list* %1, %struct.kfd_bo_va_list** %5, align 8
  store %struct.amdgpu_sync* %2, %struct.amdgpu_sync** %6, align 8
  %9 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %5, align 8
  %10 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %9, i32 0, i32 1
  %11 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %10, align 8
  store %struct.amdgpu_bo_va* %11, %struct.amdgpu_bo_va** %7, align 8
  %12 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %7, align 8
  %13 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %14, align 8
  store %struct.amdgpu_vm* %15, %struct.amdgpu_vm** %8, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %7, align 8
  %18 = load %struct.kfd_bo_va_list*, %struct.kfd_bo_va_list** %5, align 8
  %19 = getelementptr inbounds %struct.kfd_bo_va_list, %struct.kfd_bo_va_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @amdgpu_vm_bo_unmap(%struct.amdgpu_device* %16, %struct.amdgpu_bo_va* %17, i32 %20)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %8, align 8
  %24 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %7, align 8
  %25 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %24, i32 0, i32 0
  %26 = call i32 @amdgpu_vm_clear_freed(%struct.amdgpu_device* %22, %struct.amdgpu_vm* %23, i32* %25)
  %27 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %6, align 8
  %28 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %7, align 8
  %29 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @amdgpu_sync_fence(i32* null, %struct.amdgpu_sync* %27, i32 %30, i32 0)
  ret i32 0
}

declare dso_local i32 @amdgpu_vm_bo_unmap(%struct.amdgpu_device*, %struct.amdgpu_bo_va*, i32) #1

declare dso_local i32 @amdgpu_vm_clear_freed(%struct.amdgpu_device*, %struct.amdgpu_vm*, i32*) #1

declare dso_local i32 @amdgpu_sync_fence(i32*, %struct.amdgpu_sync*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
