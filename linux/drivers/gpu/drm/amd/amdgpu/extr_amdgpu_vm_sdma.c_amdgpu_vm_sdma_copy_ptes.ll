; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm_sdma.c_amdgpu_vm_sdma_copy_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm_sdma.c_amdgpu_vm_sdma_copy_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_update_params = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32 }
%struct.amdgpu_bo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32)* @amdgpu_vm_sdma_copy_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_sdma_copy_ptes(%struct.amdgpu_vm_update_params* %0, %struct.amdgpu_bo* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_vm_update_params*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_ib*, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_vm_update_params* %0, %struct.amdgpu_vm_update_params** %5, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %14, align 8
  store %struct.amdgpu_ib* %15, %struct.amdgpu_ib** %9, align 8
  %16 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %9, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %26 = call i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %25)
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @trace_amdgpu_vm_copy_ptes(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @amdgpu_vm_copy_pte(i32 %37, %struct.amdgpu_ib* %38, i32 %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @trace_amdgpu_vm_copy_ptes(i32, i32, i32) #1

declare dso_local i32 @amdgpu_vm_copy_pte(i32, %struct.amdgpu_ib*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
