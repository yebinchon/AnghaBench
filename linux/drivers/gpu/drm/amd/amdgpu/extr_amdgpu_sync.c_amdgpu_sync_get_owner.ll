; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sync.c_amdgpu_sync_get_owner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sync.c_amdgpu_sync_get_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_fence = type { i8* }
%struct.amdgpu_amdkfd_fence = type { i32 }

@AMDGPU_FENCE_OWNER_UNDEFINED = common dso_local global i8* null, align 8
@AMDGPU_FENCE_OWNER_KFD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dma_fence*)* @amdgpu_sync_get_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @amdgpu_sync_get_owner(%struct.dma_fence* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.drm_sched_fence*, align 8
  %5 = alloca %struct.amdgpu_amdkfd_fence*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %3, align 8
  %6 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %7 = icmp ne %struct.dma_fence* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** @AMDGPU_FENCE_OWNER_UNDEFINED, align 8
  store i8* %9, i8** %2, align 8
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %12 = call %struct.drm_sched_fence* @to_drm_sched_fence(%struct.dma_fence* %11)
  store %struct.drm_sched_fence* %12, %struct.drm_sched_fence** %4, align 8
  %13 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %4, align 8
  %14 = icmp ne %struct.drm_sched_fence* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %4, align 8
  %17 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %28

19:                                               ; preds = %10
  %20 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %21 = call %struct.amdgpu_amdkfd_fence* @to_amdgpu_amdkfd_fence(%struct.dma_fence* %20)
  store %struct.amdgpu_amdkfd_fence* %21, %struct.amdgpu_amdkfd_fence** %5, align 8
  %22 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %5, align 8
  %23 = icmp ne %struct.amdgpu_amdkfd_fence* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** @AMDGPU_FENCE_OWNER_KFD, align 8
  store i8* %25, i8** %2, align 8
  br label %28

26:                                               ; preds = %19
  %27 = load i8*, i8** @AMDGPU_FENCE_OWNER_UNDEFINED, align 8
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %26, %24, %15, %8
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local %struct.drm_sched_fence* @to_drm_sched_fence(%struct.dma_fence*) #1

declare dso_local %struct.amdgpu_amdkfd_fence* @to_amdgpu_amdkfd_fence(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
