; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kgd2kfd_schedule_evict_and_restore_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kgd2kfd_schedule_evict_and_restore_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.dma_fence = type { i64 }
%struct.kfd_process = type { i64, i64, i32 }

@PROCESS_ACTIVE_TIME_MS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgd2kfd_schedule_evict_and_restore_process(%struct.mm_struct* %0, %struct.dma_fence* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %5, align 8
  %9 = load i32, i32* @PROCESS_ACTIVE_TIME_MS, align 4
  %10 = call i64 @msecs_to_jiffies(i32 %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %12 = icmp ne %struct.dma_fence* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %18 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %65

21:                                               ; preds = %16
  %22 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %23 = call %struct.kfd_process* @kfd_lookup_process_by_mm(%struct.mm_struct* %22)
  store %struct.kfd_process* %23, %struct.kfd_process** %6, align 8
  %24 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %25 = icmp ne %struct.kfd_process* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %65

29:                                               ; preds = %21
  %30 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %31 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %34 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %62

38:                                               ; preds = %29
  %39 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %40 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %43 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = call i64 (...) @get_jiffies_64()
  %45 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %46 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %57

56:                                               ; preds = %38
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %56, %52
  %58 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %59 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %58, i32 0, i32 2
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @schedule_delayed_work(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %37
  %63 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %64 = call i32 @kfd_unref_process(%struct.kfd_process* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %26, %20, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local %struct.kfd_process* @kfd_lookup_process_by_mm(%struct.mm_struct*) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @kfd_unref_process(%struct.kfd_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
