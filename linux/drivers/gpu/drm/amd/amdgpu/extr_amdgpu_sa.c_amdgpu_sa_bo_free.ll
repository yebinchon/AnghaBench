; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sa.c_amdgpu_sa_bo_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sa.c_amdgpu_sa_bo_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_sa_bo = type { i32, i32, %struct.amdgpu_sa_manager* }
%struct.amdgpu_sa_manager = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_fence = type { i64 }

@AMDGPU_SA_NUM_FENCE_LISTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_sa_bo_free(%struct.amdgpu_device* %0, %struct.amdgpu_sa_bo** %1, %struct.dma_fence* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_sa_bo**, align 8
  %6 = alloca %struct.dma_fence*, align 8
  %7 = alloca %struct.amdgpu_sa_manager*, align 8
  %8 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_sa_bo** %1, %struct.amdgpu_sa_bo*** %5, align 8
  store %struct.dma_fence* %2, %struct.dma_fence** %6, align 8
  %9 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %5, align 8
  %10 = icmp eq %struct.amdgpu_sa_bo** %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %5, align 8
  %13 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %12, align 8
  %14 = icmp eq %struct.amdgpu_sa_bo* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  br label %64

16:                                               ; preds = %11
  %17 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %5, align 8
  %18 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %17, align 8
  %19 = getelementptr inbounds %struct.amdgpu_sa_bo, %struct.amdgpu_sa_bo* %18, i32 0, i32 2
  %20 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %19, align 8
  store %struct.amdgpu_sa_manager* %20, %struct.amdgpu_sa_manager** %7, align 8
  %21 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %7, align 8
  %22 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %26 = icmp ne %struct.dma_fence* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %16
  %28 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %29 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %27
  %32 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %33 = call i32 @dma_fence_get(%struct.dma_fence* %32)
  %34 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %5, align 8
  %35 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %34, align 8
  %36 = getelementptr inbounds %struct.amdgpu_sa_bo, %struct.amdgpu_sa_bo* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %38 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AMDGPU_SA_NUM_FENCE_LISTS, align 8
  %41 = urem i64 %39, %40
  store i64 %41, i64* %8, align 8
  %42 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %5, align 8
  %43 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %42, align 8
  %44 = getelementptr inbounds %struct.amdgpu_sa_bo, %struct.amdgpu_sa_bo* %43, i32 0, i32 0
  %45 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %7, align 8
  %46 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call i32 @list_add_tail(i32* %44, i32* %49)
  br label %55

51:                                               ; preds = %27, %16
  %52 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %5, align 8
  %53 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %52, align 8
  %54 = call i32 @amdgpu_sa_bo_remove_locked(%struct.amdgpu_sa_bo* %53)
  br label %55

55:                                               ; preds = %51, %31
  %56 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %7, align 8
  %57 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %56, i32 0, i32 0
  %58 = call i32 @wake_up_all_locked(%struct.TYPE_2__* %57)
  %59 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %7, align 8
  %60 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %5, align 8
  store %struct.amdgpu_sa_bo* null, %struct.amdgpu_sa_bo** %63, align 8
  br label %64

64:                                               ; preds = %55, %15
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @amdgpu_sa_bo_remove_locked(%struct.amdgpu_sa_bo*) #1

declare dso_local i32 @wake_up_all_locked(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
