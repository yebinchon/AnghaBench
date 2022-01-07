; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_update_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_update_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_vm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.amdgpu_vm_update_params*, i8*, %struct.dma_fence*)*, i32 (%struct.amdgpu_vm_update_params*, %struct.dma_fence**)* }
%struct.amdgpu_vm_update_params = type { i32*, %struct.amdgpu_vm*, %struct.amdgpu_device* }

@AMDGPU_FENCE_OWNER_VM = common dso_local global i8* null, align 8
@AMDGPU_PTE_VALID = common dso_local global i32 0, align 4
@AMDGPU_FENCE_OWNER_KFD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.dma_fence*, i32*, %struct.amdgpu_vm*, i32, i32, i32, i32, %struct.dma_fence**)* @amdgpu_vm_bo_update_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vm_bo_update_mapping(%struct.amdgpu_device* %0, %struct.dma_fence* %1, i32* %2, %struct.amdgpu_vm* %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.dma_fence** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca %struct.dma_fence*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.amdgpu_vm*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dma_fence**, align 8
  %20 = alloca %struct.amdgpu_vm_update_params, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %11, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %12, align 8
  store i32* %2, i32** %13, align 8
  store %struct.amdgpu_vm* %3, %struct.amdgpu_vm** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.dma_fence** %8, %struct.dma_fence*** %19, align 8
  %23 = load i8*, i8** @AMDGPU_FENCE_OWNER_VM, align 8
  store i8* %23, i8** %21, align 8
  %24 = call i32 @memset(%struct.amdgpu_vm_update_params* %20, i32 0, i32 24)
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %26 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %20, i32 0, i32 2
  store %struct.amdgpu_device* %25, %struct.amdgpu_device** %26, align 8
  %27 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %14, align 8
  %28 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %20, i32 0, i32 1
  store %struct.amdgpu_vm* %27, %struct.amdgpu_vm** %28, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %20, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @AMDGPU_PTE_VALID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %9
  %36 = load i8*, i8** @AMDGPU_FENCE_OWNER_KFD, align 8
  store i8* %36, i8** %21, align 8
  br label %37

37:                                               ; preds = %35, %9
  %38 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %14, align 8
  %39 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.amdgpu_vm_update_params*, i8*, %struct.dma_fence*)*, i32 (%struct.amdgpu_vm_update_params*, i8*, %struct.dma_fence*)** %41, align 8
  %43 = load i8*, i8** %21, align 8
  %44 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %45 = call i32 %42(%struct.amdgpu_vm_update_params* %20, i8* %43, %struct.dma_fence* %44)
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %22, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %22, align 4
  store i32 %49, i32* %10, align 4
  br label %69

50:                                               ; preds = %37
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @amdgpu_vm_update_ptes(%struct.amdgpu_vm_update_params* %20, i32 %51, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %22, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %22, align 4
  store i32 %60, i32* %10, align 4
  br label %69

61:                                               ; preds = %50
  %62 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %14, align 8
  %63 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32 (%struct.amdgpu_vm_update_params*, %struct.dma_fence**)*, i32 (%struct.amdgpu_vm_update_params*, %struct.dma_fence**)** %65, align 8
  %67 = load %struct.dma_fence**, %struct.dma_fence*** %19, align 8
  %68 = call i32 %66(%struct.amdgpu_vm_update_params* %20, %struct.dma_fence** %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %61, %59, %48
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i32 @memset(%struct.amdgpu_vm_update_params*, i32, i32) #1

declare dso_local i32 @amdgpu_vm_update_ptes(%struct.amdgpu_vm_update_params*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
