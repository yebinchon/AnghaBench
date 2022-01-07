; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm_sdma.c_amdgpu_vm_sdma_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm_sdma.c_amdgpu_vm_sdma_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_update_params = type { i32, %struct.TYPE_12__*, i32, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.dma_fence = type { i32 }

@AMDGPU_VM_SDMA_MIN_NUM_DW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_vm_update_params*, i8*, %struct.dma_fence*)* @amdgpu_vm_sdma_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vm_sdma_prepare(%struct.amdgpu_vm_update_params* %0, i8* %1, %struct.dma_fence* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_vm_update_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca %struct.amdgpu_bo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_vm_update_params* %0, %struct.amdgpu_vm_update_params** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dma_fence* %2, %struct.dma_fence** %7, align 8
  %11 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %16, align 8
  store %struct.amdgpu_bo* %17, %struct.amdgpu_bo** %8, align 8
  %18 = load i32, i32* @AMDGPU_VM_SDMA_MIN_NUM_DW, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = mul i32 %22, 4
  %24 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %24, i32 0, i32 1
  %26 = call i32 @amdgpu_job_alloc_with_ib(i32 %21, i32 %23, %struct.TYPE_12__** %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %68

31:                                               ; preds = %3
  %32 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %40 = call i32 @amdgpu_sync_fence(i32 %34, i32* %38, %struct.dma_fence* %39, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %68

45:                                               ; preds = %31
  %46 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %8, align 8
  %54 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @amdgpu_sync_resv(i32 %48, i32* %52, i32 %57, i8* %58, i32 0)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %68

64:                                               ; preds = %45
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %5, align 8
  %67 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %62, %43, %29
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @amdgpu_job_alloc_with_ib(i32, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @amdgpu_sync_fence(i32, i32*, %struct.dma_fence*, i32) #1

declare dso_local i32 @amdgpu_sync_resv(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
