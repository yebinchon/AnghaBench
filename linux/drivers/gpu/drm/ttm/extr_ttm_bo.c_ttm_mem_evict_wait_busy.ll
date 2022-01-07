; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_mem_evict_wait_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_mem_evict_wait_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_operation_ctx = type { i64 }
%struct.ww_acquire_ctx = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_operation_ctx*, %struct.ww_acquire_ctx*)* @ttm_mem_evict_wait_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_mem_evict_wait_busy(%struct.ttm_buffer_object* %0, %struct.ttm_operation_ctx* %1, %struct.ww_acquire_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca %struct.ttm_operation_ctx*, align 8
  %7 = alloca %struct.ww_acquire_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store %struct.ttm_operation_ctx* %1, %struct.ttm_operation_ctx** %6, align 8
  store %struct.ww_acquire_ctx* %2, %struct.ww_acquire_ctx** %7, align 8
  %9 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %10 = icmp ne %struct.ttm_buffer_object* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %13 = icmp ne %struct.ww_acquire_ctx* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %57

17:                                               ; preds = %11
  %18 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %24 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %28 = call i32 @dma_resv_lock_interruptible(i32 %26, %struct.ww_acquire_ctx* %27)
  store i32 %28, i32* %8, align 4
  br label %36

29:                                               ; preds = %17
  %30 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %31 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %35 = call i32 @dma_resv_lock(i32 %33, %struct.ww_acquire_ctx* %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %29, %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %41 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dma_resv_unlock(i32 %43)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @EDEADLK, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32 [ %52, %50 ], [ %54, %53 ]
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @dma_resv_lock_interruptible(i32, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @dma_resv_lock(i32, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @dma_resv_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
