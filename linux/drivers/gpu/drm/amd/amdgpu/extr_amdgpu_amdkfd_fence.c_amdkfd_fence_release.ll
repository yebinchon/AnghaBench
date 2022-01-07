; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_fence.c_amdkfd_fence_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_fence.c_amdkfd_fence_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.amdgpu_amdkfd_fence = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_fence*)* @amdkfd_fence_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdkfd_fence_release(%struct.dma_fence* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.amdgpu_amdkfd_fence*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %2, align 8
  %4 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %5 = call %struct.amdgpu_amdkfd_fence* @to_amdgpu_amdkfd_fence(%struct.dma_fence* %4)
  store %struct.amdgpu_amdkfd_fence* %5, %struct.amdgpu_amdkfd_fence** %3, align 8
  %6 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %3, align 8
  %7 = icmp ne %struct.amdgpu_amdkfd_fence* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_amdkfd_fence, %struct.amdgpu_amdkfd_fence* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mmdrop(i32 %16)
  %18 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  %19 = load i32, i32* @rcu, align 4
  %20 = call i32 @kfree_rcu(%struct.dma_fence* %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.amdgpu_amdkfd_fence* @to_amdgpu_amdkfd_fence(%struct.dma_fence*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mmdrop(i32) #1

declare dso_local i32 @kfree_rcu(%struct.dma_fence*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
