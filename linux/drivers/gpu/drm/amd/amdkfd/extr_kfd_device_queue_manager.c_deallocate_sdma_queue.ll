; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_deallocate_sdma_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_deallocate_sdma_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i64, i64 }
%struct.queue = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@KFD_QUEUE_TYPE_SDMA = common dso_local global i64 0, align 8
@KFD_QUEUE_TYPE_SDMA_XGMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_queue_manager*, %struct.queue*)* @deallocate_sdma_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deallocate_sdma_queue(%struct.device_queue_manager* %0, %struct.queue* %1) #0 {
  %3 = alloca %struct.device_queue_manager*, align 8
  %4 = alloca %struct.queue*, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %3, align 8
  store %struct.queue* %1, %struct.queue** %4, align 8
  %5 = load %struct.queue*, %struct.queue** %4, align 8
  %6 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.queue*, %struct.queue** %4, align 8
  %13 = getelementptr inbounds %struct.queue, %struct.queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %16 = call i64 @get_num_sdma_queues(%struct.device_queue_manager* %15)
  %17 = icmp uge i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %53

19:                                               ; preds = %11
  %20 = load %struct.queue*, %struct.queue** %4, align 8
  %21 = getelementptr inbounds %struct.queue, %struct.queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = shl i64 1, %22
  %24 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %25 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = or i64 %26, %23
  store i64 %27, i64* %25, align 8
  br label %53

28:                                               ; preds = %2
  %29 = load %struct.queue*, %struct.queue** %4, align 8
  %30 = getelementptr inbounds %struct.queue, %struct.queue* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load %struct.queue*, %struct.queue** %4, align 8
  %37 = getelementptr inbounds %struct.queue, %struct.queue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %40 = call i64 @get_num_xgmi_sdma_queues(%struct.device_queue_manager* %39)
  %41 = icmp uge i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %53

43:                                               ; preds = %35
  %44 = load %struct.queue*, %struct.queue** %4, align 8
  %45 = getelementptr inbounds %struct.queue, %struct.queue* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = shl i64 1, %46
  %48 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %49 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %43, %28
  br label %53

53:                                               ; preds = %18, %42, %52, %19
  ret void
}

declare dso_local i64 @get_num_sdma_queues(%struct.device_queue_manager*) #1

declare dso_local i64 @get_num_xgmi_sdma_queues(%struct.device_queue_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
