; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_deallocate_vmid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_deallocate_vmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.qcm_process_device = type { i32 }
%struct.queue = type { %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@CHIP_HAWAII = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Failed to flush TC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_queue_manager*, %struct.qcm_process_device*, %struct.queue*)* @deallocate_vmid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deallocate_vmid(%struct.device_queue_manager* %0, %struct.qcm_process_device* %1, %struct.queue* %2) #0 {
  %4 = alloca %struct.device_queue_manager*, align 8
  %5 = alloca %struct.qcm_process_device*, align 8
  %6 = alloca %struct.queue*, align 8
  %7 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %4, align 8
  store %struct.qcm_process_device* %1, %struct.qcm_process_device** %5, align 8
  store %struct.queue* %2, %struct.queue** %6, align 8
  %8 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %9 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %12 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %10, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.queue*, %struct.queue** %6, align 8
  %19 = getelementptr inbounds %struct.queue, %struct.queue* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_HAWAII, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load %struct.queue*, %struct.queue** %6, align 8
  %29 = getelementptr inbounds %struct.queue, %struct.queue* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %32 = call i64 @flush_texture_cache_nocpsch(%struct.TYPE_10__* %30, %struct.qcm_process_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %27
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %39 = call i32 @qpd_to_pdd(%struct.qcm_process_device* %38)
  %40 = call i32 @kfd_flush_tlb(i32 %39)
  %41 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %42 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %43 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @set_pasid_vmid_mapping(%struct.device_queue_manager* %41, i32 0, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 1, %46
  %48 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %49 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %53 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.queue*, %struct.queue** %6, align 8
  %55 = getelementptr inbounds %struct.queue, %struct.queue* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  ret void
}

declare dso_local i64 @flush_texture_cache_nocpsch(%struct.TYPE_10__*, %struct.qcm_process_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfd_flush_tlb(i32) #1

declare dso_local i32 @qpd_to_pdd(%struct.qcm_process_device*) #1

declare dso_local i32 @set_pasid_vmid_mapping(%struct.device_queue_manager*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
