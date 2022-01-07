; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_vi.c_init_sdma_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_vi.c_init_sdma_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32 }
%struct.queue = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.qcm_process_device = type { i32 }

@SDMA0_RLC0_VIRTUAL_ADDR__ATC__SHIFT = common dso_local global i32 0, align 4
@SDMA0_RLC0_VIRTUAL_ADDR__PTR32__SHIFT = common dso_local global i32 0, align 4
@SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE__SHIFT = common dso_local global i32 0, align 4
@SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_queue_manager*, %struct.queue*, %struct.qcm_process_device*)* @init_sdma_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sdma_vm(%struct.device_queue_manager* %0, %struct.queue* %1, %struct.qcm_process_device* %2) #0 {
  %4 = alloca %struct.device_queue_manager*, align 8
  %5 = alloca %struct.queue*, align 8
  %6 = alloca %struct.qcm_process_device*, align 8
  %7 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %4, align 8
  store %struct.queue* %1, %struct.queue** %5, align 8
  store %struct.qcm_process_device* %2, %struct.qcm_process_device** %6, align 8
  %8 = load i32, i32* @SDMA0_RLC0_VIRTUAL_ADDR__ATC__SHIFT, align 4
  %9 = shl i32 1, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.queue*, %struct.queue** %5, align 8
  %11 = getelementptr inbounds %struct.queue, %struct.queue* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32, i32* @SDMA0_RLC0_VIRTUAL_ADDR__PTR32__SHIFT, align 4
  %18 = shl i32 1, %17
  %19 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %20 = call i32 @qpd_to_pdd(%struct.qcm_process_device* %19)
  %21 = call i32 @get_sh_mem_bases_32(i32 %20)
  %22 = or i32 %18, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %35

25:                                               ; preds = %3
  %26 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %27 = call i32 @qpd_to_pdd(%struct.qcm_process_device* %26)
  %28 = call i32 @get_sh_mem_bases_nybble_64(i32 %27)
  %29 = load i32, i32* @SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE__SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @SDMA0_RLC0_VIRTUAL_ADDR__SHARED_BASE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %25, %16
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.queue*, %struct.queue** %5, align 8
  %38 = getelementptr inbounds %struct.queue, %struct.queue* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  ret void
}

declare dso_local i32 @get_sh_mem_bases_32(i32) #1

declare dso_local i32 @qpd_to_pdd(%struct.qcm_process_device*) #1

declare dso_local i32 @get_sh_mem_bases_nybble_64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
