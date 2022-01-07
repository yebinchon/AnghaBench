; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_cik.c_device_queue_manager_init_cik.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_cik.c_device_queue_manager_init_cik.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager_asic_ops = type { i32, i32, i32, i32 }

@set_cache_memory_policy_cik = common dso_local global i32 0, align 4
@update_qpd_cik = common dso_local global i32 0, align 4
@init_sdma_vm = common dso_local global i32 0, align 4
@mqd_manager_init_cik = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_queue_manager_init_cik(%struct.device_queue_manager_asic_ops* %0) #0 {
  %2 = alloca %struct.device_queue_manager_asic_ops*, align 8
  store %struct.device_queue_manager_asic_ops* %0, %struct.device_queue_manager_asic_ops** %2, align 8
  %3 = load i32, i32* @set_cache_memory_policy_cik, align 4
  %4 = load %struct.device_queue_manager_asic_ops*, %struct.device_queue_manager_asic_ops** %2, align 8
  %5 = getelementptr inbounds %struct.device_queue_manager_asic_ops, %struct.device_queue_manager_asic_ops* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @update_qpd_cik, align 4
  %7 = load %struct.device_queue_manager_asic_ops*, %struct.device_queue_manager_asic_ops** %2, align 8
  %8 = getelementptr inbounds %struct.device_queue_manager_asic_ops, %struct.device_queue_manager_asic_ops* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @init_sdma_vm, align 4
  %10 = load %struct.device_queue_manager_asic_ops*, %struct.device_queue_manager_asic_ops** %2, align 8
  %11 = getelementptr inbounds %struct.device_queue_manager_asic_ops, %struct.device_queue_manager_asic_ops* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @mqd_manager_init_cik, align 4
  %13 = load %struct.device_queue_manager_asic_ops*, %struct.device_queue_manager_asic_ops** %2, align 8
  %14 = getelementptr inbounds %struct.device_queue_manager_asic_ops, %struct.device_queue_manager_asic_ops* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
