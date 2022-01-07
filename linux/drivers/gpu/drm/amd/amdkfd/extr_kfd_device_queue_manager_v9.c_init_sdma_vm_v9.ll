; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_v9.c_init_sdma_vm_v9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_v9.c_init_sdma_vm_v9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32 }
%struct.queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qcm_process_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_queue_manager*, %struct.queue*, %struct.qcm_process_device*)* @init_sdma_vm_v9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sdma_vm_v9(%struct.device_queue_manager* %0, %struct.queue* %1, %struct.qcm_process_device* %2) #0 {
  %4 = alloca %struct.device_queue_manager*, align 8
  %5 = alloca %struct.queue*, align 8
  %6 = alloca %struct.qcm_process_device*, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %4, align 8
  store %struct.queue* %1, %struct.queue** %5, align 8
  store %struct.qcm_process_device* %2, %struct.qcm_process_device** %6, align 8
  %7 = load %struct.queue*, %struct.queue** %5, align 8
  %8 = getelementptr inbounds %struct.queue, %struct.queue* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
