; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_program_sh_mem_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_program_sh_mem_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { void (i32, i32, i32, i32, i32, i32)* }
%struct.qcm_process_device = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @program_sh_mem_settings(%struct.device_queue_manager* %0, %struct.qcm_process_device* %1) #0 {
  %3 = alloca %struct.device_queue_manager*, align 8
  %4 = alloca %struct.qcm_process_device*, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %3, align 8
  store %struct.qcm_process_device* %1, %struct.qcm_process_device** %4, align 8
  %5 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %6 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load void (i32, i32, i32, i32, i32, i32)*, void (i32, i32, i32, i32, i32, i32)** %10, align 8
  %12 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %13 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %18 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %21 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %24 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %27 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %30 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  call void %11(i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
