; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sync.c_amdgpu_sync_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sync.c_amdgpu_sync_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_sync = type { i32, i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_sync_entry = type { i32, i32, i32 }

@AMDGPU_FENCE_OWNER_VM = common dso_local global i64 0, align 8
@amdgpu_sync_slab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_sync_fence(%struct.amdgpu_device* %0, %struct.amdgpu_sync* %1, %struct.dma_fence* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_sync*, align 8
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_sync_entry*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_sync* %1, %struct.amdgpu_sync** %7, align 8
  store %struct.dma_fence* %2, %struct.dma_fence** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %12 = icmp ne %struct.dma_fence* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %62

14:                                               ; preds = %4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %16 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %17 = call i64 @amdgpu_sync_same_dev(%struct.amdgpu_device* %15, %struct.dma_fence* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %21 = call i64 @amdgpu_sync_get_owner(%struct.dma_fence* %20)
  %22 = load i64, i64* @AMDGPU_FENCE_OWNER_VM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_sync, %struct.amdgpu_sync* %25, i32 0, i32 1
  %27 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %28 = call i32 @amdgpu_sync_keep_later(i32* %26, %struct.dma_fence* %27)
  br label %29

29:                                               ; preds = %24, %19, %14
  %30 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %7, align 8
  %31 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @amdgpu_sync_add_later(%struct.amdgpu_sync* %30, %struct.dma_fence* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %62

36:                                               ; preds = %29
  %37 = load i32, i32* @amdgpu_sync_slab, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.amdgpu_sync_entry* @kmem_cache_alloc(i32 %37, i32 %38)
  store %struct.amdgpu_sync_entry* %39, %struct.amdgpu_sync_entry** %10, align 8
  %40 = load %struct.amdgpu_sync_entry*, %struct.amdgpu_sync_entry** %10, align 8
  %41 = icmp ne %struct.amdgpu_sync_entry* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %62

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.amdgpu_sync_entry*, %struct.amdgpu_sync_entry** %10, align 8
  %48 = getelementptr inbounds %struct.amdgpu_sync_entry, %struct.amdgpu_sync_entry* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %7, align 8
  %50 = getelementptr inbounds %struct.amdgpu_sync, %struct.amdgpu_sync* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.amdgpu_sync_entry*, %struct.amdgpu_sync_entry** %10, align 8
  %53 = getelementptr inbounds %struct.amdgpu_sync_entry, %struct.amdgpu_sync_entry* %52, i32 0, i32 2
  %54 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %55 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @hash_add(i32 %51, i32* %53, i32 %56)
  %58 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %59 = call i32 @dma_fence_get(%struct.dma_fence* %58)
  %60 = load %struct.amdgpu_sync_entry*, %struct.amdgpu_sync_entry** %10, align 8
  %61 = getelementptr inbounds %struct.amdgpu_sync_entry, %struct.amdgpu_sync_entry* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %45, %42, %35, %13
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @amdgpu_sync_same_dev(%struct.amdgpu_device*, %struct.dma_fence*) #1

declare dso_local i64 @amdgpu_sync_get_owner(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_sync_keep_later(i32*, %struct.dma_fence*) #1

declare dso_local i64 @amdgpu_sync_add_later(%struct.amdgpu_sync*, %struct.dma_fence*, i32) #1

declare dso_local %struct.amdgpu_sync_entry* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
