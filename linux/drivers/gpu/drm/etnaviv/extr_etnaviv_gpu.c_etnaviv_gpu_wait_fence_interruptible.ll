; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_wait_fence_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_wait_fence_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32 }
%struct.timespec = type { i32 }
%struct.dma_fence = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_gpu_wait_fence_interruptible(%struct.etnaviv_gpu* %0, i32 %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.etnaviv_gpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %13 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.dma_fence* @idr_find(i32* %13, i32 %14)
  store %struct.dma_fence* %15, %struct.dma_fence** %8, align 8
  %16 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %17 = icmp ne %struct.dma_fence* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %20 = call %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence* %19)
  store %struct.dma_fence* %20, %struct.dma_fence** %8, align 8
  br label %21

21:                                               ; preds = %18, %3
  %22 = call i32 (...) @rcu_read_unlock()
  %23 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %24 = icmp ne %struct.dma_fence* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %62

26:                                               ; preds = %21
  %27 = load %struct.timespec*, %struct.timespec** %7, align 8
  %28 = icmp ne %struct.timespec* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %31 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 0, %33 ], [ %36, %34 ]
  store i32 %38, i32* %9, align 4
  br label %58

39:                                               ; preds = %26
  %40 = load %struct.timespec*, %struct.timespec** %7, align 8
  %41 = call i64 @etnaviv_timeout_to_jiffies(%struct.timespec* %40)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @dma_fence_wait_timeout(%struct.dma_fence* %42, i32 1, i64 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %57

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ERESTARTSYS, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %50
  br label %57

57:                                               ; preds = %56, %47
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %60 = call i32 @dma_fence_put(%struct.dma_fence* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %25
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dma_fence* @idr_find(i32*, i32) #1

declare dso_local %struct.dma_fence* @dma_fence_get_rcu(%struct.dma_fence*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i64 @etnaviv_timeout_to_jiffies(%struct.timespec*) #1

declare dso_local i32 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
