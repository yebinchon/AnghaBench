; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_sync_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_sync_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.kgd_mem = type { i32, i32 }
%struct.amdgpu_sync = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_gpuvm_sync_memory(%struct.kgd_dev* %0, %struct.kgd_mem* %1, i32 %2) #0 {
  %4 = alloca %struct.kgd_dev*, align 8
  %5 = alloca %struct.kgd_mem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_sync, align 4
  %8 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %4, align 8
  store %struct.kgd_mem* %1, %struct.kgd_mem** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @amdgpu_sync_create(%struct.amdgpu_sync* %7)
  %10 = load %struct.kgd_mem*, %struct.kgd_mem** %5, align 8
  %11 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.kgd_mem*, %struct.kgd_mem** %5, align 8
  %14 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %13, i32 0, i32 1
  %15 = call i32 @amdgpu_sync_clone(i32* %14, %struct.amdgpu_sync* %7)
  %16 = load %struct.kgd_mem*, %struct.kgd_mem** %5, align 8
  %17 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @amdgpu_sync_wait(%struct.amdgpu_sync* %7, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = call i32 @amdgpu_sync_free(%struct.amdgpu_sync* %7)
  %22 = load i32, i32* %8, align 4
  ret i32 %22
}

declare dso_local i32 @amdgpu_sync_create(%struct.amdgpu_sync*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_sync_clone(i32*, %struct.amdgpu_sync*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdgpu_sync_wait(%struct.amdgpu_sync*, i32) #1

declare dso_local i32 @amdgpu_sync_free(%struct.amdgpu_sync*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
