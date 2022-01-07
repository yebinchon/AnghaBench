; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_unmap_queues_cpsch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_unmap_queues_cpsch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32, i64, i32, i32*, i32, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Before destroying queues, sdma queue count is : %u, xgmi sdma queue count is : %u\0A\00", align 1
@KFD_QUEUE_TYPE_COMPUTE = common dso_local global i32 0, align 4
@KFD_FENCE_INIT = common dso_local global i32 0, align 4
@KFD_FENCE_COMPLETED = common dso_local global i32 0, align 4
@queue_preemption_timeout_ms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, i32, i32)* @unmap_queues_cpsch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmap_queues_cpsch(%struct.device_queue_manager* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_queue_manager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %10 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %83

16:                                               ; preds = %3
  %17 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %18 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %83

23:                                               ; preds = %16
  %24 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %25 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %28 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %29)
  %31 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %32 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %23
  %36 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %37 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %23
  %41 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %42 = call i32 @unmap_sdma_queues(%struct.device_queue_manager* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %45 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %44, i32 0, i32 2
  %46 = load i32, i32* @KFD_QUEUE_TYPE_COMPUTE, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @pm_send_unmap_queue(i32* %45, i32 %46, i32 %47, i32 %48, i32 0, i32 0)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %83

54:                                               ; preds = %43
  %55 = load i32, i32* @KFD_FENCE_INIT, align 4
  %56 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %57 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  store i32 %55, i32* %58, align 4
  %59 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %60 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %59, i32 0, i32 2
  %61 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %62 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @KFD_FENCE_COMPLETED, align 4
  %65 = call i32 @pm_send_query_status(i32* %60, i32 %63, i32 %64)
  %66 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %67 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @KFD_FENCE_COMPLETED, align 4
  %70 = load i32, i32* @queue_preemption_timeout_ms, align 4
  %71 = call i32 @amdkfd_fence_wait_timeout(i32* %68, i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %83

76:                                               ; preds = %54
  %77 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %78 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %77, i32 0, i32 2
  %79 = call i32 @pm_release_ib(i32* %78)
  %80 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %81 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %76, %74, %52, %21, %13
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @unmap_sdma_queues(%struct.device_queue_manager*) #1

declare dso_local i32 @pm_send_unmap_queue(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pm_send_query_status(i32*, i32, i32) #1

declare dso_local i32 @amdkfd_fence_wait_timeout(i32*, i32, i32) #1

declare dso_local i32 @pm_release_ib(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
