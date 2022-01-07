; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_fence.c_amdkfd_fence_check_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_fence.c_amdkfd_fence_check_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.mm_struct = type { i32 }
%struct.amdgpu_amdkfd_fence = type { %struct.mm_struct* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdkfd_fence_check_mm(%struct.dma_fence* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.amdgpu_amdkfd_fence*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  %7 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %8 = call %struct.amdgpu_amdkfd_fence* @to_amdgpu_amdkfd_fence(%struct.dma_fence* %7)
  store %struct.amdgpu_amdkfd_fence* %8, %struct.amdgpu_amdkfd_fence** %6, align 8
  %9 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %6, align 8
  %10 = icmp ne %struct.amdgpu_amdkfd_fence* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %6, align 8
  %14 = getelementptr inbounds %struct.amdgpu_amdkfd_fence, %struct.amdgpu_amdkfd_fence* %13, i32 0, i32 0
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %16 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %17 = icmp eq %struct.mm_struct* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %21

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %18, %11
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.amdgpu_amdkfd_fence* @to_amdgpu_amdkfd_fence(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
