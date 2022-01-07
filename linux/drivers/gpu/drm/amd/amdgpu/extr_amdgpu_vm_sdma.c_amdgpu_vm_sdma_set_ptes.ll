; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm_sdma.c_amdgpu_vm_sdma_set_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm_sdma.c_amdgpu_vm_sdma_set_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_update_params = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32 }
%struct.amdgpu_bo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32, i32, i32, i32)* @amdgpu_vm_sdma_set_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_sdma_set_ptes(%struct.amdgpu_vm_update_params* %0, %struct.amdgpu_bo* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.amdgpu_vm_update_params*, align 8
  %9 = alloca %struct.amdgpu_bo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.amdgpu_ib*, align 8
  store %struct.amdgpu_vm_update_params* %0, %struct.amdgpu_vm_update_params** %8, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %8, align 8
  %17 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %19, align 8
  store %struct.amdgpu_ib* %20, %struct.amdgpu_ib** %15, align 8
  %21 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %22 = call i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %21)
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @trace_amdgpu_vm_set_ptes(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %35, label %47

35:                                               ; preds = %7
  %36 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %8, align 8
  %37 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %14, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @amdgpu_vm_write_pte(i32 %38, %struct.amdgpu_ib* %39, i32 %40, i32 %43, i32 %44, i32 %45)
  br label %58

47:                                               ; preds = %7
  %48 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %8, align 8
  %49 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @amdgpu_vm_set_pte_pde(i32 %50, %struct.amdgpu_ib* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %47, %35
  ret void
}

declare dso_local i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @trace_amdgpu_vm_set_ptes(i32, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_vm_write_pte(i32, %struct.amdgpu_ib*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_vm_set_pte_pde(i32, %struct.amdgpu_ib*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
