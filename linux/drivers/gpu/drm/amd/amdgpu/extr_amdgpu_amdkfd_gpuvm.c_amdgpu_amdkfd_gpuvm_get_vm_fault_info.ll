; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_get_vm_fault_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_get_vm_fault_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.kfd_vm_fault_info = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kfd_vm_fault_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_gpuvm_get_vm_fault_info(%struct.kgd_dev* %0, %struct.kfd_vm_fault_info* %1) #0 {
  %3 = alloca %struct.kgd_dev*, align 8
  %4 = alloca %struct.kfd_vm_fault_info*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %3, align 8
  store %struct.kfd_vm_fault_info* %1, %struct.kfd_vm_fault_info** %4, align 8
  %6 = load %struct.kgd_dev*, %struct.kgd_dev** %3, align 8
  %7 = bitcast %struct.kgd_dev* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %5, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @atomic_read(i32* %10)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %4, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.kfd_vm_fault_info*, %struct.kfd_vm_fault_info** %17, align 8
  %19 = bitcast %struct.kfd_vm_fault_info* %14 to i8*
  %20 = bitcast %struct.kfd_vm_fault_info* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = call i32 (...) @mb()
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  br label %26

26:                                               ; preds = %13, %2
  ret i32 0
}

declare dso_local i32 @atomic_read(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mb(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
