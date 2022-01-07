; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_cik.c_update_qpd_cik_hawaii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_cik.c_update_qpd_cik_hawaii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32 }
%struct.qcm_process_device = type { i32, i32, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kfd_process_device = type { i32 }

@SH_MEM_ALIGNMENT_MODE_UNALIGNED = common dso_local global i32 0, align 4
@MTYPE_NONCACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"is32bit process: %d sh_mem_bases nybble: 0x%X and register 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.qcm_process_device*)* @update_qpd_cik_hawaii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_qpd_cik_hawaii(%struct.device_queue_manager* %0, %struct.qcm_process_device* %1) #0 {
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
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %15 = call i32 @ALIGNMENT_MODE(i32 %14)
  %16 = load i32, i32* @MTYPE_NONCACHED, align 4
  %17 = call i32 @DEFAULT_MTYPE(i32 %16)
  %18 = or i32 %15, %17
  %19 = load i32, i32* @MTYPE_NONCACHED, align 4
  %20 = call i32 @APE1_MTYPE(i32 %19)
  %21 = or i32 %18, %20
  %22 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %23 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %25 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %27 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %13, %2
  %29 = load %struct.kfd_process_device*, %struct.kfd_process_device** %5, align 8
  %30 = call i32 @get_sh_mem_bases_nybble_64(%struct.kfd_process_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @compute_sh_mem_bases_64bit(i32 %31)
  %33 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %34 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %36 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %44 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %45)
  ret i32 0
}

declare dso_local %struct.kfd_process_device* @qpd_to_pdd(%struct.qcm_process_device*) #1

declare dso_local i32 @ALIGNMENT_MODE(i32) #1

declare dso_local i32 @DEFAULT_MTYPE(i32) #1

declare dso_local i32 @APE1_MTYPE(i32) #1

declare dso_local i32 @get_sh_mem_bases_nybble_64(%struct.kfd_process_device*) #1

declare dso_local i32 @compute_sh_mem_bases_64bit(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
