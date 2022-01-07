; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_vi.c_update_qpd_vi_tonga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_vi.c_update_qpd_vi_tonga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32 }
%struct.qcm_process_device = type { i32, i32, i64, i64 }
%struct.kfd_process_device = type { i32 }

@SH_MEM_ALIGNMENT_MODE_UNALIGNED = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT = common dso_local global i32 0, align 4
@MTYPE_UC = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__APE1_MTYPE__SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"sh_mem_bases nybble: 0x%X and register 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.qcm_process_device*)* @update_qpd_vi_tonga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_qpd_vi_tonga(%struct.device_queue_manager* %0, %struct.qcm_process_device* %1) #0 {
  %3 = alloca %struct.device_queue_manager*, align 8
  %4 = alloca %struct.qcm_process_device*, align 8
  %5 = alloca %struct.kfd_process_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %3, align 8
  store %struct.qcm_process_device* %1, %struct.qcm_process_device** %4, align 8
  %7 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %8 = call %struct.kfd_process_device* @qpd_to_pdd(%struct.qcm_process_device* %7)
  store %struct.kfd_process_device* %8, %struct.kfd_process_device** %5, align 8
  %9 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %10 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %15 = load i32, i32* @SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* @MTYPE_UC, align 4
  %18 = load i32, i32* @SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* @MTYPE_UC, align 4
  %22 = load i32, i32* @SH_MEM_CONFIG__APE1_MTYPE__SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %26 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %28 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %30 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %13, %2
  %32 = load %struct.kfd_process_device*, %struct.kfd_process_device** %5, align 8
  %33 = call i32 @get_sh_mem_bases_nybble_64(%struct.kfd_process_device* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @compute_sh_mem_bases_64bit(i32 %34)
  %36 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %37 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %40 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  ret i32 0
}

declare dso_local %struct.kfd_process_device* @qpd_to_pdd(%struct.qcm_process_device*) #1

declare dso_local i32 @get_sh_mem_bases_nybble_64(%struct.kfd_process_device*) #1

declare dso_local i32 @compute_sh_mem_bases_64bit(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
