; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_create_kernel_queue_cpsch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_create_kernel_queue_cpsch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i64, i32 }
%struct.kernel_queue = type { i32 }
%struct.qcm_process_device = type { i32, i32 }

@max_num_of_queues_per_device = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"Can't create new kernel queue because %d queues were already created\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Total of %d queues are accountable so far\0A\00", align 1
@KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.kernel_queue*, %struct.qcm_process_device*)* @create_kernel_queue_cpsch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_kernel_queue_cpsch(%struct.device_queue_manager* %0, %struct.kernel_queue* %1, %struct.qcm_process_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_queue_manager*, align 8
  %6 = alloca %struct.kernel_queue*, align 8
  %7 = alloca %struct.qcm_process_device*, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %5, align 8
  store %struct.kernel_queue* %1, %struct.kernel_queue** %6, align 8
  store %struct.qcm_process_device* %2, %struct.qcm_process_device** %7, align 8
  %8 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %9 = call i32 @dqm_lock(%struct.device_queue_manager* %8)
  %10 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %11 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @max_num_of_queues_per_device, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %17 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %21 = call i32 @dqm_unlock(%struct.device_queue_manager* %20)
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %3
  %25 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %26 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %30 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %34 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %33, i32 0, i32 0
  %35 = load %struct.qcm_process_device*, %struct.qcm_process_device** %7, align 8
  %36 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %35, i32 0, i32 1
  %37 = call i32 @list_add(i32* %34, i32* %36)
  %38 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %39 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.qcm_process_device*, %struct.qcm_process_device** %7, align 8
  %43 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %45 = load i32, i32* @KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES, align 4
  %46 = call i32 @execute_queues_cpsch(%struct.device_queue_manager* %44, i32 %45, i32 0)
  %47 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %48 = call i32 @dqm_unlock(%struct.device_queue_manager* %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %24, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @dqm_lock(%struct.device_queue_manager*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @dqm_unlock(%struct.device_queue_manager*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @execute_queues_cpsch(%struct.device_queue_manager*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
