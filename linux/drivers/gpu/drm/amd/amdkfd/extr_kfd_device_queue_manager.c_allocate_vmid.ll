; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_allocate_vmid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_allocate_vmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 (i32, i32, i32)*, i32 (i32, i32, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.qcm_process_device = type { i32, i32, i32 }
%struct.queue = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vmid allocation %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.qcm_process_device*, %struct.queue*)* @allocate_vmid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_vmid(%struct.device_queue_manager* %0, %struct.qcm_process_device* %1, %struct.queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_queue_manager*, align 8
  %6 = alloca %struct.qcm_process_device*, align 8
  %7 = alloca %struct.queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %5, align 8
  store %struct.qcm_process_device* %1, %struct.qcm_process_device** %6, align 8
  store %struct.queue* %2, %struct.queue** %7, align 8
  %10 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %11 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %102

17:                                               ; preds = %3
  %18 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %19 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ffs(i32 %20)
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %27 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %32 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %30, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %42 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.queue*, %struct.queue** %7, align 8
  %45 = getelementptr inbounds %struct.queue, %struct.queue* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %48 = load %struct.queue*, %struct.queue** %7, align 8
  %49 = getelementptr inbounds %struct.queue, %struct.queue* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.queue*, %struct.queue** %7, align 8
  %54 = getelementptr inbounds %struct.queue, %struct.queue* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @set_pasid_vmid_mapping(%struct.device_queue_manager* %47, i32 %52, i32 %56)
  %58 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %59 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %60 = call i32 @program_sh_mem_settings(%struct.device_queue_manager* %58, %struct.qcm_process_device* %59)
  %61 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %62 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %66, align 8
  %68 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %69 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %74 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %77 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 %67(i32 %72, i32 %75, i32 %78)
  %80 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %81 = call i32 @qpd_to_pdd(%struct.qcm_process_device* %80)
  %82 = call i32 @kfd_flush_tlb(i32 %81)
  %83 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %84 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %88, align 8
  %90 = load %struct.device_queue_manager*, %struct.device_queue_manager** %5, align 8
  %91 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %96 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.qcm_process_device*, %struct.qcm_process_device** %6, align 8
  %99 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 %89(i32 %94, i32 %97, i32 %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %17, %14
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @set_pasid_vmid_mapping(%struct.device_queue_manager*, i32, i32) #1

declare dso_local i32 @program_sh_mem_settings(%struct.device_queue_manager*, %struct.qcm_process_device*) #1

declare dso_local i32 @kfd_flush_tlb(i32) #1

declare dso_local i32 @qpd_to_pdd(%struct.qcm_process_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
