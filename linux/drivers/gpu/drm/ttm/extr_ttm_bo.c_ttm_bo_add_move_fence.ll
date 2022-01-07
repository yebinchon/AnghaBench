; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_add_move_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_add_move_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.dma_fence*, %struct.TYPE_2__ }
%struct.dma_fence = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_mem_type_manager = type { i32, i32 }
%struct.ttm_mem_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_mem_type_manager*, %struct.ttm_mem_reg*)* @ttm_bo_add_move_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_add_move_fence(%struct.ttm_buffer_object* %0, %struct.ttm_mem_type_manager* %1, %struct.ttm_mem_reg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_mem_reg*, align 8
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store %struct.ttm_mem_type_manager* %1, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %7, align 8
  %10 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %11 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %14 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.dma_fence* @dma_fence_get(i32 %15)
  store %struct.dma_fence* %16, %struct.dma_fence** %8, align 8
  %17 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %18 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %21 = icmp ne %struct.dma_fence* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %3
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %24 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %28 = call i32 @dma_resv_add_shared_fence(i32 %26, %struct.dma_fence* %27)
  %29 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %30 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_resv_reserve_shared(i32 %32, i32 1)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %39 = call i32 @dma_fence_put(%struct.dma_fence* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %50

41:                                               ; preds = %22
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %43 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %42, i32 0, i32 0
  %44 = load %struct.dma_fence*, %struct.dma_fence** %43, align 8
  %45 = call i32 @dma_fence_put(%struct.dma_fence* %44)
  %46 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %47 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %48 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %47, i32 0, i32 0
  store %struct.dma_fence* %46, %struct.dma_fence** %48, align 8
  br label %49

49:                                               ; preds = %41, %3
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dma_fence* @dma_fence_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dma_resv_add_shared_fence(i32, %struct.dma_fence*) #1

declare dso_local i32 @dma_resv_reserve_shared(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
