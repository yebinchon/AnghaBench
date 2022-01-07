; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_destroy_queue_cpsch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_destroy_queue_cpsch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32, i32, i32, i32, %struct.mqd_manager** }
%struct.mqd_manager = type { i32 (%struct.mqd_manager*, i32, i32)* }
%struct.qcm_process_device = type { i32, i32, i64 }
%struct.queue = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@KFD_QUEUE_TYPE_SDMA = common dso_local global i64 0, align 8
@KFD_QUEUE_TYPE_SDMA_XGMI = common dso_local global i64 0, align 8
@KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Total of %d queues are accountable so far\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.qcm_process_device*, %struct.queue*)* @destroy_queue_cpsch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_queue_cpsch(%struct.device_queue_manager* %0, %struct.qcm_process_device* %1, %struct.queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_queue_manager*, align 8
  %6 = alloca %struct.qcm_process_device*, align 8
  %7 = alloca %struct.queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mqd_manager*, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %5, align 8
  store %struct.qcm_process_device* %1, %struct.qcm_process_device** %6, align 8
  store %struct.queue* %2, %struct.queue** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %11 = call i32 @dqm_lock(%struct.device_queue_manager* %10)
  %12 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %13 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %115

19:                                               ; preds = %3
  %20 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %21 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %20, i32 0, i32 4
  %22 = load %struct.mqd_manager**, %struct.mqd_manager*** %21, align 8
  %23 = load %struct.queue*, %struct.queue** %7, align 8
  %24 = getelementptr inbounds %struct.queue, %struct.queue* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @get_mqd_type_from_queue_type(i64 %26)
  %28 = getelementptr inbounds %struct.mqd_manager*, %struct.mqd_manager** %22, i64 %27
  %29 = load %struct.mqd_manager*, %struct.mqd_manager** %28, align 8
  store %struct.mqd_manager* %29, %struct.mqd_manager** %9, align 8
  %30 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %31 = load %struct.queue*, %struct.queue** %7, align 8
  %32 = call i32 @deallocate_doorbell(%struct.qcm_process_device* %30, %struct.queue* %31)
  %33 = load %struct.queue*, %struct.queue** %7, align 8
  %34 = getelementptr inbounds %struct.queue, %struct.queue* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @KFD_QUEUE_TYPE_SDMA, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %19
  %40 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %41 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %45 = load %struct.queue*, %struct.queue** %7, align 8
  %46 = call i32 @deallocate_sdma_queue(%struct.device_queue_manager* %44, %struct.queue* %45)
  br label %63

47:                                               ; preds = %19
  %48 = load %struct.queue*, %struct.queue** %7, align 8
  %49 = getelementptr inbounds %struct.queue, %struct.queue* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @KFD_QUEUE_TYPE_SDMA_XGMI, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %56 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %60 = load %struct.queue*, %struct.queue** %7, align 8
  %61 = call i32 @deallocate_sdma_queue(%struct.device_queue_manager* %59, %struct.queue* %60)
  br label %62

62:                                               ; preds = %54, %47
  br label %63

63:                                               ; preds = %62, %39
  %64 = load %struct.queue*, %struct.queue** %7, align 8
  %65 = getelementptr inbounds %struct.queue, %struct.queue* %64, i32 0, i32 3
  %66 = call i32 @list_del(i32* %65)
  %67 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %68 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.queue*, %struct.queue** %7, align 8
  %72 = getelementptr inbounds %struct.queue, %struct.queue* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %63
  %77 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %78 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %82 = load i32, i32* @KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES, align 4
  %83 = call i32 @execute_queues_cpsch(%struct.device_queue_manager* %81, i32 %82, i32 0)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @ETIME, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %90 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %76
  br label %92

92:                                               ; preds = %91, %63
  %93 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %94 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %98 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %102 = call i32 @dqm_unlock(%struct.device_queue_manager* %101)
  %103 = load %struct.mqd_manager*, %struct.mqd_manager** %9, align 8
  %104 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %103, i32 0, i32 0
  %105 = load i32 (%struct.mqd_manager*, i32, i32)*, i32 (%struct.mqd_manager*, i32, i32)** %104, align 8
  %106 = load %struct.mqd_manager*, %struct.mqd_manager** %9, align 8
  %107 = load %struct.queue*, %struct.queue** %7, align 8
  %108 = getelementptr inbounds %struct.queue, %struct.queue* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.queue*, %struct.queue** %7, align 8
  %111 = getelementptr inbounds %struct.queue, %struct.queue* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 %105(%struct.mqd_manager* %106, i32 %109, i32 %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %119

115:                                              ; preds = %16
  %116 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %117 = call i32 @dqm_unlock(%struct.device_queue_manager* %116)
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %92
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @dqm_lock(%struct.device_queue_manager*) #1

declare dso_local i64 @get_mqd_type_from_queue_type(i64) #1

declare dso_local i32 @deallocate_doorbell(%struct.qcm_process_device*, %struct.queue*) #1

declare dso_local i32 @deallocate_sdma_queue(%struct.device_queue_manager*, %struct.queue*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @execute_queues_cpsch(%struct.device_queue_manager*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dqm_unlock(%struct.device_queue_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
