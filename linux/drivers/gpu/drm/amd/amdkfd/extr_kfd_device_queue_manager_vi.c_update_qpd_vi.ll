; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_vi.c_update_qpd_vi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager_vi.c_update_qpd_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32 }
%struct.qcm_process_device = type { i32, i32, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.kfd_process_device = type { i32 }

@SH_MEM_ALIGNMENT_MODE_UNALIGNED = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT = common dso_local global i32 0, align 4
@MTYPE_CC = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__APE1_MTYPE__SHIFT = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__PRIVATE_ATC_MASK = common dso_local global i32 0, align 4
@SH_MEM_BASES__SHARED_BASE__SHIFT = common dso_local global i32 0, align 4
@SH_MEM_ADDRESS_MODE_HSA32 = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__ADDRESS_MODE__SHIFT = common dso_local global i32 0, align 4
@SH_MEM_ADDRESS_MODE_HSA64 = common dso_local global i32 0, align 4
@SH_MEM_CONFIG__PRIVATE_ATC__SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"is32bit process: %d sh_mem_bases nybble: 0x%X and register 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.qcm_process_device*)* @update_qpd_vi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_qpd_vi(%struct.device_queue_manager* %0, %struct.qcm_process_device* %1) #0 {
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
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %15 = load i32, i32* @SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* @MTYPE_CC, align 4
  %18 = load i32, i32* @SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* @MTYPE_CC, align 4
  %22 = load i32, i32* @SH_MEM_CONFIG__APE1_MTYPE__SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load i32, i32* @SH_MEM_CONFIG__PRIVATE_ATC_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %28 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %30 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %32 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %13, %2
  %34 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %35 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %33
  %43 = load %struct.kfd_process_device*, %struct.kfd_process_device** %5, align 8
  %44 = call i32 @get_sh_mem_bases_32(%struct.kfd_process_device* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SH_MEM_BASES__SHARED_BASE__SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %49 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @SH_MEM_ADDRESS_MODE_HSA32, align 4
  %51 = load i32, i32* @SH_MEM_CONFIG__ADDRESS_MODE__SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %54 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %77

57:                                               ; preds = %33
  %58 = load %struct.kfd_process_device*, %struct.kfd_process_device** %5, align 8
  %59 = call i32 @get_sh_mem_bases_nybble_64(%struct.kfd_process_device* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @compute_sh_mem_bases_64bit(i32 %60)
  %62 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %63 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @SH_MEM_ADDRESS_MODE_HSA64, align 4
  %65 = load i32, i32* @SH_MEM_CONFIG__ADDRESS_MODE__SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %68 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @SH_MEM_CONFIG__PRIVATE_ATC__SHIFT, align 4
  %72 = shl i32 1, %71
  %73 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %74 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %57, %42
  %78 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %79 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %87 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %84, i32 %85, i32 %88)
  ret i32 0
}

declare dso_local %struct.kfd_process_device* @qpd_to_pdd(%struct.qcm_process_device*) #1

declare dso_local i32 @get_sh_mem_bases_32(%struct.kfd_process_device*) #1

declare dso_local i32 @get_sh_mem_bases_nybble_64(%struct.kfd_process_device*) #1

declare dso_local i32 @compute_sh_mem_bases_64bit(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
