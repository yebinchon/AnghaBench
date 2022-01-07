; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_destroy_queue_nocpsch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_destroy_queue_nocpsch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32 }
%struct.qcm_process_device = type { i32 }
%struct.queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.qcm_process_device*, %struct.queue*)* @destroy_queue_nocpsch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_queue_nocpsch(%struct.device_queue_manager* %0, %struct.qcm_process_device* %1, %struct.queue* %2) #0 {
  %4 = alloca %struct.device_queue_manager*, align 8
  %5 = alloca %struct.qcm_process_device*, align 8
  %6 = alloca %struct.queue*, align 8
  %7 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %4, align 8
  store %struct.qcm_process_device* %1, %struct.qcm_process_device** %5, align 8
  store %struct.queue* %2, %struct.queue** %6, align 8
  %8 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %9 = call i32 @dqm_lock(%struct.device_queue_manager* %8)
  %10 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %11 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %12 = load %struct.queue*, %struct.queue** %6, align 8
  %13 = call i32 @destroy_queue_nocpsch_locked(%struct.device_queue_manager* %10, %struct.qcm_process_device* %11, %struct.queue* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %15 = call i32 @dqm_unlock(%struct.device_queue_manager* %14)
  %16 = load i32, i32* %7, align 4
  ret i32 %16
}

declare dso_local i32 @dqm_lock(%struct.device_queue_manager*) #1

declare dso_local i32 @destroy_queue_nocpsch_locked(%struct.device_queue_manager*, %struct.qcm_process_device*, %struct.queue*) #1

declare dso_local i32 @dqm_unlock(%struct.device_queue_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
