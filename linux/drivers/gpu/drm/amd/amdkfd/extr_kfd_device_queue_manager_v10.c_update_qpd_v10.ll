; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_v10.c_update_qpd_v10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_v10.c_update_qpd_v10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32 }
%struct.qcm_process_device = type { i32, i32, i64, i64 }
%struct.kfd_process_device = type { i32 }

@SH_MEM_ALIGNMENT_MODE_UNALIGNED = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sh_mem_bases 0x%X\0A\00", align 1
@SH_MEM_CONFIG__RETRY_DISABLE__SHIFT = common dso_local global i32 0, align 4
@vega10_noretry = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.qcm_process_device*)* @update_qpd_v10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_qpd_v10(%struct.device_queue_manager* %0, %struct.qcm_process_device* %1) #0 {
  %3 = alloca %struct.device_queue_manager*, align 8
  %4 = alloca %struct.qcm_process_device*, align 8
  %5 = alloca %struct.kfd_process_device*, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %3, align 8
  store %struct.qcm_process_device* %1, %struct.qcm_process_device** %4, align 8
  %6 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %7 = call %struct.kfd_process_device* @qpd_to_pdd(%struct.qcm_process_device* %6)
  store %struct.kfd_process_device* %7, %struct.kfd_process_device** %5, align 8
  %8 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %9 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %14 = load i32, i32* @SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %17 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %19 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %21 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %12, %2
  %23 = load %struct.kfd_process_device*, %struct.kfd_process_device** %5, align 8
  %24 = call i32 @compute_sh_mem_bases_64bit(%struct.kfd_process_device* %23)
  %25 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %26 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %28 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  ret i32 0
}

declare dso_local %struct.kfd_process_device* @qpd_to_pdd(%struct.qcm_process_device*) #1

declare dso_local i32 @compute_sh_mem_bases_64bit(%struct.kfd_process_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
