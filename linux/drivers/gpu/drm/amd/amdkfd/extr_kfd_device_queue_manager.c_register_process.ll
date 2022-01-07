; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_register_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_register_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.device_queue_manager.0*, %struct.qcm_process_device*)* }
%struct.device_queue_manager.0 = type opaque
%struct.qcm_process_device = type { i32 }
%struct.device_process_node = type { i32, %struct.qcm_process_device* }
%struct.kfd_process_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Updated PD address to 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*, %struct.qcm_process_device*)* @register_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_process(%struct.device_queue_manager* %0, %struct.qcm_process_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_queue_manager*, align 8
  %5 = alloca %struct.qcm_process_device*, align 8
  %6 = alloca %struct.device_process_node*, align 8
  %7 = alloca %struct.kfd_process_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %4, align 8
  store %struct.qcm_process_device* %1, %struct.qcm_process_device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.device_process_node* @kzalloc(i32 16, i32 %10)
  store %struct.device_process_node* %11, %struct.device_process_node** %6, align 8
  %12 = load %struct.device_process_node*, %struct.device_process_node** %6, align 8
  %13 = icmp ne %struct.device_process_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %19 = load %struct.device_process_node*, %struct.device_process_node** %6, align 8
  %20 = getelementptr inbounds %struct.device_process_node, %struct.device_process_node* %19, i32 0, i32 1
  store %struct.qcm_process_device* %18, %struct.qcm_process_device** %20, align 8
  %21 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %22 = call %struct.kfd_process_device* @qpd_to_pdd(%struct.qcm_process_device* %21)
  store %struct.kfd_process_device* %22, %struct.kfd_process_device** %7, align 8
  %23 = load %struct.kfd_process_device*, %struct.kfd_process_device** %7, align 8
  %24 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @amdgpu_amdkfd_gpuvm_get_process_page_dir(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %28 = call i32 @dqm_lock(%struct.device_queue_manager* %27)
  %29 = load %struct.device_process_node*, %struct.device_process_node** %6, align 8
  %30 = getelementptr inbounds %struct.device_process_node, %struct.device_process_node* %29, i32 0, i32 0
  %31 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %32 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %31, i32 0, i32 3
  %33 = call i32 @list_add(i32* %30, i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %36 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %40 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.device_queue_manager.0*, %struct.qcm_process_device*)*, i32 (%struct.device_queue_manager.0*, %struct.qcm_process_device*)** %41, align 8
  %43 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %44 = bitcast %struct.device_queue_manager* %43 to %struct.device_queue_manager.0*
  %45 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %46 = call i32 %42(%struct.device_queue_manager.0* %44, %struct.qcm_process_device* %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %48 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %52 = call i32 @dqm_unlock(%struct.device_queue_manager* %51)
  %53 = load %struct.device_queue_manager*, %struct.device_queue_manager** %4, align 8
  %54 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @kfd_inc_compute_active(i32 %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %17, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.device_process_node* @kzalloc(i32, i32) #1

declare dso_local %struct.kfd_process_device* @qpd_to_pdd(%struct.qcm_process_device*) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_get_process_page_dir(i32) #1

declare dso_local i32 @dqm_lock(%struct.device_queue_manager*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dqm_unlock(%struct.device_queue_manager*) #1

declare dso_local i32 @kfd_inc_compute_active(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
